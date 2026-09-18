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
) {
    enum class Kind { INTERNAL, EXTERNAL, REMOTE }
}

class BackupStorageRepository(private val context: Context) {
    fun inspect(identityId: String): List<BackupStorage> {
        val internal = internalStorage(identityId)
        val external = removableStorages()
        return buildList {
            add(internal)
            addAll(external)
            add(
                BackupStorage(
                    kind = BackupStorage.Kind.REMOTE,
                    displayName = "Remote storage",
                    path = "Cloud provider",
                    available = false,
                    writable = false,
                )
            )
        }
    }

    fun internalStorage(identityId: String): BackupStorage {
        val accountId = identityFolder(identityId)
        val root = Environment.getExternalStorageDirectory()
        val backups = File(root, "BaRe/accounts/$accountId/backups")
        return BackupStorage(
            kind = BackupStorage.Kind.INTERNAL,
            displayName = "Internal storage",
            path = backups.absolutePath,
            available = root.exists() && Environment.getExternalStorageState(root) == Environment.MEDIA_MOUNTED,
            writable = backups.exists() ? backups.canWrite() : root.canWrite(),
        )
    }

    private fun removableStorages(): List<BackupStorage> {
        val storageManager = context.getSystemService(StorageManager::class.java) ?: return emptyList()
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N) return emptyList()

        return storageManager.storageVolumes.mapNotNull { volume ->
            if (!volume.isRemovable || volume.state != Environment.MEDIA_MOUNTED) return@mapNotNull null
            val directory = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) volume.directory else null
            val path = directory?.absolutePath ?: return@mapNotNull null
            if (path == Environment.getExternalStorageDirectory().absolutePath) return@mapNotNull null

            val name = volume.getDescription(context).takeIf { !it.isNullOrBlank() } ?: "External storage"
            BackupStorage(
                kind = BackupStorage.Kind.EXTERNAL,
                displayName = name,
                path = "$path/BaRe/accounts",
                available = true,
                writable = directory.canWrite(),
            )
        }.distinctBy { it.path }
    }

    private fun identityFolder(identityId: String): String {
        val compact = identityId.filter(Char::isLetterOrDigit)
        return compact.take(16).padEnd(16, '0')
    }
}
