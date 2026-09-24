package com.bare.feature.apps

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Environment
import com.bare.R
import com.bare.capability.RootCapabilityProvider
import android.app.usage.StorageStats
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
    val dataSizeBytes: Long?,
    val cacheSizeBytes: Long?,
    val externalDataSizeBytes: Long?,
    val mediaSizeBytes: Long?,
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
        val storage = storageStats(applicationInfo)
        val rootProvider = RootCapabilityProvider()
        val externalDataPath = File(Environment.getExternalStorageDirectory(), "Android/data/$packageName")
        val mediaPath = File(Environment.getExternalStorageDirectory(), "Android/media/$packageName")
        val externalDataSizeBytes = directorySizeOrNull(externalDataPath)
            ?: runCatching { rootProvider.directorySize(externalDataPath.absolutePath) }.getOrNull()
        val mediaSizeBytes = directorySizeOrNull(mediaPath)
            ?: runCatching { rootProvider.directorySize(mediaPath.absolutePath) }.getOrNull()
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
        val appInfoIntent = android.content.Intent(
            android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
            android.net.Uri.parse("package:$packageName"),
        )
        val canOpenAppInfo = appInfoIntent.resolveActivity(packageManager) != null
            sizeOf(directory)
        }.getOrNull()
    }
}
