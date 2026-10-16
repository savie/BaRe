package com.bareapps.barebackup

import android.app.Application
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.content.pm.Signature
import android.content.res.Configuration
import android.media.AudioAttributes
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.NetworkInfo
import android.net.Uri
import android.os.Build
import android.os.StrictMode
import android.util.Base64
import android.util.Log
import androidx.core.content.FileProvider
import com.bareapps.barebackup.locale.AppLocaleManager
import com.bareapps.barebackup.common.IgnoredException
import com.bareapps.barebackup.storage.SelectedStorageState
import com.topjohnwu.superuser.Shell
import java.io.PrintWriter
import java.io.StringWriter
import java.security.MessageDigest
import java.util.Locale

/**
 * Application-level entry point for BΛR☰.
 *
 * Startup behavior is restored incrementally against the SwiftBackup reference,
 * reusing existing app resources wherever they are available.
 */
class BareApp : Application() {

    private var connectivityReceiverRegistered = false
    private var shouldLogFirstConnectivityChange = true
    private var lastNetworkInfo: NetworkInfo? = null

    companion object {
        // SwiftApp.c(reason) logs an exit reason, invokes Const.x(app) plus
        // Const.g(reason, true), and terminates through its app-specific shutdown workflow.
        // exitAfterHandledCrash ports the HOME launch and process-state summary. The exact
        // Const.x/Const.g cleanup hooks remain unported because no corresponding BΛR☰ lifecycle
        // implementation has been identified; do not claim full parity for this shutdown path.
        private const val TAG = "BareApp"
        private const val LOCALE_TAG = "LocaleManager"
        private const val CONNECTIVITY_TAG = "ConnectivityTracker"
        private const val CRASH_REPORT_FILE = "error.txt"
        private const val CRASH_NOTIFICATION_ID = 912

        const val CHANNEL_BACKUP_RESTORE = "backup_restore_channel"
        const val CHANNEL_NORMAL = "normal_channel"
        const val CHANNEL_TASK_SUCCESS = "task_completion_channel_success"
        const val CHANNEL_TASK_ERROR = "task_completion_channel_error"
        const val CHANNEL_TASK_SILENT = "task_completion_channel_silent"
        const val CHANNEL_CRASH_ERROR = "crash_error_channel"

        @Volatile
        private var instance: BareApp? = null

        @Volatile
        private var preferences: SharedPreferences? = null

        @Volatile
        private var preferencesEditor: SharedPreferences.Editor? = null

        @JvmStatic
        fun getInstance(): BareApp? = instance

        /**
         * Returns the app preference store after Application startup has initialized it.
         */
        @JvmStatic
        fun appPreferences(): SharedPreferences? = preferences

        /**
         * Returns the cached editor paired with [appPreferences], mirroring the
         * reference startup's shared preference/editor initialization pair.
         */
        @JvmStatic
        fun appPreferencesEditor(): SharedPreferences.Editor? = preferencesEditor

        @JvmStatic
        fun appContext(): Context? = instance?.applicationContext

        /**
         * Returns the signing certificates for this installed package.
         * Uses the modern signing API on Android P+ and the legacy API before P.
         */
        @JvmStatic
        fun signingCertificates(): Array<Signature>? {
            val app = instance ?: return null
            val packageManager = app.packageManager
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
                val packageInfo = packageManager.getPackageInfo(
                    app.packageName,
                    PackageManager.GET_SIGNING_CERTIFICATES
                )
                packageInfo.signingInfo?.apkContentsSigners
            } else {
                @Suppress("DEPRECATION")
                packageManager.getPackageInfo(
                    app.packageName,
                    PackageManager.GET_SIGNATURES
                ).signatures
            }
        }

