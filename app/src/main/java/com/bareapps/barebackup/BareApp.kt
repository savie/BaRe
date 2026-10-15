package com.bareapps.barebackup

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.media.AudioAttributes
import android.media.RingtoneManager
import android.util.Log

/**
 * Application-level entry point for BΛR☰.
 *
 * Startup behavior is being restored in small, verifiable stages against the
 * SwiftBackup reference. Resource-specific sounds and crash reporting are
 * intentionally deferred until their supporting resources are in place.
 */
class BareApp : Application() {

    override fun onCreate() {
        super.onCreate()

        instance = this
        Log.i(TAG, "BΛR☰ application process started")

        createNotificationChannels()
        getSystemService(NotificationManager::class.java)?.cancelAll()
    }

    private fun createNotificationChannels() {
        val manager = getSystemService(NotificationManager::class.java) ?: return

        val channels = listOf(
            NotificationChannel(
                CHANNEL_BACKUP_RESTORE,
                "Backup and restore",
                NotificationManager.IMPORTANCE_LOW
            ),
            NotificationChannel(
                CHANNEL_NORMAL,
                "Normal",
                NotificationManager.IMPORTANCE_LOW
            ),
            NotificationChannel(
                CHANNEL_TASK_SUCCESS,
                "Task successful",
                NotificationManager.IMPORTANCE_DEFAULT
            ),
            NotificationChannel(
                CHANNEL_TASK_ERROR,
                "Task error",
                NotificationManager.IMPORTANCE_DEFAULT
            ),
            NotificationChannel(
                CHANNEL_TASK_SILENT,
                "Task complete (no sound)",
                NotificationManager.IMPORTANCE_LOW
            ),
            NotificationChannel(
                CHANNEL_CRASH_ERROR,
                "Crash notification",
                NotificationManager.IMPORTANCE_DEFAULT
            )
        )

        val defaultSound = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)
        val soundAttributes = AudioAttributes.Builder()
            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION)
            .setUsage(AudioAttributes.USAGE_NOTIFICATION)
            .build()

        channels.forEach { channel ->
            channel.setShowBadge(false)
            channel.setBypassDnd(false)

            when (channel.id) {
                CHANNEL_TASK_SUCCESS,
                CHANNEL_TASK_ERROR,
                CHANNEL_CRASH_ERROR -> {
                    channel.setSound(defaultSound, soundAttributes)
                    channel.enableVibration(true)
                }

                CHANNEL_TASK_SILENT -> channel.enableVibration(true)
            }

            manager.createNotificationChannel(channel)
        }
    }

    companion object {
        private const val TAG = "BareApp"

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
