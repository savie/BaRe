package com.bareapps.barebackup.common

import android.app.NotificationManager
import android.content.Context
import android.media.RingtoneManager
import android.net.Uri
import com.bareapps.barebackup.BareAppContext
import java.util.Locale

/** Notification helpers used during application startup and crash reporting. */
object NotificationHelper {
    private val context: Context
        get() = requireNotNull(BareAppContext.application) {
            "BareAppContext.application has not been initialized"
        }

    @JvmStatic
    fun a(resourceId: Int, locale: Locale): String {
        val configuration = context.resources.configuration
        val localized = android.content.res.Configuration(configuration)
        localized.setLocale(locale)
        return context.createConfigurationContext(localized).getString(resourceId)
    }

    @JvmStatic
    fun b(): Uri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)

    @JvmStatic
    fun c(): Int = 912

    @JvmStatic
    fun d(): NotificationManager =
        context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

    @JvmStatic
    fun e(): Uri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)

    @JvmStatic
    fun f(): Locale = context.resources.configuration.locales[0] ?: Locale.getDefault()
}
