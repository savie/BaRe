package com.bare.feature.apps2.ui.list

import android.content.Context
import android.content.Intent
import android.net.Uri
import com.bare.feature.apps2.domain.Apps2App

enum class Apps2AppItemActionId {
    LAUNCH, PLAY_STORE, APP_INFO, SHARE_APK, ENABLE_DISABLE, FORCE_STOP, CLEAR_DATA, UNINSTALL,
}

data class Apps2AppItemAction(
    val id: Apps2AppItemActionId,
    val title: String,
    val available: Boolean,
    val run: (Context, Apps2App) -> Unit,
)

object Apps2AppItemActions {
    fun forApp(app: Apps2App): List<Apps2AppItemAction> = listOf(
        Apps2AppItemAction(
            Apps2AppItemActionId.LAUNCH, "Launch",
            app.isInstalled && app.isEnabled && app.isLaunchable,
        ) { context, item ->
            context.startActivity(
                context.packageManager.getLaunchIntentForPackage(item.packageName)
                    ?.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK) ?: return@Apps2AppItemAction
            )
        },
        Apps2AppItemAction(
            Apps2AppItemActionId.PLAY_STORE, "Play Store", true,
        ) { context, item ->
            val market = Intent(
                Intent.ACTION_VIEW,
                Uri.parse("market://details?id=" + item.packageName),
            ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            runCatching { context.startActivity(market) }.onFailure {
                context.startActivity(
                    Intent(
                        Intent.ACTION_VIEW,
                        Uri.parse("https://play.google.com/store/apps/details?id=" + item.packageName),
                    ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
                )
            }
        },
        Apps2AppItemAction(
            Apps2AppItemActionId.APP_INFO, "App info", true,
        ) { context, item ->
            context.startActivity(
                Intent(
                    android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                    Uri.parse("package:" + item.packageName),
                ).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
            )
        },
        Apps2AppItemAction(
            Apps2AppItemActionId.SHARE_APK, "Share APK", false,
        ) { _, _ -> },
        Apps2AppItemAction(
            Apps2AppItemActionId.ENABLE_DISABLE, "Enable / Disable", false,
        ) { _, _ -> },
        Apps2AppItemAction(
            Apps2AppItemActionId.FORCE_STOP, "Force stop", false,
        ) { _, _ -> },
        Apps2AppItemAction(
            Apps2AppItemActionId.CLEAR_DATA, "Clear data", false,
        ) { _, _ -> },
        Apps2AppItemAction(
            Apps2AppItemActionId.UNINSTALL, "Uninstall", false,
        ) { _, _ -> },
    ).filter { it.available }
}
