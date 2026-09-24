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
    val lastUsedTime: Long?,
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
        val lastUsedTime = runCatching {
            AppUsageRepository(context).loadLastUsed(setOf(packageName))[packageName]
        }.getOrNull()

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
            firstInstallTime = normalizePackageTimestamp(packageInfo.firstInstallTime) ?: 0L,
            lastUpdateTime = normalizePackageTimestamp(packageInfo.lastUpdateTime) ?: 0L,
            lastUsedTime = lastUsedTime,
            isSystem = isSystem,
            isEnabled = applicationInfo.enabled,
            apkCount = apkPaths.size,
            apkSizeBytes = apkSizeBytes,
            dataSizeBytes = storage?.dataBytes,
            cacheSizeBytes = storage?.cacheBytes,
            externalDataSizeBytes = externalDataSizeBytes,
            mediaSizeBytes = mediaSizeBytes,
            canLaunch = launchIntent != null,
            canOpenAppInfo = canOpenAppInfo,
        )
    }

    private fun normalizePackageTimestamp(timestamp: Long): Long? = when {
        timestamp <= 0L -> null
        timestamp < 100_000_000_000L -> timestamp * 1000L
        else -> timestamp
    }

    private fun storageStats(info: ApplicationInfo): StorageStats? {
        return runCatching {
            val manager = context.getSystemService(android.app.usage.StorageStatsManager::class.java)
                ?: return null
            manager.queryStatsForPackage(
                info.storageUuid ?: android.os.storage.StorageManager.UUID_DEFAULT,
                info.packageName,
                android.os.UserHandle.getUserHandleForUid(info.uid),
            )
        }.getOrNull()
    }

    private fun directorySizeOrNull(directory: File): Long? {
        return runCatching {
            if (!directory.exists()) return@runCatching null
            if (!directory.isDirectory) return@runCatching null

            fun sizeOf(node: File): Long? {
                if (node.isFile) return node.length().coerceAtLeast(0L)
                val children = node.listFiles() ?: return null
                var total = 0L
                for (child in children) {
                    total += sizeOf(child) ?: return null
                }
                return total
            }

            sizeOf(directory)
        }.getOrNull()
    }
}
