package com.bareapps.barebackup.common

import android.app.LocaleManager
import android.app.NotificationManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.res.Configuration
import android.content.res.Resources
import android.os.Build
import android.util.Log
import com.bareapps.barebackup.R
import java.util.Locale

/**
 * Updates existing notification-channel labels when the Android system locale changes.
 * This mirrors SwiftBackup's manifest-registered LocaleChangedReceiver.
 */
class LocaleChangedReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action != Intent.ACTION_LOCALE_CHANGED) return

        val manager = context.getSystemService(NotificationManager::class.java) ?: return
        val locale = systemPrimaryLocale(context)
        val localizedContext = context.createConfigurationContext(
            Configuration(context.resources.configuration).apply { setLocale(locale) }
        )
        val labels = listOf(
            "backup_restore_channel" to R.string.backup_and_restore,
            "normal_channel" to R.string.normal,
            "task_completion_channel_success" to R.string.task_successful,
            "task_completion_channel_error" to R.string.task_error,
            "task_completion_channel_silent" to R.string.task_complete_no_sound
        )

        labels.forEach { (id, labelRes) ->
            val channel = manager.getNotificationChannel(id) ?: return@forEach
            channel.name = localizedContext.getString(labelRes)
            manager.createNotificationChannel(channel)
        }
        Log.i(TAG, "Notification channel names refreshed for system locale $locale")
    }

    private fun systemPrimaryLocale(context: Context): Locale {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            context.getSystemService(LocaleManager::class.java)
                ?.systemLocales
                ?.get(0)
                ?.let { return it }
        }
        @Suppress("DEPRECATION")
        val locales = Resources.getSystem().configuration.locales
        return if (!locales.isEmpty) locales[0] else Locale.ENGLISH
    }

    private companion object {
        const val TAG = "LocaleChangedReceiver"
    }
}
