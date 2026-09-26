package com.bare.feature.apps

import android.content.Context
import android.app.usage.StorageStatsManager
import android.content.pm.ApplicationInfo
import android.os.UserHandle
import android.os.storage.StorageManager
import com.bare.app.AppItem
import com.bare.app.LocalIdentityStore
import com.bare.feature.account.AccountLocalDatabase
import com.bare.storage.BackupStorageBehavior
import java.io.File

class InstalledAppRepository(private val context: Context) {
    private val packageManager = context.packageManager
    private val organizationStore = AppOrganizationStore(context)
    private val identityStore = LocalIdentityStore(context)
    private val backupStorage = BackupStorageBehavior(context)
    private val accountDatabase = AccountLocalDatabase(context)
    private val cloudSyncMetadataStore = CloudSyncMetadataStore(context)

    fun load(): List<AppItem> {
        val identityId = identityStore.load()?.identityId
        val backupLocations = identityId?.let { backupStorage.localBackupLocations(it) }.orEmpty()
        val backupInventory = AppBackupInventoryBehavior(context).inspectLocalAll()
        // Local identity is not an Account. Until an authenticated Account/provider
        // supplies verified metadata, cloud state remains UNKNOWN rather than NOT_SYNCED.
        val accountId = accountDatabase.activeAccountId()
        val cloudSyncStates = cloudSyncMetadataStore.loadStates(accountId)
        val loaded = packageManager.getInstalledApplications(0)
            .map { info ->
                val isSystem = (info.flags and ApplicationInfo.FLAG_SYSTEM) != 0
                val isUpdatedSystemApp = (info.flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP) != 0
                val versionCode = runCatching {
                    val packageInfo = packageManager.getPackageInfo(info.packageName, 0)
                    if (android.os.Build.VERSION.SDK_INT >= 28) packageInfo.longVersionCode else @Suppress("DEPRECATION") packageInfo.versionCode.toLong()
                }.getOrNull()
                val backupMetadata = backupMetadata(backupInventory[info.packageName].orEmpty(), versionCode)
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
                    firstInstallTime = runCatching {
                        packageManager.getPackageInfo(info.packageName, 0).firstInstallTime
                    }.getOrNull(),
                    lastUpdateTime = runCatching {
                        val packageInfo = packageManager.getPackageInfo(info.packageName, 0)
                        packageInfo.lastUpdateTime.takeIf { it > packageInfo.firstInstallTime }
                    }.getOrNull(),
                    apkSizeBytes = apkSizeBytes,
                    installedSizeBytes = storage?.appBytes,
                    dataSizeBytes = storage?.dataBytes,
                    cacheSizeBytes = storage?.cacheBytes,
                    totalSizeBytes = storage?.totalBytes,
                    isInstalled = true,
                    cloudSyncState = cloudSyncStates[info.packageName] ?: CloudSyncState.UNKNOWN,
                    installedFromGooglePlay = runCatching {
                        packageManager.getInstallSourceInfo(info.packageName).installingPackageName == "com.android.vending"
                    }.getOrElse { false },
                    backupCount = backupMetadata.count,
                    backupSizeBytes = backupMetadata.sizeBytes,
                    latestBackupTime = backupMetadata.latestTime,
                    hasOlderBackupApk = backupMetadata.hasOlderApk,
                    hasNewerBackupApk = backupMetadata.hasNewerApk,
                    hasProtectedBackup = backupMetadata.hasProtectedBackup,
                    hasBackupNotes = backupMetadata.hasBackupNotes,
                    icon = runCatching {
                        packageManager.getApplicationIcon(info.packageName)
                    }.getOrNull(),
                )
            }
        val installedPackages = loaded.asSequence().map { it.packageName }.toSet()
        val backupOnly = backupOnlyApps(backupInventory, installedPackages)
        val result = (loaded + backupOnly).sortedBy { it.name.lowercase() }
        cachedApps = result
        return result
    }

    private fun backupOnlyApps(
        backupInventory: Map<String, List<AppBackupSnapshot>>,
        installedPackages: Set<String>,
    ): List<AppItem> =
        backupInventory.asSequence()
            .filter { (packageName, snapshots) -> packageName !in installedPackages && snapshots.isNotEmpty() }
            .map { (packageName, snapshots) ->
                val latest = snapshots.maxByOrNull { it.backupTime }
                val size = snapshots.sumOf { it.totalBytes }
                AppItem(
                    name = packageName,
                    packageName = packageName,
                    category = context.getString(com.bare.R.string.user_app),
                    size = formatSize(size),
                    isInstalled = false,
                    cloudSyncState = CloudSyncState.UNKNOWN,
                    isEnabled = true,
                    installedFromGooglePlay = false,
                    backupCount = snapshots.size,
                    backupSizeBytes = size,
                    latestBackupTime = latest?.backupTime,
                    hasProtectedBackup = snapshots.any { it.protectedBackup },
                    hasBackupNotes = snapshots.any { !it.note.isNullOrBlank() },
                )
            }
            .toList()

    private data class BackupMetadata(
        val count: Int,
        val sizeBytes: Long,
        val latestTime: Long?,
        val hasOlderApk: Boolean,
        val hasNewerApk: Boolean,
        val hasProtectedBackup: Boolean,
        val hasBackupNotes: Boolean,
    )

    private fun backupMetadata(
        snapshots: List<AppBackupSnapshot>,
        installedVersionCode: Long?,
    ): BackupMetadata {
        if (snapshots.isEmpty()) return BackupMetadata(0, 0L, null, false, false, false, false)
        return BackupMetadata(
            count = snapshots.size,
            sizeBytes = snapshots.sumOf { it.totalBytes },
            latestTime = snapshots.maxOfOrNull { it.backupTime },
            hasOlderApk = installedVersionCode != null && snapshots.any { it.apkBytes > 0L && it.versionCode < installedVersionCode },
            hasNewerApk = installedVersionCode != null && snapshots.any { it.apkBytes > 0L && it.versionCode > installedVersionCode },
            hasProtectedBackup = snapshots.any { it.protectedBackup },
            hasBackupNotes = snapshots.any { !it.note.isNullOrBlank() },
        )
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
