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
                val backupMetadata = backupMetadata(backupLocations, info.packageName, versionCode)
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
                    isInstalled = true,
                    cloudSyncState = cloudSyncStates[info.packageName] ?: CloudSyncState.UNKNOWN,
                    installedFromGooglePlay = runCatching {
                        packageManager.getInstallSourceInfo(info.packageName).installingPackageName == "com.android.vending"
                    }.getOrNull(),
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
        val backupOnly = backupOnlyApps(backupLocations, installedPackages)
        val result = (loaded + backupOnly).sortedBy { it.name.lowercase() }
        cachedApps = result
        return result
    }

    private fun backupOnlyApps(locations: List<String>, installedPackages: Set<String>): List<AppItem> {
        val packageDirectories = locations
            .flatMap { root -> File(root, "apps").listFiles()?.filter { it.isDirectory }.orEmpty() }
            .filter { it.name !in installedPackages }
            .groupBy { it.name }

        return packageDirectories.mapNotNull { (packageName, roots) ->
            val backupDirectories = roots.flatMap { it.listFiles()?.filter { child -> child.isDirectory }.orEmpty() }
            if (backupDirectories.isEmpty()) return@mapNotNull null
            var size = 0L
            var latestTime: Long? = null
            var count = 0
            var hasProtectedBackup = false
            var hasBackupNotes = false
            var latestMetadata: AppBackupMetadata? = null
            backupDirectories.forEach { directory ->
                count++
                directory.walkTopDown().forEach { file ->
                    if (file.isFile) size += file.length().coerceAtLeast(0L)
                    val modified = file.lastModified()
                    if (modified > 0L && (latestTime == null || modified > latestTime!!)) latestTime = modified
                }
                AppBackupMetadata.read(directory)?.let { metadata ->
                    if (metadata.protectedBackup) hasProtectedBackup = true
                    if (metadata.hasNote()) hasBackupNotes = true
                    if (metadata.backupTime > 0L && (latestMetadata == null || metadata.backupTime > latestMetadata!!.backupTime)) {
                        latestMetadata = metadata
                        latestTime = metadata.backupTime
                    }
                }
            }
            val installerPackage = latestMetadata?.installerPackage
            AppItem(
                name = packageName,
                packageName = packageName,
                category = context.getString(com.bare.R.string.user_app),
                size = formatSize(size),
                isInstalled = false,
                cloudSyncState = CloudSyncState.UNKNOWN,
                isEnabled = true,
                installedFromGooglePlay = installerPackage == "com.android.vending",
                backupCount = count,
                backupSizeBytes = size,
                latestBackupTime = latestTime,
                hasProtectedBackup = hasProtectedBackup,
                hasBackupNotes = hasBackupNotes,
            )
        }
    }

    private data class BackupMetadata(
        val count: Int,
        val sizeBytes: Long,
        val latestTime: Long?,
        val hasOlderApk: Boolean,
        val hasNewerApk: Boolean,
        val hasProtectedBackup: Boolean,
        val hasBackupNotes: Boolean,
    )

    private fun backupMetadata(locations: List<String>, packageName: String, installedVersionCode: Long?): BackupMetadata {
        val versionDirectories = locations
            .map { File(it, "apps/$packageName") }
            .flatMap { root -> root.listFiles()?.filter { it.isDirectory }.orEmpty() }
        if (versionDirectories.isEmpty()) return BackupMetadata(0, 0L, null, false, false, false, false)
        var size = 0L
        var latest: Long? = null
        var hasOlderApk = false
        var hasNewerApk = false
        var hasProtectedBackup = false
        var hasBackupNotes = false
        versionDirectories.forEach { directory ->
            val versionCode = directory.name.toLongOrNull()
            val containsApk = directory.walkTopDown().any { it.isFile && it.extension.equals("apk", ignoreCase = true) }
            if (containsApk && installedVersionCode != null && versionCode != null) {
                if (versionCode < installedVersionCode) hasOlderApk = true
                if (versionCode > installedVersionCode) hasNewerApk = true
            }
            AppBackupMetadata.read(directory)?.let { metadata ->
                if (metadata.protectedBackup) hasProtectedBackup = true
                if (metadata.hasNote()) hasBackupNotes = true
                if (metadata.backupTime > 0L && (latest == null || metadata.backupTime > latest!!)) latest = metadata.backupTime
            }
            directory.walkTopDown().forEach { file ->
                if (file.isFile) size += file.length().coerceAtLeast(0L)
                val modified = file.lastModified()
                if (modified > 0L && (latest == null || modified > latest!!)) latest = modified
            }
        }
        return BackupMetadata(versionDirectories.size, size, latest, hasOlderApk, hasNewerApk, hasProtectedBackup, hasBackupNotes)
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
