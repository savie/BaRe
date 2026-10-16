package com.bareapps.barebackup

import android.app.Application
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.SharedPreferences
import android.content.Intent
import android.content.res.Configuration
import android.content.pm.PackageManager
import android.content.pm.Signature
import android.media.AudioAttributes
import android.os.Build
import android.os.StrictMode
import android.net.Uri
import androidx.core.content.FileProvider
import android.util.Log
import com.topjohnwu.superuser.Shell
import com.bareapps.barebackup.locale.AppLocaleManager
import java.io.PrintWriter
import java.io.StringWriter
import java.util.Locale
import android.util.Base64
import java.security.MessageDigest

/**
 * Application-level entry point for BΛR☰.
 *
 * Startup behavior is restored incrementally against the SwiftBackup reference,
 * reusing existing app resources wherever they are available.
 */
class BareApp : Application() {

    override fun onCreate() {
        super.onCreate()

        instance = this
        Log.i(TAG, "BΛR☰ application process started")

        // SwiftApp.onCreate() reference order:
        // 1) createNotificationChannels() -> NotificationHelper.d()/f() + six channels.
        createNotificationChannels()
        // Reference: NotificationHelper.f() uses SYSTEM locale, independent of app locale.
        updateNotificationChannelNamesForSystemLocale()

        // 2) NotificationHelper.d().cancelAll().
        getSystemService(NotificationManager::class.java)?.cancelAll()

        // 3) Install the crash handler before initializing shared app state.
        installUncaughtExceptionHandler()

        // 4) cz4: initialize <package>_preferences and its shared editor.
        initializePreferences()

        // 5) bs4.b() reference behavior is confirmed from the decompiled source:
        // read "use_saf" from the shared preferences (default false), then assign q63.e.
        // q63.d is also read by the reference for its logging branch. BΛR☰ has no audited
        // equivalent for those q63 storage flags yet, so keep this as a compile-safe TODO.
        // TODO(reference-port): trace BΛR☰'s SAF/document-tree storage state and port the
        // preference synchronization there; do not create a duplicate global flag.

        // 6) mp6.d is ex0: timeout=10s and shell selection is su --mount-master (only
        // when its builder flags allow it), then su, and finally sh. Root candidates are
        // accepted only when isRoot() is true. The current libsu Builder is NOT equivalent:
        // it only sets a timeout and leaves command selection to libsu defaults.
        // TODO(reference-port): inspect libsu 6.0.0's supported custom-builder API and
        // implement the same ordered root attempts/fallback without relying on guessed APIs.
        initializeShell()

        // 7) j05.d(this): initialize app locale and synchronize platform/app locale state.
        preferences?.let { AppLocaleManager.initialize(this, it) }

        // 8) System.loadLibrary("native-lib") exists in SwiftApp, but no matching BΛR☰
        // native library has been identified. Do NOT load it until a real BΛR☰ .so is found.
        // TODO(reference-port): inspect APK/JNI inventory and map native methods individually.

        // 9) d45 registers the Application as a listener; gg3 initializes another callback.
        // TODO(reference-port): identify the concrete BΛR☰ listener/callback equivalents.

        // 10) jz4 receives PACKAGE_ADDED/REMOVED/REPLACED/CHANGED with data scheme
        // "package", ignores SwiftBackup itself, suppresses most replacement intermediate
        // events, and posts a local-app-change event to the reference event bus.
        // BΛR☰ has package-install result handling, but that is not proof of equivalent
        // installed-app inventory/event-bus behavior.
        // TODO(reference-port): trace BΛR☰ app inventory observers before registering a receiver.

        // 11) kc2 startup reconciliation is now source-audited:
        // - Ledger file: filesDir/diagnostics/data_sync_fgs_runtime_ledger.json.
        // - Read/write uses Android AtomicFile + Gson serialization of Entry records.
        // - On process start, every entry with endMs == null is closed at now with
        //   outcome PROCESS_RESTARTED; records older than the rolling 24h window are
        //   dropped and the newest 200 records are retained.
        // BΛR☰ declares dataSync services and a related Labs setting, but no matching
        // ledger model or call sites have been found in its Kotlin source yet.
        // TODO(reference-port): add a named DataSyncFgsRuntimeLedger implementation and
        // wire it to the actual TaskService/ScheduleService lifecycle before enabling
        // startup reconciliation; do not create a ledger that no service writes to.

        // 12) Concrete startup coroutine mapping from the reference:
        // ys7 logs Const.l() app diagnostics, then calls SwiftApp.a() on API 30+ and
        // SwiftApp.b() on API 35+ (or preview VanillaIceCream); those are the last-exit
        // and startup-reason diagnostics respectively. BΛR☰ already has guarded versions.
        // iq5 invokes nq5.i.c(): jq5.c() initializes/refreshes the Microsoft OneDrive
        // SingleAccountPublicClientApplication, respecting the saved OneDrive auth agent.
        // BΛR☰ already declares OneDriveSignInActivity, the MSAL browser/broker activities,
        // and the onedrive_auth_agent setting in resources. However, the Kotlin initialization
        // path and its account/config lifecycle have not been located/audited yet, so do not
        // call a guessed MSAL factory here or assume manifest presence proves parity.
        // A later zs7 coroutine registers CONNECTIVITY_CHANGE once through Const.C();
        // r80 obtains ConnectivityManager.activeNetworkInfo and rx logs network changes
        // plus Const.z()'s Wi-Fi/Ethernet-connected result. BΛR☰ has no matching receiver
        // or connectivity tracker found by source search, so this is not registered here.
        // q63.d/e are static file/SAF flags; bs4.b() copies use_saf into q63.e. m70.b is
        // initialized with g70 and its path mapper rewrites selected /storage/emulated/<user>
        // paths to /data/media/<user>; q63 has many consumers, so this is not just a path helper.
        // TODO(reference-port): map the OneDrive client lifecycle, Const.C()/rx connectivity
        // tracker, and q63/m70 storage consumers into named BΛR☰ components after auditing callers.

        // Reference logs exit/start diagnostics around startup; keep existing guarded diagnostics.
        logLastProcessExit()
        logLastProcessStart()

        // SwiftApp sets StrictMode.VmPolicy at the end of onCreate().
        StrictMode.setVmPolicy(StrictMode.VmPolicy.Builder().build())
        Log.d(TAG, "startup initialization complete")
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
                Shell.setDefaultBuilder(Shell.Builder.create().setTimeout(10))
            }
            Log.d(TAG, "libsu default shell builder initialized")
        } catch (failure: Exception) {
            // Root access is optional; an unavailable shell must not block app launch.
            Log.w(TAG, "Unable to initialize libsu default shell builder", failure)
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
                val startType = when (startInfo.startupState) {
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

            try {
                val reportFile = cacheDir.resolve(CRASH_REPORT_FILE)
                reportFile.writeText(stackTrace)

                val notificationManager =
                    getSystemService(NotificationManager::class.java)

                val reportUri = FileProvider.getUriForFile(
                    this,
                    "$packageName.fileprovider",
                    reportFile
                )
                val reportIntent = Intent(Intent.ACTION_VIEW).apply {
                    setDataAndType(reportUri, "text/plain")
                    addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                }
                val reportPendingIntent = PendingIntent.getActivity(
                    this,
                    CRASH_NOTIFICATION_ID,
                    reportIntent,
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                )

                val notification = Notification.Builder(this, CHANNEL_CRASH_ERROR)
                    .setSmallIcon(R.mipmap.ic_launcher)
                    .setContentTitle(getString(R.string.error))
                    .setContentText(
                        throwable.localizedMessage
                            ?: getString(R.string.unknown_error_occured)
                    )
                    .setStyle(
                        Notification.BigTextStyle()
                            .bigText(
                                "${throwable.javaClass.simpleName}: " +
                                    (throwable.localizedMessage
                                        ?: getString(R.string.unknown_error_occured)) +
                                    "\nCrash report saved to app cache as $CRASH_REPORT_FILE."
                            )
                    )
                    .setContentIntent(reportPendingIntent)
                    .setAutoCancel(true)
                    .build()

                notificationManager?.notify(CRASH_NOTIFICATION_ID, notification)
            } catch (reportingFailure: Exception) {
                // Crash reporting must never replace the original application crash.
                Log.e(TAG, "Unable to save or notify about crash report", reportingFailure)
            } finally {
                if (previousHandler != null) {
                    previousHandler.uncaughtException(thread, throwable)
                } else {
                    android.os.Process.killProcess(android.os.Process.myPid())
                    kotlin.system.exitProcess(10)
                }
            }
        }
    }

    companion object {
        private const val TAG = "BareApp"
        private const val LOCALE_TAG = "LocaleManager"
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
}
