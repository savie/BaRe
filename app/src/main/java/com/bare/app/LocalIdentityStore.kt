package com.bare.app

import android.content.Context
import java.util.UUID

data class BaReIdentity(
    val identityId: String,
    val type: IdentityType,
)

class LocalIdentityStore(context: Context) {
    private val preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE)

    fun load(): BaReIdentity? {
        val id = preferences.getString(KEY_ID, null)
        val type = preferences.getString(KEY_TYPE, null)
        if (id.isNullOrBlank() || type != IdentityType.LOCAL.name) {
            return null
        }
        return BaReIdentity(id, IdentityType.LOCAL)
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

    fun isSetupComplete(): Boolean = preferences.getBoolean(KEY_SETUP_COMPLETE, false)

    fun markSetupComplete() {
        preferences.edit().putBoolean(KEY_SETUP_COMPLETE, true).apply()
    }

    companion object {
        private const val PREFERENCES_NAME = "bare_identity"
        private const val KEY_ID = "identity_id"
        private const val KEY_TYPE = "identity_type"
        private const val KEY_SETUP_COMPLETE = "setup_complete"
    }
}
