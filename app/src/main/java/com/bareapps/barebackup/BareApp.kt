package com.bareapps.barebackup

import android.app.Application
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.media.AudioAttributes
import android.net.Uri
import android.util.Log
import java.io.PrintWriter
import java.io.StringWriter

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
        installUncaughtExceptionHandler()
        logLastProcessExit()
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
                getString(R.string.error),
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
