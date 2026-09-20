package com.bare.feature.apps

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import com.bare.R
import java.io.File

data class AppDetails(
    val name: String,
    val packageName: String,
    val category: String,
    val versionName: String?,
    val versionCode: Long?,
    val firstInstallTime: Long,
    val lastUpdateTime: Long,
    val isSystem: Boolean,
    val isEnabled: Boolean,
    val apkCount: Int,
    val apkSizeBytes: Long,
    val canLaunch: Boolean,
    val canOpenAppInfo: Boolean,
)

class AppDetailsRepository(private val context: Context) {
    private val packageManager = context.packageManager

    fun load(packageName: String): AppDetails {
        val applicationInfo = packageManager.getApplicationInfo(packageName, 0)
        val packageInfo = packageManager.getPackageInfo(packageName, 0)
        val isSystem = (applicationInfo.flags and ApplicationInfo.FLAG_SYSTEM) != 0
        val apkPaths = buildList {
            add(applicationInfo.sourceDir)
            applicationInfo.splitSourceDirs?.let(::addAll)
        }
        val apkSizeBytes = apkPaths.sumOf { path -> File(path).length().coerceAtLeast(0L) }
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
        val appInfoIntent = android.content.Intent(
            android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
            android.net.Uri.parse("package:$packageName"),
        )
        val canOpenAppInfo = appInfoIntent.resolveActivity(packageManager) != null

        return AppDetails(
            name = applicationInfo.loadLabel(packageManager).toString().ifBlank { packageName },
            packageName = packageName,
            category = context.getString(if (isSystem) R.string.system_app else R.string.user_app),
            versionName = packageInfo.versionName,
            versionCode = if (android.os.Build.VERSION.SDK_INT >= 28) {
                packageInfo.longVersionCode
            } else {
                @Suppress("DEPRECATION")
                packageInfo.versionCode.toLong()
            },
            firstInstallTime = packageInfo.firstInstallTime,
            lastUpdateTime = packageInfo.lastUpdateTime,
            isSystem = isSystem,
            isEnabled = applicationInfo.enabled,
            apkCount = apkPaths.size,
            apkSizeBytes = apkSizeBytes,
            canLaunch = launchIntent != null,
            canOpenAppInfo = canOpenAppInfo,
        )
    }
}