        /**
         * SHA digest of the first signing certificate, encoded with Android's
         * NO_WRAP Base64 flag to match the reference's Companion.d() format.
         * This is a fingerprint utility, not a substitute for server-side trust.
         */
        @JvmStatic
        fun signingCertificateShaBase64(): String? {
            val signature = signingCertificates()?.firstOrNull() ?: return null
            val digest = MessageDigest.getInstance("SHA")
            digest.update(signature.toByteArray())
            return Base64.encodeToString(digest.digest(), Base64.NO_WRAP)
        }
    }

    /**
     * Records Android's latest exit reason for this app when the platform
     * exposes historical process-exit diagnostics.
     */
    private fun logLastProcessExit() {
        if (android.os.Build.VERSION.SDK_INT < android.os.Build.VERSION_CODES.R) return

        val activityManager = getSystemService(android.app.ActivityManager::class.java) ?: return
        try {
            val lastExit = activityManager
                .getHistoricalProcessExitReasons(null, 0, 0)
                .orEmpty()
                .filter { it.processName == packageName }
                .maxByOrNull { it.timestamp }

            if (lastExit != null) {
                val summary = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                    try {
                        lastExit.processStateSummary?.toString(Charsets.UTF_8)
                    } catch (_: Exception) {
                        null
                    }
                } else {
                    null
                }
                val memoryLimiterHint = if (
                    lastExit.reason == 13 &&
                    lastExit.description?.contains("MemoryLimiter:AnonSwap", ignoreCase = true) == true
                ) "; previous backup/restore may have been stopped by Android's memory limiter" else ""

                Log.i(
                    TAG,
                    "Last process exit: info=$lastExit, description=${lastExit.description}, " +
                        "stateSummary=$summary$memoryLimiterHint"
                )
            }
        } catch (failure: Exception) {
            // Diagnostics must not prevent application startup.
            Log.w(TAG, "Unable to read historical process-exit information", failure)
        }
    }

    /**
     * Records Android's latest process-start reason when supported by the OS.
     * Diagnostic failures must never prevent application startup.
     */
    private fun logLastProcessStart() {
        if (android.os.Build.VERSION.SDK_INT < 35) return

        val activityManager = getSystemService(android.app.ActivityManager::class.java) ?: return
        try {
            val startInfo = activityManager
                .getHistoricalProcessStartReasons(1)
                .firstOrNull { it.processName == packageName }

            if (startInfo != null) {
                val reason = when (startInfo.reason) {
                    0 -> "ALARM"
                    1 -> "BACKUP"
                    2 -> "BOOT COMPLETE"
                    3 -> "BROADCAST"
                    4 -> "CONTENT PROVIDER"
                    5 -> "JOB"
                    6 -> "LAUNCHER"
                    7 -> "LAUNCHER RECENTS"
                    8 -> "OTHER"
                    9 -> "PUSH"
                    10 -> "SERVICE"
                    11 -> "START ACTIVITY"
                    else -> "UNKNOWN(${startInfo.reason})"
                }
                val startType = when (startInfo.startType) {
                    0 -> "UNSET"
                    1 -> "COLD"
                    2 -> "WARM"
                    3 -> "HOT"
                    else -> "UNKNOWN(${startInfo.startupState})"
                }
                val forceStopped = startInfo.wasForceStopped()
                val message = "ApplicationStartInfo: startReason=$reason, startType=$startType, wasForceStopped=$forceStopped"
                if (forceStopped) Log.w(TAG, message) else Log.i(TAG, message)
            }
        } catch (failure: Exception) {
            Log.w(TAG, "Unable to read historical process-start information", failure)
        }
    }

    /**
     * Ports the observable SwiftApp.c(reason) shutdown sequence that is supportable here:
     * log the reason, launch the HOME activity, and record the process-state summary on API 30+.
     * The reference then terminates by throwing from its uncaught handler; explicitly terminate
     * this process instead so the Kotlin handler cannot accidentally return to the runtime.
     */
    private fun exitAfterHandledCrash(reason: String): Nothing {
        Log.e(TAG, "Exiting after handled crash: reason=($reason)")
        try {
            startActivity(
                Intent(Intent.ACTION_MAIN)
                    .addCategory(Intent.CATEGORY_HOME)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            )
        } catch (failure: Exception) {
            Log.w(TAG, "Unable to launch HOME while handling crash", failure)
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            try {
                getSystemService(android.app.ActivityManager::class.java)
                    ?.setProcessStateSummary(reason.toByteArray(Charsets.UTF_8))
            } catch (failure: Exception) {
                Log.w(TAG, "Unable to record crash exit reason", failure)
            }
        }

        android.os.Process.killProcess(android.os.Process.myPid())
        kotlin.system.exitProcess(10)
    }

    override fun onConfigurationChanged(newConfig: Configuration) {
        super.onConfigurationChanged(newConfig)

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            Log.i(LOCALE_TAG, "Configuration changed. Locales: ${newConfig.locales}")
        } else {
            @Suppress("DEPRECATION")
            Log.i(LOCALE_TAG, "Configuration changed. Locale: ${newConfig.locale}")
        }

        preferences?.let { AppLocaleManager.onConfigurationChanged(newConfig, it, this@BareApp) }
        updateNotificationChannelNamesForSystemLocale()
    }

    override fun onCreate() {
        super.onCreate()

        instance = this
        Log.i(TAG, "BΛR☰ application process started")

        // Reference order 1: notification channels.
        createNotificationChannels()
        updateNotificationChannelNamesForSystemLocale()

        // Reference order 2: clear old notifications.
        getSystemService(NotificationManager::class.java)?.cancelAll()

        // Reference order 3: crash handler.
        installUncaughtExceptionHandler()

        // Reference order 4: preferences.
        initializePreferences()

        // Reference order 5: bs4/q63 filesystem initialization is not ported yet.
        // TODO(reference-port): restore the shared filesystem abstraction and SAF/root access mode.

        // Reference order 6: shell builder.
        initializeShell()

        // Reference order 7: app locale.
        preferences?.let { AppLocaleManager.initialize(this, it) }

        // Reference order 8: native bridge (not ported; do not load SwiftBackup's JNI library).
        // TODO(reference-port): provide BΛR☰-compatible implementations for the three native methods.
        // Reference order 9: d45 auth/session lifecycle (not ported).
        // TODO(reference-port): map the user/session listener and its cleanup effects.
        // Reference order 10: gg3 Firebase RTDB connectivity listener (not ported).
        // TODO(reference-port): add only with the RTDB dependency and owning feature lifecycle.
        // Reference order 11: jz4 package-change receiver/event pipeline (not ported).
        // TODO(reference-port): connect to BΛR☰'s app-inventory event system.
        // Reference order 12: kc2 foreground-service runtime-ledger reconciliation (not ported).
        // TODO(reference-port): implement service lifecycle writers before startup reconciliation.
        // Reference order 13: ys7/iq5 startup coroutine work (partially represented below).
        // ys7 process diagnostics are called directly here rather than launched in a coroutine.
        logLastProcessExit()
        logLastProcessStart()

        // Reference order 14: q63/cy0/m70 filesystem adapter, path mapper and trash mapping (not ported).
        // TODO(reference-port): restore these together with the canonical filesystem abstraction.

        Log.d(TAG, "startup initialization complete")

        // Reference order 15: zs7 connectivity listener.
        registerConnectivityTracker()

        StrictMode.setVmPolicy(StrictMode.VmPolicy.Builder().build())
    }

    /**
     * Ports SwiftApp's zs7/r80/rx connectivity diagnostics.
     *
     * CONNECTIVITY_ACTION is deprecated on modern Android but retained here because it is
     * the exact reference signal. The callback is diagnostic only and does not gate backups.
     */
    @Suppress("DEPRECATION")

    private fun registerConnectivityTracker() {
        if (connectivityReceiverRegistered) return
        try {
            registerReceiver(
                connectivityReceiver,
                IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION)
            )
            connectivityReceiverRegistered = true
        } catch (failure: Exception) {
            // Match Const.C(): registration failure is logged but does not block app startup.
            Log.e(CONNECTIVITY_TAG, "registerReceiver failed", failure)
        }
    }

    private val connectivityReceiver = object : BroadcastReceiver() {
        @Suppress("DEPRECATION")
        override fun onReceive(context: Context, intent: Intent) {
            if (intent.action != ConnectivityManager.CONNECTIVITY_ACTION) return
            val manager = getSystemService(ConnectivityManager::class.java) ?: return
            val networkInfo = manager.activeNetworkInfo
            if (shouldLogFirstConnectivityChange || lastNetworkInfo != networkInfo) {
                Log.i(
                    CONNECTIVITY_TAG,
                    "Network change: $networkInfo. isWifiOrEthernetConnected: " +
                        isWifiOrEthernetConnected(manager)
                )
                shouldLogFirstConnectivityChange = false
                lastNetworkInfo = networkInfo
            }
        }
    }

    private fun isWifiOrEthernetConnected(manager: ConnectivityManager): Boolean {
        val activeNetwork = manager.activeNetwork ?: return false
        val capabilities = manager.getNetworkCapabilities(activeNetwork) ?: return false
        return capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) ||
            capabilities.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET)
    }

    private fun createNotificationChannels() {
        val manager = getSystemService(NotificationManager::class.java) ?: return

        val soundAttributes = AudioAttributes.Builder()
            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
            .setUsage(AudioAttributes.USAGE_NOTIFICATION)
            .build()

        val successSound = Uri.parse("android.resource://$packageName/${R.raw.task_complete_sound_success}")
        val errorSound = Uri.parse("android.resource://$packageName/${R.raw.task_complete_sound_error}")

        val channels = listOf(
            NotificationChannel(
                CHANNEL_BACKUP_RESTORE,
                getString(R.string.backup_and_restore),
                NotificationManager.IMPORTANCE_LOW
            ),
            NotificationChannel(
                CHANNEL_NORMAL,
                getString(R.string.normal),
                NotificationManager.IMPORTANCE_LOW
            ),
            NotificationChannel(
                CHANNEL_TASK_SUCCESS,
                getString(R.string.task_successful),
                NotificationManager.IMPORTANCE_DEFAULT
            ).apply {
                setSound(successSound, soundAttributes)
                enableVibration(true)
            },
            NotificationChannel(
                CHANNEL_TASK_ERROR,
                getString(R.string.task_error),
                NotificationManager.IMPORTANCE_DEFAULT
            ).apply {
                setSound(errorSound, soundAttributes)
                enableVibration(true)
            },
            NotificationChannel(
                CHANNEL_TASK_SILENT,
                getString(R.string.task_complete_no_sound),
                NotificationManager.IMPORTANCE_LOW
            ).apply {
                enableVibration(true)
            },
            NotificationChannel(
                CHANNEL_CRASH_ERROR,
                "Crash notification",
                NotificationManager.IMPORTANCE_DEFAULT
            ).apply {
                setSound(errorSound, soundAttributes)
                enableVibration(true)
            }
        )

        channels.forEach { channel ->
            channel.setShowBadge(false)
            channel.setBypassDnd(false)
            manager.createNotificationChannel(channel)
        }
    }

    /**
     * Captures a local crash report and attempts a user-visible notification,
     * then delegates to Android's original handler so normal crash termination
     * behavior is preserved.
     */
    private fun installUncaughtExceptionHandler() {
        val previousHandler = Thread.getDefaultUncaughtExceptionHandler()

        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            val stackTrace = StringWriter().also { writer ->
                throwable.printStackTrace(PrintWriter(writer))
            }.toString()

            Log.e(TAG, "Uncaught exception on thread ${thread.name}", throwable)
            val crashSummary = formatCrashMessage(throwable)
            val crashMessage = formatCrashMessage(throwable.cause ?: throwable)

            try {
                // SwiftBackup attempts report persistence independently: a failed write must not
                // suppress the crash notification. The report action requires a non-empty file.
                val reportFile = cacheDir.resolve(CRASH_REPORT_FILE)
                val reportUri = try {
                    reportFile.writeText(stackTrace)
                    if (reportFile.exists() && reportFile.length() > 0L) {
                        FileProvider.getUriForFile(this, "$packageName.fileprovider", reportFile)
                    } else {
                        null
                    }
                } catch (reportFailure: Exception) {
                    Log.e(TAG, "Unable to save crash report", reportFailure)
                    null
                }

                try {
                    val notification = Notification.Builder(this, CHANNEL_CRASH_ERROR)
                        .setSmallIcon(R.drawable.ic_stat)
                        .setContentTitle("BΛR☰ crashed")
                        .setContentText(crashMessage)
                        .setStyle(
                            Notification.BigTextStyle()
                                .bigText(
                                    if (reportUri != null) {
                                        "$crashMessage\nCrash report saved to app cache as $CRASH_REPORT_FILE."
                                    } else {
                                        crashMessage
                                    }
                                )
                        )
                        .apply {
                            if (reportUri != null) {
                                val reportIntent = Intent(Intent.ACTION_VIEW).apply {
                                    setDataAndType(reportUri, "text/plain")
                                    addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                                }
                                val reportPendingIntent = PendingIntent.getActivity(
                                    this@BareApp,
                                    CRASH_NOTIFICATION_ID,
                                    reportIntent,
                                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                                )
                                setContentIntent(reportPendingIntent)
                            }
                        }
                        .setAutoCancel(true)
                        .build()

                    getSystemService(NotificationManager::class.java)
                        ?.notify(CRASH_NOTIFICATION_ID, notification)
                } catch (notificationFailure: Exception) {
                    Log.e(TAG, "Unable to post crash notification", notificationFailure)
                }
            } catch (handlerFailure: Exception) {
                // Diagnostics must never replace the original application crash.
                Log.e(TAG, "Crash handler failed", handlerFailure)
            } finally {
                val handledCrashReason = referenceHandledCrashReason(throwable, stackTrace, crashSummary)
                if (handledCrashReason != null) {
                    exitAfterHandledCrash(handledCrashReason)
                } else if (previousHandler != null) {
                    previousHandler.uncaughtException(thread, throwable)
                } else {
                    android.os.Process.killProcess(android.os.Process.myPid())
                    kotlin.system.exitProcess(10)
                }
            }
        }
    }

    /**
     * Mirrors SwiftBackup's io4.b(Throwable): class name plus every non-null message
     * in the cause chain, stopping if a malformed cause chain cycles.
     */
    private fun formatCrashMessage(throwable: Throwable): String {
        val messages = mutableListOf<String>()
        val visited = java.util.Collections.newSetFromMap(
            java.util.IdentityHashMap<Throwable, Boolean>()
        )
        var current: Throwable? = throwable
        while (current != null && visited.add(current)) {
            current.message?.let(messages::add)
            current = current.cause
        }
        return "${throwable.javaClass.simpleName}: " + messages.joinToString("\n")
    }

    /**
     * Mirrors the exception predicates in SwiftApp's uncaught-exception handler.
     *
     * The reference's zn7.b flag means the selected storage target is removable. Its selected
     * root is stored under "preferred_storage_dir"; SelectedStorageState resolves that path to
     * StorageVolume.isRemovable(), with Environment.isExternalStorageRemovable() as fallback.
     * This is separate from q63.e / "use_saf", which controls SAF access behavior.
     */
    private fun referenceHandledCrashReason(
        throwable: Throwable,
        stackTrace: String,
        crashSummary: String
    ): String? {
        if (
            SelectedStorageState.isSelectedStorageRemovable(this) == true &&
            (
                stackTrace.contains("FileNotFoundException") ||
                    stackTrace.contains("IOException")
                )
        ) {
            return "IO Exception on a removable storage, avoid crash report."
        }

        if (throwable is OutOfMemoryError) return throwable.javaClass.simpleName
        if (throwable is IgnoredException) return throwable.javaClass.simpleName
        if (throwable.javaClass.simpleName == "RemoteServiceException") {
            return throwable.javaClass.simpleName
        }

        // The reference requires BOTH markers for this special Shizuku/remote-process path.
        if (
            stackTrace.contains("ShizukuRemoteProcess", ignoreCase = true) &&
            stackTrace.contains("android.os.DeadObjectException", ignoreCase = true)
        ) {
            return throwable.javaClass.simpleName
        }

        val crashSummaryExitMarkers = listOf(
            "Resources\$NotFoundException",
            "Binary XML",
            "InflateException"
        )
        // These reference checks use case-sensitive substring matching against io4.b(Throwable),
        // not the full stack trace. Keep that distinction from the case-insensitive remote markers.
        if (crashSummaryExitMarkers.any { crashSummary.contains(it) }) {
            return throwable.javaClass.simpleName
        }

        val summaryExitMarkers = listOf(
            "EPERM (Operation not permitted)",
            "ENOSPC (No space left on device)"
        )
        if (summaryExitMarkers.any { crashSummary.contains(it) }) {
            return throwable.javaClass.simpleName
        }

        return null
    }

    private fun updateNotificationChannelNamesForSystemLocale() {
        val manager = getSystemService(NotificationManager::class.java) ?: return
        // SwiftBackup resolves notification-channel labels from the Android system locale,
        // independently of any per-app locale override.
        val locale = getSystemPrimaryLocale()
        val localizedContext = createConfigurationContext(
            Configuration(resources.configuration).apply { setLocale(locale) }
        )

        val channelLabels = listOf(
            CHANNEL_BACKUP_RESTORE to R.string.backup_and_restore,
            CHANNEL_NORMAL to R.string.normal,
            CHANNEL_TASK_SUCCESS to R.string.task_successful,
            CHANNEL_TASK_ERROR to R.string.task_error,
            CHANNEL_TASK_SILENT to R.string.task_complete_no_sound
        )

        channelLabels.forEach { (channelId, labelRes) ->
            val channel = manager.getNotificationChannel(channelId) ?: return@forEach
            channel.name = localizedContext.getString(labelRes)
            manager.createNotificationChannel(channel)
        }
    }

    private fun getSystemPrimaryLocale(): Locale {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            getSystemService(android.app.LocaleManager::class.java)
                ?.systemLocales
                ?.get(0)
                ?.let { return it }
        }

        @Suppress("DEPRECATION")
        val systemLocales = android.content.res.Resources.getSystem().configuration.locales
        return if (!systemLocales.isEmpty) systemLocales[0] else Locale.ENGLISH
    }

    /**
     * Initialize the app-scoped preference file used by SwiftBackup's startup path.
     * Keep the original file name so future feature ports can migrate settings
     * without inventing a second preference namespace.
     */
    private fun initializePreferences() {
        val store = getSharedPreferences("${packageName}_preferences", Context.MODE_PRIVATE)
        preferences = store
        preferencesEditor = store.edit()
        Log.d(TAG, "application preferences and editor initialized")
    }

    private fun initializeShell() {
        try {
            synchronized(Shell::class.java) {
                Shell.setDefaultBuilder(
                    Shell.Builder.create()
                        .setFlags(Shell.FLAG_MOUNT_MASTER)
                        .setTimeout(10)
                )
            }
            Log.d(TAG, "libsu default shell builder initialized")
        } catch (failure: Exception) {
            // Root access is optional; an unavailable shell must not block app launch.
            Log.w(TAG, "Unable to initialize libsu default shell builder", failure)
        }
    }

    /*
     * REFERENCE ORDER / PORT GAPS
     * Major declarations follow SwiftApp.java's broad order: singleton/signing utilities,
     * process-exit diagnostics, process-start diagnostics, handled-crash exit, native-method
     * gap, configuration callback, Application.onCreate(), then local helper implementations.
     *
     * Remaining gaps: native-lib JNI; q63/bs4 JavaFile/LibsuFile, SAF and root-PFD filesystem
     * bridge; d45 auth/session lifecycle; gg3 Firebase RTDB listener; jz4 package-change event
     * pipeline; kc2 FGS runtime-ledger reconciliation; iq5 OneDrive/MSAL lifecycle; cy0/m70
     * filesystem logging/path/trash integration. These are gaps, not implemented features.
     */

}
