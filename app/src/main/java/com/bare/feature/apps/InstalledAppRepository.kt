package com.bare.feature.apps

import android.content.Context
import android.app.usage.StorageStatsManager
import android.content.pm.ApplicationInfo
import android.os.UserHandle
import android.os.storage.StorageManager
import com.bare.app.AppItem
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorageBehavior
import java.io.File

class InstalledAppRepository(private val context: Context) {
    private val packageManager = context.packageManager
    private val organizationStore = AppOrganizationStore(context)
    private val identityStore = LocalIdentityStore(context)
    private val backupStorage = BackupStorageBehavior(context)

    fun load(): List<AppItem> {
        val identityId = identityStore.load()?.identityId
        val backupLocations = identityId?.let { backupStorage.localBackupLocations(it) }.orEmpty()
        val loaded = packageManager.getInstalledApplications(0)
            .map { info ->
                val isSystem = (info.flags and ApplicationInfo.FLAG_SYSTEM) != 0
                val isUpdatedSystemApp = (info.flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0
                val backupMetadata = backupMetadata(backupLocations, info.packageName)
                val canLaunch = packageManager.getLaunchIntentForPackage(info.packageName) != null
                val storage = storageStats(info)
                val apkSizeBytes = runCatching {
                    buildList {
                        add(info.sourceDir)
                        info.splitSourceDirs?.let(::addAll)
                    }.sumOf { path -> File(path).length().coerceAtLeast(0L) }
                }.getOrNull()
                AppItem(
                    name = info.loadLabel(packageManager).toString().ifBlank { info.packageName },
                    packageName = info.packageName,
                    category = context.getString(if (isSystem) com.bare.R.string.system_app else com.bare.R.string.user_app),
                    size = formatSize(apkSizeBytes ?: 0L),
                    isSystem = isSystem,
                    isUpdatedSystemApp = isUpdatedSystemApp,
                    canLaunch = canLaunch,
                    isEnabled = info.enabled,
                    favorite = organizationStore.isFavorite(info.packageName),
                    firstInstallTime = runCatching { packageManager.getPackageInfo(info.packageName, 0).firstInstallTime }.getOrNull(),
                    lastUpdateTime = runCatching { packageManager.getPackageInfo(info.packageName, 0).lastUpdateTime }.getOrNull(),
                    apkSizeBytes = apkSizeBytes,
                    installedSizeBytes = storage?.appBytes,
                    dataSizeBytes = storage?.dataBytes,
                    cacheSizeBytes = storage?.cacheBytes,
                    totalSizeBytes = storage?.totalBytes,
                    installedFromGooglePlay = runCatching {
                        packageManager.getInstallSourceInfo(info.packageName).installingPackageName == "com.android.vending"
                    }.getOrNull(),
                    backupCount = backupMetadata.count,
                    backupSizeBytes = backupMetadata.sizeBytes,
                    latestBackupTime = backupMetadata.latestTime,
                    icon = runCatching {
                        packageManager.getApplicationIcon(info.packageName)
                    }.getOrNull(),
                )
            }
            .sortedBy { it.name.lowercase() }
        cachedApps = loaded
        return loaded
    }

    private data class BackupMetadata(
        val count: Int,
        val sizeBytes: Long,
        val latestTime: Long?,
    )

    private fun backupMetadata(locations: List<String>, packageName: String): BackupMetadata {
        val versionDirectories = locations
            .map { File(it, "apps/$packageName") }
            .flatMap { root -> root.listFiles()?.filter { it.isDirectory }.orEmpty() }
        if (versionDirectories.isEmpty()) return BackupMetadata(0, 0L, null)
        var size = 0L
        var latest: Long? = null
        versionDirectories.forEach { directory ->
            directory.walkTopDown().forEach { file ->
                if (file.isFile) size += file.length().coerceAtLeast(0L)
                val modified = file.lastModified()
                if (modified > 0L && (latest == null || modified > latest!!)) latest = modified
            }
        }
        return BackupMetadata(versionDirectories.size, size, latest)
    }

    private data class AppStorageStats(
        val appBytes: Long,
        val dataBytes: Long,
        val cacheBytes: Long,
    ) {
        val totalBytes: Long get() = appBytes + dataBytes
    }

    private fun storageStats(info: ApplicationInfo): AppStorageStats? {
        return runCatching {
            val manager = context.getSystemService(StorageStatsManager::class.java) ?: return null
            val stats = manager.queryStatsForPackage(
                info.storageUuid ?: StorageManager.UUID_DEFAULT,
                info.packageName,
                UserHandle.getUserHandleForUid(info.uid),
            )
            AppStorageStats(
                appBytes = stats.appBytes,
                dataBytes = stats.dataBytes,
                cacheBytes = stats.cacheBytes,
            )
        }.getOrNull()
    }


    companion object {
        @Volatile
        private var cachedApps: List<AppItem> = emptyList()

        fun cached(): List<AppItem> = cachedApps
    }

    private fun formatSize(bytes: Long): String {
        if (bytes <= 0L) return context.getString(com.bare.R.string.unknown_size)
        val units = arrayOf("B", "KB", "MB", "GB")
        var value = bytes.toDouble()
        var index = 0
        while (value >= 1024 && index < units.lastIndex) {
            value /= 1024
            index++
        }
        return if (index == 0) "${bytes} ${units[index]}" else "%.1f %s".format(value, units[index])
    }
}
