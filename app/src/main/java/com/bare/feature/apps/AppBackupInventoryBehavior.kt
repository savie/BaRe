package com.bare.feature.apps

import android.content.Context
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorageBehavior
import java.io.File

data class AppBackupSnapshot(
    val versionCode: Long,
    val versionName: String?,
    val backupTime: Long,
    val protectedBackup: Boolean,
    val note: String?,
    val apkBytes: Long,
    val dataBytes: Long,
    val externalDataBytes: Long,
    val mediaBytes: Long,
)

class AppBackupInventoryBehavior(context: Context) {
    private val identityStore = LocalIdentityStore(context)
    private val storage = BackupStorageBehavior(context)

    fun inspectLocal(packageName: String): List<AppBackupSnapshot> {
        if (packageName.isBlank()) return emptyList()
        val identity = identityStore.load() ?: return emptyList()
        val backupRoot = File(
            storage.internalStorage(identity.identityId).path,
            "apps/$packageName",
        )
        if (!backupRoot.isDirectory) return emptyList()

        return backupRoot.listFiles()
            ?.asSequence()
            ?.filter { it.isDirectory }
            ?.mapNotNull { directory ->
                val metadata = AppBackupMetadata.read(directory) ?: return@mapNotNull null
                if (metadata.packageName != packageName) return@mapNotNull null
                AppBackupSnapshot(
                    versionCode = metadata.versionCode,
                    versionName = metadata.versionName,
                    backupTime = metadata.backupTime,
                    protectedBackup = metadata.protectedBackup,
                    note = metadata.note,
                    apkBytes = directorySize(directory) { file -> file.isFile && file.extension.equals("apk", true) },
                    dataBytes = directorySize(File(directory, "data")),
                    externalDataBytes = directorySize(File(directory, "external-data")),
                    mediaBytes = directorySize(File(directory, "media")),
                )
            }
            ?.sortedByDescending { it.backupTime }
            ?.toList()
            .orEmpty()
    }

    private fun directorySize(directory: File, include: (File) -> Boolean = { true }): Long {
        if (!directory.exists()) return 0L
        return directory.walkTopDown()
            .filter { it.isFile && include(it) }
            .sumOf { it.length() }
    }
}
