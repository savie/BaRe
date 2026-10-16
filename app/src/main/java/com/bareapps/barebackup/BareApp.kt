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
        // Reference exception filters are evaluated after the report/notification attempt.
        // Removable-storage filtering remains TODO until BΛR☰ has the matching storage-mode
        // state; do not infer it from the unrelated use_saf preference.

        // 4) cz4: initialize <package>_preferences and its shared editor.
        initializePreferences()

        // 5) bs4.b() reference behavior is confirmed from the decompiled source:
        // read "use_saf" from shared preferences (default false), then assign q63.e.
        // q63.e gates SAF/removable-storage checks (including storage-switch behavior).
        // q63.d is not merely a logging flag: q63.o() switches the file abstraction to
        // LibsuFile when it is set. Const.checkFileReadWriteAccess flips it after a failed
        // normal-access check and retries in root-mode filesystem mode. q63.e then controls
        // whether a root-backed ParcelFileDescriptor may be opened through the SAF bridge
        // (with root PFD fallback if SAF opening fails). q63 also selects JavaFile vs
        // LibsuFile based on access checks and retries mkdir/stream operations through shell
        // or alternate streams. This is a coupled file abstraction, not a preference-only port.
        // BΛR☰ currently exposes all-files access from IntroActivity.requestStorageAccess()
        // and Shizuku permission onboarding, but those permission prompts do not implement the
        // reference's per-file JavaFile/LibsuFile selection, root PFD bridge, or SAF document
        // tree operations. The build file also has no direct MSAL dependency, so manifest
        // merged components alone do not prove the app-level OneDrive client is present.
        // TODO(reference-port): locate BΛR☰'s canonical file abstraction and root/SAF bridge,
        // then map the access-mode transitions before wiring use_saf; don't add duplicate flags.

        // 6) mp6.d configures a 10s timeout and enables the mount-master flag; ex0 then
        // tries su --mount-master, then su (accepting only a root shell), then sh. libsu 6.0.0
        // documents this exact fallback sequence for FLAG_MOUNT_MASTER, so use its supported
        // Builder API rather than a custom or guessed shell implementation.
        initializeShell()

        // 7) j05.d(this): initialize app locale and synchronize platform/app locale state.
        preferences?.let { AppLocaleManager.initialize(this, it) }
        // TODO(reference-port): on pre-33 Android, AppLocaleManager currently applies locales
        // through AppCompatDelegate while reference kv4 uses Lingver. The current dependency
        // graph has no Lingver runtime; keep this difference explicit until a parity-tested
        // implementation is selected rather than silently claiming exact behavior.

        // 8) The supplied SwiftBackup reference archive contains libnative-lib.so for
        // arm64-v8a, armeabi-v7a, x86, and x86_64. Its exported JNI entry points include:
        // SwiftApp.getGoogleAuthAndroidClientId(), getGoogleAuthWebClientId(), and
        // isLocalNetworkTcpBlockedByPermission(String, int, int). These JNI symbols are
        // package/class-specific (org.swiftapps.swiftbackup.SwiftApp), and the BΛR☰ rewrite
        // branch currently contains no .so or C/C++ source. Do NOT load the reference .so
        // into BΛR☰ or declare external methods without a matching BΛR☰ native implementation.
        // TODO(reference-port): determine whether any of these native behaviors are required,
        // then port or independently reimplement each method with a verified implementation.

        // 9) d45's listener set participates in Firebase user/session transitions: its
        // callback updates Crashlytics user ID/custom key and a database sync for a signed-in
        // user; when there is no user, it reconciles first-run/cloud-restore preferences and
        // refreshes alarm-related state. Its sign-out path also clears anonymous/Firebase state
        // and may clear per-user app data. BΛR☰ currently has Firebase Auth in Gradle but no
        // matching user/session, Crashlytics, or alarm-lifecycle implementation audited.
        // gg3 initializes a Firebase Realtime Database listener for /.info/connected and
        // tracks connection state used by cloud/network diagnostics. The current BΛR☰ Gradle
        // dependencies list Firebase Auth but not Realtime Database/Crashlytics; do not wire
        // these callbacks until the corresponding feature lifecycle and dependencies are real.
        // TODO(reference-port): map d45 auth/session transitions and gg3 RTDB connectivity
        // lifecycle to named BΛR☰ components after those components exist.

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
        // The manifest declares TaskService and ScheduleService, but tasks/ and tasks/fgs
        // are .gitkeep-only and the schedule implementation source is absent in this branch.
        // There are no service lifecycle call sites to instrument yet.
        // TODO(reference-port): implement the actual service lifecycle first, then add a
        // named DataSyncFgsRuntimeLedger and wire start/stop outcomes before reconciliation;
        // do not add a ledger that no service can write to.

        // 12) Concrete startup coroutine mapping from the reference:
        // ys7 first logs Const.l()'s app-state/version line, then calls SwiftApp.a() on API
        // 30+ and SwiftApp.b() on API 35+ (or preview VanillaIceCream) for process-exit and
        // process-start diagnostics. BΛR☰ has guarded exit/start equivalents, but has not
        // copied the reference's app-state formatter/version identity; keep that mapping
        // explicit rather than logging SwiftBackup's package/version in BΛR☰.
        // iq5 invokes nq5.i.c(), which delegates to jq5.c(). Reference behavior is more
        // specific than "initialize MSAL": it checks the cached client's AuthorizationAgent
        // against preference "onedrive_auth_agent"; missing/invalid values default to BROWSER.
        // If the agent differs, or no client exists, it loads R.raw.odrive_browser or
        // R.raw.odrive_webview and calls PublicClientApplication.createSingleAccountPublicClientApplication.
        // jq5 also validates the custom cached token pair (onedrive_access_token and
        // onedrive_access_token_expiry); its cleanup path removes those values, several
        // onedrive_conformance_* values, and matching com.microsoft* shared-pref files.
        // Directory listings confirm cloud/clients and account are .gitkeep-only; cloud/connect
        // has only a placeholder plus an empty common subdirectory. The manifest and setting
        // exist, but the rewrite branch has no cloud client implementation and no direct MSAL
        // dependency. This is a missing implementation boundary, not an unlocated class:
        // do not transplant token cleanup or invoke a guessed MSAL factory.
        // The reference's later zs7 coroutine registers CONNECTIVITY_CHANGE once through
        // Const.C(); r80 reads ConnectivityManager.activeNetworkInfo and rx logs only the first
        // observed event or a changed NetworkInfo, plus Const.z()'s Wi-Fi/Ethernet transport
        // result. The equivalent lightweight tracker is registered below; cloud/storage
        // integrations remain TODO until their missing feature modules are implemented.
        // cy0.b = new n63(1) installs the reference logging adapter used by its filesystem
        // abstraction; BΛR☰ has no corresponding q63/cy0 file abstraction to attach it to.
        // m70.a maps paths according to the requested access mode: one mode resolves through
        // the configured filesystem mapper; root-oriented modes rewrite /storage/emulated/<user>
        // (except user 0) to /data/media/<user>. m70.b is initialized with g70, which chooses
        // the deepest matching configured storage root and returns its .trash/atomic-delete
        // directory. These helpers depend on q63's JavaFile/LibsuFile/SAF mode selection; do
        // not port path rewriting or trash location independently of BΛR☰ storage semantics.
        // TODO(reference-port): map the OneDrive client lifecycle and q63/cy0/m70 storage
        // consumers after their corresponding BΛR☰ feature modules exist.

        // Reference logs exit/start diagnostics around startup; keep existing guarded diagnostics.
        logLastProcessExit()
        logLastProcessStart()

        Log.d(TAG, "startup initialization complete")
        registerConnectivityTracker()

        // Keep StrictMode setup last, matching SwiftApp.onCreate().
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
     * Mirrors the exception predicates in SwiftApp's uncaught-exception handler.
     *
     * The reference's removable-storage branch is intentionally excluded here: its condition
     * is a storage-manager state, not simply the "use_saf" preference. Port it when BΛR☰ has
     * the corresponding storage abstraction and can expose the same state reliably.
     */
    private fun referenceHandledCrashReason(
        throwable: Throwable,
        stackTrace: String,
        crashSummary: String
    ): String? {
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

        val stackTraceExitMarkers = listOf(
            "Resources\$NotFoundException",
            "Binary XML",
            "InflateException"
        )
        // These reference checks use case-sensitive substring matching against io4.b(Throwable),
        // not the full stack trace. Keep that distinction from the case-insensitive remote markers.
        if (stackTraceExitMarkers.any { crashSummary.contains(it) }) {
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

    companion object {
        // SwiftApp.c(reason) logs an exit reason, invokes Const.x(app) plus
        // Const.g(reason, true), and terminates through its app-specific shutdown workflow.
        // TODO(reference-port): map those two cleanup hooks to an actual BΛR☰ lifecycle before
        // adding an exit helper; a generic Process.killProcess call would not be equivalent.
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
}
