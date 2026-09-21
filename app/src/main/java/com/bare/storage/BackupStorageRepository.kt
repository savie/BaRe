package com.bare.storage

import android.content.Context
import android.os.Build
import android.os.Environment
import android.os.Process
import android.os.storage.StorageManager
import com.bare.capability.RootCapabilityProvider
import java.io.File

data class BackupStorage(
    val kind: Kind,
    val displayName: String,
    val path: String,
    val available: Boolean,
    val writable: Boolean,
    val totalBytes: Long = 0L,
    val freeBytes: Long = 0L,
) {
    enum class Kind { INTERNAL, EXTERNAL, REMOTE }
}

data class StorageInitialization(
    val rootDirectory: File,
    val recoveryDirectory: File,
)

class BackupStorageRepository(private val context: Context) {
    private val rootCapability = RootCapabilityProvider()

    fun initialize(identityId: String, kind: BackupStorage.Kind): StorageInitialization {
        require(identityId.isNotBlank()) { "identityId is required" }
        require(kind == BackupStorage.Kind.INTERNAL || kind == BackupStorage.Kind.EXTERNAL) {
            "canonical BaRe storage must use local storage"
        }

        val root = storageRoot(kind)
            ?: throw IllegalStateException("selected storage is not mounted")
        val identityDirectory = File(root, "BaRe/accounts/" + identityFolder(identityId))
        val backups = File(identityDirectory, "backups")
        val recovery = File(identityDirectory, "recovery")

        ensureDirectoryTree(identityDirectory, backups, recovery)

        check(backups.isDirectory && backups.canWrite()) { "backup directory is not writable" }
        check(recovery.isDirectory && recovery.canWrite()) { "recovery directory is not writable" }

        return StorageInitialization(root, recovery)
    }

    fun hasDurableLocalState(identityId: String, kind: BackupStorage.Kind): Boolean {
        if (identityId.isBlank()) return false
        val root = storageRoot(kind) ?: return false
        val identityDirectory = File(root, "BaRe/accounts/" + identityFolder(identityId))
        val backups = File(identityDirectory, "backups")
        val recovery = File(identityDirectory, "recovery")
        val artifact = File(recovery, "bare-recovery-v2.bare")
        return identityDirectory.isDirectory &&
            backups.isDirectory &&
            recovery.isDirectory &&
            artifact.isFile &&
            artifact.length() > 0L
    }

    fun canInitialize(kind: BackupStorage.Kind): Boolean {
        if (kind != BackupStorage.Kind.INTERNAL && kind != BackupStorage.Kind.EXTERNAL) return false
        val root = storageRoot(kind) ?: return false
        return hasDirectWriteAccess(root) || rootCapability.probe() is com.bare.capability.RootProbeResult.Success
    }

    fun inspect(identityId: String): List<BackupStorage> = buildList {
        add(internalStorage(identityId))
        val removable = removableStorages(identityId)
        if (removable.isEmpty()) {
            add(
                BackupStorage(
                    kind = BackupStorage.Kind.EXTERNAL,
                    displayName = "External storage",
                    path = "",
                    available = false,
                    writable = false,
                )
            )
        } else {
            addAll(removable)
        }
        add(BackupStorage(BackupStorage.Kind.REMOTE, "Cloud storage", "Cloud provider", false, false))
    }

    fun internalStorageCapacity(): BackupStorage {
        val root = Environment.getExternalStorageDirectory()
        return BackupStorage(
            kind = BackupStorage.Kind.INTERNAL,
            displayName = "Internal storage",
            path = "",
            available = root.exists() && Environment.getExternalStorageState(root) == Environment.MEDIA_MOUNTED,
            writable = hasDirectWriteAccess(root) || rootCapability.probe() is com.bare.capability.RootProbeResult.Success,
            totalBytes = root.totalSpace,
            freeBytes = root.freeSpace,
        )
    }

    fun internalStorage(identityId: String): BackupStorage {
        val root = Environment.getExternalStorageDirectory()
        return BackupStorage(
            kind = BackupStorage.Kind.INTERNAL,
            displayName = "Internal storage",
            path = if (identityId.isNullOrBlank()) root.absolutePath else File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups").absolutePath,
            available = root.exists() && Environment.getExternalStorageState(root) == Environment.MEDIA_MOUNTED,
            writable = hasDirectWriteAccess(root) || rootCapability.probe() is com.bare.capability.RootProbeResult.Success,
            totalBytes = root.totalSpace,
            freeBytes = root.freeSpace,
        )
    }

    fun inspectAvailable(): List<BackupStorage> = buildList {
        add(internalStorageCapacity())
        val removable = removableStorages(null)
        if (removable.isEmpty()) {
            add(
                BackupStorage(
                    kind = BackupStorage.Kind.EXTERNAL,
                    displayName = "External storage",
                    path = "",
                    available = false,
                    writable = false,
                )
            )
        } else {
            addAll(removable)
        }
        add(BackupStorage(BackupStorage.Kind.REMOTE, "Cloud storage", "Cloud provider", false, false))
    }

