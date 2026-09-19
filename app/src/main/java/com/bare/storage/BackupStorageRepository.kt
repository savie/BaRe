package com.bare.storage

import android.content.Context
import android.os.Build
import android.os.Environment
import android.os.storage.StorageManager
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

class BackupStorageRepository(private val context: Context) {
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
            writable = root.canWrite(),
            totalBytes = root.totalSpace,
            freeBytes = root.freeSpace,
        )
    }

    fun internalStorage(identityId: String): BackupStorage {
        val root = Environment.getExternalStorageDirectory()
        val backups = File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups")
        return BackupStorage(
            kind = BackupStorage.Kind.INTERNAL,
            displayName = "Internal storage",
            path = backups.absolutePath,
            available = root.exists() && Environment.getExternalStorageState(root) == Environment.MEDIA_MOUNTED,
            writable = if (backups.exists()) backups.canWrite() else root.canWrite(),
            totalBytes = root.totalSpace,
            freeBytes = root.freeSpace,
        )
    }

    private fun removableStorages(identityId: String): List<BackupStorage> {
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
                path = File(root, "BaRe/accounts/" + identityFolder(identityId) + "/backups").absolutePath,
                available = true,
                writable = root.canWrite(),
                totalBytes = root.totalSpace,
                freeBytes = root.freeSpace,
            )
        }.distinctBy { it.path }
    }

    private fun identityFolder(identityId: String): String =
        identityId.filter(Char::isLetterOrDigit).take(16).padEnd(16, '0')
}