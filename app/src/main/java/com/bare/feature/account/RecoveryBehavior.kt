package com.bare.feature.account

import android.content.Context
import android.net.Uri
import com.bare.app.BaReIdentity
import com.bare.app.LocalIdentityStore
import com.bare.recovery.BaReMasterKeyStore
import com.bare.recovery.RecoveryArtifactRepository
import com.bare.storage.BackupStorageBehavior

/**
 * Shared recovery use-case boundary for export and import.
 *
 * UI owns presentation and recovery-password configuration; recovery artifact,
 * identity restoration, master-key, and storage orchestration remain here.
 */
class RecoveryBehavior(context: Context) {
    private val identityStore = LocalIdentityStore(context)
    private val repository = RecoveryArtifactRepository(context)
    private val masterKeyStore = BaReMasterKeyStore(context)
    private val storageBehavior = BackupStorageBehavior(context)

    fun import(
        artifactUri: Uri,
        recoveryPassword: CharArray,
    ): BaReIdentity {
        val decoded = repository.import(artifactUri, recoveryPassword)
        if (identityStore.hasConflictingIdentity(decoded.payload)) {
            error("recovery identity conflict")
        }
        masterKeyStore.saveImported(decoded.masterKey)
        identityStore.restoreFromRecovery(decoded.payload)
        return identityStore.load()
            ?: error("storage identity unavailable")
    }

    fun export(
        recoveryPassword: CharArray,
    ): java.io.File {
        val payload = identityStore.toRecoveryPayload()
        val kind = storageBehavior.selectedKind()
        val recoveryDirectory = storageBehavior
            .initialize(payload.identityId, kind)
            .recoveryDirectory
        return repository.exportToFile(
            directory = recoveryDirectory,
            payload = payload,
            masterKey = masterKeyStore.getOrCreate(),
            password = recoveryPassword,
        )
    }
}
