package com.bare.storage

import android.content.Context
import java.io.File
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * Shared application boundary for backup-storage use cases.
 *
 * Repository ownership remains in BackupStorageRepository; clients use this
 * behavior for storage selection, inspection, initialization, and local
 * backup/recovery operations.
 */
class BackupStorageBehavior(context: Context) {
    private val repository = BackupStorageRepository(context)
    private val configuration = StorageConfigurationStore(context)

    fun inspect(identityId: String): List<BackupStorage> =
        repository.inspect(identityId)

    fun inspectAvailable(): List<BackupStorage> =
        repository.inspectAvailable()

    fun internalStorageCapacity(): BackupStorage =
        repository.internalStorageCapacity()

    fun internalStorage(identityId: String): BackupStorage =
        repository.internalStorage(identityId)

    fun selectedKind(): BackupStorage.Kind =
        configuration.loadKind() ?: BackupStorage.Kind.INTERNAL

    fun hasDurableLocalState(identityId: String, kind: BackupStorage.Kind): Boolean =
        repository.hasDurableLocalState(identityId, kind)

    fun canInitialize(kind: BackupStorage.Kind): Boolean =
        repository.canInitialize(kind)

    fun localBackupSize(identityId: String): Long =
        repository.localBackupSize(identityId)

    fun localRecoverySize(identityId: String): Long =
        repository.localRecoverySize(identityId)

    fun localBackupLocations(identityId: String): List<String> =
        repository.localBackupLocations(identityId)

    fun deleteLocalBackups(identityId: String): Long =
        repository.deleteLocalBackups(identityId)

    fun appBackupDirectory(
        initialization: StorageInitialization,
        identityId: String,
        packageName: String,
        version: String,
    ): File =
        repository.appBackupDirectory(initialization, identityId, packageName, version)

    suspend fun initialize(identityId: String, kind: BackupStorage.Kind): StorageInitialization =
        withContext(Dispatchers.IO) {
            repository.initialize(identityId, kind)
        }

    suspend fun selectLocalStorage(
        identityId: String,
        kind: BackupStorage.Kind,
    ): StorageInitialization =
        withContext(Dispatchers.IO) {
            val initialization = repository.initialize(identityId, kind)
            configuration.saveKind(kind)
            initialization
        }
}
