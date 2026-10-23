package com.bareapps.barebackup.common

import android.app.NotificationManager
import android.content.Context
import android.content.res.Configuration
import android.content.res.Resources
import android.media.AudioAttributes
import android.net.Uri
import android.os.Build
import com.bareapps.barebackup.BareApp
import com.bareapps.barebackup.R
import defpackage.b67
import java.util.Locale

/**
 * Notification helpers used during BareApp startup and fatal-error reporting.
 * Kept intentionally scoped to the API currently consumed by BareApp.
 */
object NotificationHelper {
    // Preserve the reference class's eagerly touched static member.
    @JvmField
    val a: Any = Any()

    private fun context(): Context = BareApp.Companion.c()

    @JvmStatic
    fun a(resourceId: Int, locale: Locale): String {
        val configuration = Configuration(context().resources.configuration)
        configuration.setLocale(locale)
        return context().createConfigurationContext(configuration).getString(resourceId)
    }

    @JvmStatic
    fun b(): Uri =
        Uri.parse("android.resource://${context().packageName}/${R.raw.task_complete_sound_error}")

    @JvmStatic
    fun c(): Int {
        if (b67.d()) return 0
        return if (Build.VERSION.SDK_INT >= 23) context().getColor(R.color.acnt)
        else context().resources.getColor(R.color.acnt)
    }

    @JvmStatic
    fun d(): NotificationManager =
        context().getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

    @JvmStatic
    fun e(): Uri =
        Uri.parse("android.resource://${context().packageName}/${R.raw.task_complete_sound_success}")

    @JvmStatic
    fun f(): Locale {
        val locales = context().resources.configuration.locales
        return if (!locales.isEmpty) locales[0] else Resources.getSystem().configuration.locales[0]
    }
}
