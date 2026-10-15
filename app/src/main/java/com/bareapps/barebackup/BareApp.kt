package com.bareapps.barebackup

import android.app.Application
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.media.AudioAttributes
import android.net.Uri
import android.util.Log

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
                getString(R.string.task_error),
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
