package com.bareapps.barebackup

import android.app.Application
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.res.Configuration
import android.media.AudioAttributes
import android.net.Uri
import android.util.Log
import java.io.PrintWriter
import java.io.StringWriter
import java.util.Locale

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

        createNotificationChannels()
        getSystemService(NotificationManager::class.java)?.cancelAll()
        registerLocaleChangedReceiver()
        installUncaughtExceptionHandler()
        logLastProcessExit()
        logLastProcessStart()
    }

    override fun onConfigurationChanged(newConfig: android.content.res.Configuration) {
        super.onConfigurationChanged(newConfig)

        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            Log.i(LOCALE_TAG, "Configuration changed. Locales: ${newConfig.locales}")
        } else {
            @Suppress("DEPRECATION")
            Log.i(LOCALE_TAG, "Configuration changed. Locale: ${newConfig.locale}")
        }
    }

    /**
     * Mirrors SwiftBackup's locale-change receiver without adding another source file.
     * Existing channels are renamed using the system's current primary locale.
     */
    private fun registerLocaleChangedReceiver() {
        val filter = IntentFilter(Intent.ACTION_LOCALE_CHANGED)
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(localeChangedReceiver, filter, Context.RECEIVER_EXPORTED)
        } else {
            @Suppress("DEPRECATION")
            registerReceiver(localeChangedReceiver, filter)
        }
    }

    private val localeChangedReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context, intent: Intent) {
            if (intent.action != Intent.ACTION_LOCALE_CHANGED) return
            updateNotificationChannelNamesForSystemLocale()
        }
    }

    private fun updateNotificationChannelNamesForSystemLocale() {
        val manager = getSystemService(NotificationManager::class.java) ?: return
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
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.TIRAMISU) {
            val localeManager = getSystemService(android.app.LocaleManager::class.java)
            localeManager?.systemLocales?.get(0)?.let { return it }
        }

        @Suppress("DEPRECATION")
        val locales = android.content.res.Resources.getSystem().configuration.locales
        return locales.get(0) ?: Locale.ENGLISH
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
                .getHistoricalProcessExitReasons(packageName, 0, 1)
                .firstOrNull { it.processName == packageName }

            if (lastExit != null) {
                Log.i(
                    TAG,
                    "Last process exit: reason=${lastExit.reason}, " +
                        "description=${lastExit.description}, " +
                        "timestamp=${lastExit.timestamp}"
                )
            }
        } catch (failure: Exception) {
            // Diagnostics must not prevent application startup.
            Log.w(TAG, "Unable to read historical process-exit information", failure)
        }
    }

    /**
     * Mirrors SwiftBackup's startup diagnostics on Android versions that expose them.
     * Diagnostics are best-effort and must never block application startup.
     */
    private fun logLastProcessStart() {
        if (android.os.Build.VERSION.SDK_INT < 35) return

        val activityManager = getSystemService(android.app.ActivityManager::class.java) ?: return
        try {
            val startInfo = activityManager.historicalProcessStartReasons(1)
                .firstOrNull { it.processName == packageName }
                ?: return

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
                else -> "UNKNOWN(" + startInfo.reason + ")"
            }
            val startType = when (startInfo.startType) {
                0 -> "UNSET"
                1 -> "COLD"
                2 -> "WARM"
                3 -> "HOT"
                else -> "UNKNOWN(" + startInfo.startType + ")"
            }
            Log.i(
                TAG,
                "ApplicationStartInfo: startReason=" + reason + ", startType=" + startType +
                    ", wasForceStopped=" + startInfo.wasForceStopped()
            )
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

        @JvmStatic
        fun getInstance(): BareApp? = instance

        @JvmStatic
        fun appContext(): Context? = instance?.applicationContext
    }
}
