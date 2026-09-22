package com.bare.feature.settings

import android.content.Context
import java.security.MessageDigest
import java.security.SecureRandom
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec

enum class EncryptionPasswordStrategy {
    STANDARD,
    ADVANCED,
}

/**
 * Stores the selected strategy and a password verifier.
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

    fun hasActivePassword(): Boolean =
        preferences.getBoolean(KEY_PASSWORD_CONFIGURED, false) &&
            preferences.contains(KEY_PASSWORD_SALT) &&
            preferences.contains(KEY_PASSWORD_VERIFIER)

    fun saveActivePassword(password: CharArray) {
        require(password.isNotEmpty()) { "password is required" }
        val salt = ByteArray(SALT_BYTES).also(SecureRandom()::nextBytes)
        val verifier = deriveVerifier(password, salt)
        preferences.edit()
            .putBoolean(KEY_PASSWORD_CONFIGURED, true)
            .putString(KEY_PASSWORD_SALT, salt.toHex())
            .putString(KEY_PASSWORD_VERIFIER, verifier.toHex())
            .apply()
        password.fill('\u0000')
    }

    fun changeActivePassword(currentPassword: CharArray, newPassword: CharArray): Boolean {
        if (!verifyActivePassword(currentPassword)) {
            newPassword.fill('\u0000')
            return false
        }
        saveActivePassword(newPassword)
        return true
    }

    fun verifyActivePassword(password: CharArray): Boolean {
        if (!hasActivePassword()) {
            password.fill('\u0000')
            return false
        }
        val salt = preferences.getString(KEY_PASSWORD_SALT, null)?.hexToBytes()
        val expected = preferences.getString(KEY_PASSWORD_VERIFIER, null)?.hexToBytes()
        if (salt == null || expected == null) {
            password.fill('\u0000')
            return false
        }
        val actual = deriveVerifier(password, salt)
        password.fill('\u0000')
        return MessageDigest.isEqual(actual, expected)
    }

    private fun deriveVerifier(password: CharArray, salt: ByteArray): ByteArray {
        val spec = PBEKeySpec(password, salt, PBKDF2_ITERATIONS, VERIFIER_BITS)
        return try {
            SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
                .generateSecret(spec)
                .encoded
        } finally {
            spec.clearPassword()
        }
    }

    private fun ByteArray.toHex(): String =
        joinToString("") { "%02x".format(it) }

    private fun String.hexToBytes(): ByteArray {
        require(length % 2 == 0)
        return ByteArray(length / 2) { index ->
            substring(index * 2, index * 2 + 2).toInt(16).toByte()
        }
    }

    companion object {
        private const val PREFERENCES_NAME = "bare_encryption_passwords"
        private const val KEY_STRATEGY = "strategy"
        private const val KEY_PASSWORD_CONFIGURED = "password_configured"
        private const val KEY_PASSWORD_SALT = "password_verifier_salt"
        private const val KEY_PASSWORD_VERIFIER = "password_verifier"
        private const val SALT_BYTES = 16
        private const val PBKDF2_ITERATIONS = 310_000
        private const val VERIFIER_BITS = 256
    }
}
