package com.bare.apps.task

import android.content.Context
import android.content.pm.PackageManager
import android.provider.Settings
import java.nio.charset.StandardCharsets
import com.bare.apps.model.AppSpecialDataPayload

class AppSpecialDataManager(private val context: Context) {
    fun capture(packageName: String): AppSpecialDataPayload {
        val info = runCatching {
            context.packageManager.getPackageInfo(packageName, PackageManager.GET_PERMISSIONS)
        }.getOrNull()

        val permissionStates = info?.requestedPermissions
            ?.mapIndexedNotNull { index, permission ->
                val flags = info.requestedPermissionsFlags?.getOrNull(index)
                    ?: return@mapIndexedNotNull null
                val token = if (flags and 2 != 0) "g" else "ds"
                "$permission:$token"
            }
            ?.joinToString(",")

        val notificationAccess = runCatching {
            Settings.Secure.getString(
                context.contentResolver,
                "enabled_notification_listeners"
            )
        }.getOrNull()
            ?.split(':')
            ?.firstOrNull {
                it.substringBefore('/').equals(packageName, ignoreCase = true)
            }

        val accessibility = runCatching {
            Settings.Secure.getString(
                context.contentResolver,
                Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES
            )
        }.getOrNull()
            ?.split(':')
            ?.firstOrNull {
                it.substringBefore('/').equals(packageName, ignoreCase = true)
            }

        return AppSpecialDataPayload(
            version = 1,
            permissionStatesCsv = permissionStates,
            ssaid = null,
            ntfAccessComponent = notificationAccess,
            accessibilityComponent = accessibility,
            notificationPolicyXml = captureNotificationPolicy()
        )
    }
}
