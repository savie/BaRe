package com.bare.feature.apps

import android.content.Context
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorageBehavior
import java.io.File

class AppBackupActionBehavior(context: Context) {
    private val identityStore = LocalIdentityStore(context)
    private val storage = BackupStorageBehavior(context)

    sealed interface Result {
        data object Completed : Result
        data class Failed(val reason: String) : Result
    }

    fun setProtected(packageName: String, versionCode: Long, protected: Boolean): Result =
        mutateMetadata(packageName, versionCode) { metadata ->
            metadata.copy(protectedBackup = protected)
        }

    fun setNote(packageName: String, versionCode: Long, note: String?): Result =
        mutateMetadata(packageName, versionCode) { metadata ->
            metadata.copy(note = note?.trim()?.takeIf { it.isNotEmpty() })
        }

    fun delete(packageName: String, versionCode: Long): Result {
        val directory = findVersionDirectory(packageName, versionCode)
            ?: return Result.Failed("Backup version was not found")
        val metadata = AppBackupMetadata.read(directory)
            ?: return Result.Failed("Backup metadata is unavailable")
        if (metadata.protectedBackup) {
            return Result.Failed("Protected backup cannot be deleted")
        }
        return if (directory.deleteRecursively()) {
            Result.Completed
        } else {
            Result.Failed("Unable to delete backup")
        }
    }

    private fun mutateMetadata(
        packageName: String,
        versionCode: Long,
        transform: (AppBackupMetadata) -> AppBackupMetadata,
    ): Result {
        val directory = findVersionDirectory(packageName, versionCode)
            ?: return Result.Failed("Backup version was not found")
        val metadata = AppBackupMetadata.read(directory)
            ?: return Result.Failed("Backup metadata is unavailable")
        return runCatching {
            transform(metadata).writeAtomically(directory)
        }.fold(
            onSuccess = { Result.Completed },
            onFailure = { Result.Failed(it.message ?: "Unable to update backup metadata") },
        )
    }

    private fun findVersionDirectory(packageName: String, versionCode: Long): File? {
        if (packageName.isBlank()) return null
        val identity = identityStore.load() ?: return null
        val root = File(storage.internalStorage(identity.identityId).path, "apps/$packageName")
        val directory = File(root, versionCode.toString())
        return directory.takeIf { it.isDirectory }
    }
}
