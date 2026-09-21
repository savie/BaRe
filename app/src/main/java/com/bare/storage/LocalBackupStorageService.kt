package com.bare.storage

import android.content.Context
import com.bare.app.LocalIdentityStore
import com.bare.recovery.RecoveryArtifactRepository
import java.security.SecureRandom
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

private const val RECOVERY_SECRET_ALPHABET = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz23456789"

private fun generateRecoverySecret(random: SecureRandom = SecureRandom()): CharArray {
    return CharArray(48) { RECOVERY_SECRET_ALPHABET[random.nextInt(RECOVERY_SECRET_ALPHABET.length)] }
}

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
    val identityStore = LocalIdentityStore(context)
    val recoveryRepository = RecoveryArtifactRepository(context)

    val initialized = withContext(Dispatchers.IO) {
        repository.initialize(identityId, selectedStorageKind)
    }
    val password = generateRecoverySecret()
    try {
        withContext(Dispatchers.IO) {
            val artifact = recoveryRepository.exportToFile(
                directory = initialized.recoveryDirectory,
                payload = identityStore.toRecoveryPayload(),
                password = password,
            )
            check(artifact.isFile && artifact.length() > 0L) {
                "recovery artifact verification failed"
            }
            StorageConfigurationStore(context).saveKind(selectedStorageKind)
        }
    } finally {
        password.fill('\u0000')
    }
}
