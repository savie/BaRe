package com.bareapps.barebackup.common

import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.os.Build
import android.util.Log
import com.bareapps.barebackup.R
import java.util.Locale

/**
 * Refreshes notification channel labels when the system locale changes.
 *
 * Android keeps existing notification channels across locale changes, so their
 * visible names must be updated explicitly. Existing channel settings are kept.
 */
class LocaleChangedReceiver : BroadcastReceiver() {

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_LOCALE_CHANGED) return
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return

        try {
            val manager = context.getSystemService(NotificationManager::class.java) ?: return
            val locale = currentSystemLocale(context)
            val localizedContext = context.createConfigurationContext(
                Configuration(context.resources.configuration).apply {
                    setLocale(locale)
                },
            )

            val channelLabels = listOf(
                CHANNEL_BACKUP_RESTORE to R.string.backup_and_restore,
                CHANNEL_NORMAL to R.string.normal,
                CHANNEL_SUCCESS to R.string.task_successful,
                CHANNEL_ERROR to R.string.task_error,
                CHANNEL_SILENT to R.string.task_complete_no_sound,
            )

            channelLabels.forEach { (channelId, labelRes) ->
                val channel = manager.getNotificationChannel(channelId) ?: return@forEach
                channel.name = localizedContext.getString(labelRes)
                manager.createNotificationChannel(channel)
            }
        } catch (error: Exception) {
            Log.e(TAG, "Unable to update notification channel names after locale change", error)
        }
    }

    @Suppress("DEPRECATION")
    private fun currentSystemLocale(context: Context): Locale {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            val localeManager = context.getSystemService(android.app.LocaleManager::class.java)
            if (localeManager != null && !localeManager.systemLocales.isEmpty) {
                return localeManager.systemLocales[0] ?: Locale.ENGLISH
            }
        }
        return context.resources.configuration.locales[0] ?: Locale.ENGLISH
    }

    private companion object {
        const val TAG = "LocaleChangedReceiver"
        const val CHANNEL_BACKUP_RESTORE = "backup_restore_channel"
        const val CHANNEL_NORMAL = "normal_channel"
        const val CHANNEL_SUCCESS = "task_completion_channel_success"
        const val CHANNEL_ERROR = "task_completion_channel_error"
        const val CHANNEL_SILENT = "task_completion_channel_silent"
    }
}
