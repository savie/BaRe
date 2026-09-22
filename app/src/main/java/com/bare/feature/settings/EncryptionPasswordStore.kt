package com.bare.feature.settings

import android.content.Context

enum class EncryptionPasswordStrategy {
    STANDARD,
    ADVANCED,
}

/**
 * Stores only the selected strategy and a non-secret "configured" marker.
 * The user password itself is never persisted.
 */
class EncryptionPasswordStore(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(
        PREFERENCES_NAME,
        Context.MODE_PRIVATE,
    )

    fun loadStrategy(): EncryptionPasswordStrategy =
        preferences.getString(KEY_STRATEGY, EncryptionPasswordStrategy.STANDARD.name)
            ?.let { runCatching { EncryptionPasswordStrategy.valueOf(it) }.getOrNull() }
            ?: EncryptionPasswordStrategy.STANDARD

    fun saveStrategy(strategy: EncryptionPasswordStrategy) {
        preferences.edit().putString(KEY_STRATEGY, strategy.name).apply()
    }

    fun hasActivePassword(): Boolean = preferences.getBoolean(KEY_PASSWORD_CONFIGURED, false)

    fun saveActivePassword(password: CharArray) {
        require(password.isNotEmpty()) { "password is required" }
        preferences.edit().putBoolean(KEY_PASSWORD_CONFIGURED, true).apply()
        password.fill('\u0000')
    }

    companion object {
        private const val PREFERENCES_NAME = "bare_encryption_passwords"
        private const val KEY_STRATEGY = "strategy"
        private const val KEY_PASSWORD_CONFIGURED = "password_configured"
    }
}
