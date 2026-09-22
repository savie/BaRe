package com.bare.storage

import android.content.Context
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

suspend fun initializeLocalBackupStorage(
    context: Context,
    identityId: String,
    selectedStorageKind: BackupStorage.Kind,
) {
    require(identityId.isNotBlank()) { "identityId is required" }
    require(
        selectedStorageKind == BackupStorage.Kind.INTERNAL ||
            selectedStorageKind == BackupStorage.Kind.EXTERNAL
    ) {
        "local backup storage must be INTERNAL or EXTERNAL"
    }

    val repository = BackupStorageRepository(context)

    withContext(Dispatchers.IO) {
        repository.initialize(identityId, selectedStorageKind)
        StorageConfigurationStore(context).saveKind(selectedStorageKind)
    }
}
