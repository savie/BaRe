package com.bare.app

import android.content.Context
import android.os.Build
import android.os.Environment
import android.os.storage.StorageManager
import com.bare.recovery.RecoveryPackageCodec
import java.io.File
import java.util.UUID

data class BaReIdentity(
    val identityId: String,
    val type: IdentityType,
)

class LocalIdentityStore(context: Context) {
    private val appContext = context.applicationContext
    private val preferences = appContext.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun load(): BaReIdentity? {
        val id = preferences.getString(KEY_ID, null)
        val type = preferences.getString(KEY_TYPE, null)
        if (id.isNullOrBlank() || type != IdentityType.LOCAL.name) {
            return null
        }
        return BaReIdentity(id, IdentityType.LOCAL)
    }

    /**
     * Restores the durable LOCAL identity from an existing .bare artifact before
     * creating a new UUID. This is the bootstrap path used after app-data loss.
     */
    fun loadOrRecover(): BaReIdentity? {
        load()?.let { return it }

        val candidates = findRecoveryArtifacts()
        if (candidates.isEmpty()) return null

        val identities = candidates.mapNotNull { file ->
            runCatching { RecoveryPackageCodec.peekIdentity(file.readBytes()) }.getOrNull()
        }.distinct()

        if (identities.size > 1) {
            throw IllegalStateException("multiple conflicting LOCAL recovery identities found")
        }
        val recoveredId = identities.singleOrNull() ?: return null
        return restoreBootstrapIdentity(recoveredId)
    }

    fun createLocalIdentity(): BaReIdentity {
        return load() ?: BaReIdentity(
            identityId = UUID.randomUUID().toString(),
            type = IdentityType.LOCAL,
        ).also { identity ->
            preferences.edit()
                .putString(KEY_ID, identity.identityId)
                .putString(KEY_TYPE, identity.type.name)
                .apply()
        }
    }

    fun toRecoveryPayload(): RecoveryPackageCodec.Payload {
        val identity = load() ?: createLocalIdentity()
        return RecoveryPackageCodec.Payload(
            identityId = identity.identityId,
            type = identity.type.name,
            setupComplete = isSetupComplete(),
            accessMethod = loadAccessMethod()?.name,
        )
    }

    /**
     * Restores LOCAL identity only when there is no conflicting local identity.
     * A conflicting installed identity is never silently overwritten.
     */
    fun restoreFromRecovery(payload: RecoveryPackageCodec.Payload): BaReIdentity {
        require(payload.type == IdentityType.LOCAL.name) { "recovery package is not LOCAL" }
        require(payload.identityId.isNotBlank()) { "recovery package has no identity" }

        val existing = load()
        if (existing != null && existing.identityId != payload.identityId) {
            throw IllegalStateException("existing LOCAL identity conflicts with recovery identity")
        }

        preferences.edit()
            .putString(KEY_ID, payload.identityId)
            .putString(KEY_TYPE, IdentityType.LOCAL.name)
            .putBoolean(KEY_SETUP_COMPLETE, payload.setupComplete)
            .apply()

        if (payload.accessMethod != null) {
            runCatching { AccessMethod.valueOf(payload.accessMethod) }
                .onSuccess { saveAccessMethod(it) }
        } else {
            preferences.edit().remove(KEY_ACCESS_METHOD).apply()
        }

        return BaReIdentity(payload.identityId, IdentityType.LOCAL)
    }

    fun isSetupComplete(): Boolean = preferences.getBoolean(KEY_SETUP_COMPLETE, false)

    fun markSetupComplete() {
        preferences.edit().putBoolean(KEY_SETUP_COMPLETE, true).apply()
    }

    fun loadAccessMethod(): AccessMethod? = preferences.getString(KEY_ACCESS_METHOD, null)
        ?.let { value -> runCatching { AccessMethod.valueOf(value) }.getOrNull() }

    fun saveAccessMethod(method: AccessMethod) {
        preferences.edit().putString(KEY_ACCESS_METHOD, method.name).apply()
    }

    private fun restoreBootstrapIdentity(identityId: String): BaReIdentity {
        val identity = BaReIdentity(identityId, IdentityType.LOCAL)
        preferences.edit()
            .putString(KEY_ID, identity.identityId)
            .putString(KEY_TYPE, identity.type.name)
            .apply()
        return identity
    }

    private fun findRecoveryArtifacts(): List<File> {
        return storageRoots().flatMap { root ->
            val accounts = File(root, "BaRe/accounts")
            accounts.listFiles()
                ?.asSequence()
                ?.filter { it.isDirectory }
                ?.map { File(it, "recovery/bare-recovery-v1.bare") }
                ?.filter { it.isFile }
                ?.toList()
                ?: emptyList()
        }.distinctBy { it.absolutePath }
    }

    private fun storageRoots(): List<File> = buildList {
        add(Environment.getExternalStorageDirectory())
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            val storageManager = appContext.getSystemService(StorageManager::class.java)
            storageManager?.storageVolumes
                ?.filter { it.isRemovable && it.state == Environment.MEDIA_MOUNTED }
                ?.mapNotNull { volume ->
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) volume.directory else null
                }
                ?.forEach { root ->
                    if (root.absolutePath != Environment.getExternalStorageDirectory().absolutePath) add(root)
                }
        }
    }.distinctBy { it.absolutePath }

    companion object {
        private const val PREFERENCES_NAME = "bare_identity"
        private const val KEY_ID = "identity_id"
        private const val KEY_TYPE = "identity_type"
        private const val KEY_SETUP_COMPLETE = "setup_complete"
        private const val KEY_ACCESS_METHOD = "access_method"
    }
}