    private fun removableStorages(identityId: String?): List<BackupStorage> {
        val storageManager = context.getSystemService(StorageManager::class.java) ?: return emptyList()
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N) return emptyList()
        return storageManager.storageVolumes.mapNotNull { volume ->
            if (!volume.isRemovable || volume.state != Environment.MEDIA_MOUNTED) return@mapNotNull null
            val root = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) volume.directory else null
            root ?: return@mapNotNull null
            if (root.absolutePath == Environment.getExternalStorageDirectory().absolutePath) return@mapNotNull null
            val name = volume.getDescription(context).takeIf { !it.isNullOrBlank() } ?: "External storage"
            BackupStorage(
                kind = BackupStorage.Kind.EXTERNAL,
                displayName = name,
                path = if (identityId.isNullOrBlank()) root.absolutePath else File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups").absolutePath,
                available = true,
                writable = hasDirectWriteAccess(root) || rootCapability.probe() is com.bare.capability.RootProbeResult.Success,
                totalBytes = root.totalSpace,
                freeBytes = root.freeSpace,
            )
        }.distinctBy { it.path }
    }

    fun localBackupSize(identityId: String): Long =
        storageRootsForIdentity(identityId)
            .sumOf { root -> File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups").directorySize() }

    fun localRecoverySize(identityId: String): Long =
        storageRootsForIdentity(identityId)
            .sumOf { root -> File(root, "BaRe/accounts/" + identityFolder(identityId) + "/recovery").directorySize() }

    fun localBackupLocations(identityId: String): List<String> =
        storageRootsForIdentity(identityId)
            .map { root -> File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups").absolutePath }

    fun deleteLocalBackups(identityId: String): Long {
        var deletedBytes = 0L
        for (root in storageRootsForIdentity(identityId)) {
            val backups = File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups")
            deletedBytes += backups.directorySize()
            if (backups.exists()) {
                check(backups.deleteRecursively()) { "unable to delete backup files" }
                check(backups.mkdirs()) { "unable to recreate backup directory" }
            }
        }
        return deletedBytes
    }

    fun deleteAllLocalData(identityId: String): Long {
        var deletedBytes = 0L
        for (root in storageRootsForIdentity(identityId)) {
            val account = File(root, "BaRe/accounts/" + identityFolder(identityId))
            deletedBytes += account.directorySize()
            if (account.exists()) {
                check(account.deleteRecursively()) { "unable to delete local BaRe data" }
            }
        }
        return deletedBytes
    }

    private fun storageRootsForIdentity(identityId: String): List<File> = buildList {
        if (identityId.isBlank()) return@buildList
        add(Environment.getExternalStorageDirectory())
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            val storageManager = context.getSystemService(StorageManager::class.java)
            storageManager?.storageVolumes
                ?.filter { it.isRemovable && it.state == Environment.MEDIA_MOUNTED }
                ?.mapNotNull { it.directory }
                ?.forEach { add(it) }
        }
    }.distinctBy { it.absolutePath }

    private fun File.directorySize(): Long {
        if (!exists()) return 0L
        if (isFile) return length()
        return walkTopDown().filter { it.isFile }.sumOf { it.length() }
    }

    fun identityFolder(identityId: String): String =
        identityId.filter(Char::isLetterOrDigit).take(16).padEnd(16, '0')

    private fun storageRoot(kind: BackupStorage.Kind): File? {
        return when (kind) {
            BackupStorage.Kind.INTERNAL -> Environment.getExternalStorageDirectory()
            BackupStorage.Kind.EXTERNAL -> {
                if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) null
                else {
                    val storageManager = context.getSystemService(StorageManager::class.java) ?: return null
                    storageManager.storageVolumes.firstOrNull {
                        it.isRemovable && it.state == Environment.MEDIA_MOUNTED
                    }?.directory
                }
            }
            BackupStorage.Kind.REMOTE -> null
        }
    }

    private fun ensureDirectoryTree(identityDirectory: File, backups: File, recovery: File) {
        if (hasDirectWriteAccess(identityDirectory) || identityDirectory.mkdirs()) {
            check(backups.exists() || backups.mkdirs()) { "unable to create backups directory" }
            check(recovery.exists() || recovery.mkdirs()) { "unable to create recovery directory" }
            return
        }

        val uid = Process.myUid()
        val identityResult = rootCapability.ensureDirectory(identityDirectory.absolutePath, uid)
        if (identityResult !is com.bare.capability.RootProbeResult.Success) {
            val failure = identityResult as com.bare.capability.RootProbeResult.Failed
            error(failure.reason)
        }
        val backupsResult = rootCapability.ensureDirectory(backups.absolutePath, uid)
        if (backupsResult !is com.bare.capability.RootProbeResult.Success) {
            val failure = backupsResult as com.bare.capability.RootProbeResult.Failed
            error(failure.reason)
        }
        val recoveryResult = rootCapability.ensureDirectory(recovery.absolutePath, uid)
        if (recoveryResult !is com.bare.capability.RootProbeResult.Success) {
            val failure = recoveryResult as com.bare.capability.RootProbeResult.Failed
            error(failure.reason)
        }
        check(identityDirectory.isDirectory) { "identity directory was not created" }
        check(backups.isDirectory) { "backup directory was not created" }
        check(recovery.isDirectory) { "recovery directory was not created" }
    }

    private fun hasDirectWriteAccess(root: File): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R && Environment.isExternalStorageManager()) return true
        return root.canWrite()
    }
}
