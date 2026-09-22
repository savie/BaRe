package com.bare.feature.account

import android.content.Context
import java.security.MessageDigest
import java.security.SecureRandom
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec

/**
 * Stores a verifier for the user-owned Local Account recovery password.
 * This password is independent from the Advanced encryption password.
 */
class RecoveryPasswordStore(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(
        PREFERENCES_NAME,
        Context.MODE_PRIVATE,
    )

    fun hasPassword(): Boolean =
        preferences.getBoolean(KEY_CONFIGURED, false) &&
            preferences.contains(KEY_SALT) &&
            preferences.contains(KEY_VERIFIER)

    fun savePassword(password: CharArray) {
        require(password.isNotEmpty()) { "password is required" }
        val salt = ByteArray(SALT_BYTES).also(SecureRandom()::nextBytes)
        val verifier = deriveVerifier(password, salt)
        preferences.edit()
            .putBoolean(KEY_CONFIGURED, true)
            .putString(KEY_SALT, salt.toHex())
            .putString(KEY_VERIFIER, verifier.toHex())
            .apply()
        password.fill('\u0000')
    }

    fun verifyPassword(password: CharArray): Boolean {
        if (!hasPassword()) {
            password.fill('\u0000')
            return false
        }
        val salt = preferences.getString(KEY_SALT, null)?.hexToBytes()
        val expected = preferences.getString(KEY_VERIFIER, null)?.hexToBytes()
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
        private const val PREFERENCES_NAME = "bare_recovery_password"
        private const val KEY_CONFIGURED = "password_configured"
        private const val KEY_SALT = "password_verifier_salt"
        private const val KEY_VERIFIER = "password_verifier"
        private const val SALT_BYTES = 16
        private const val PBKDF2_ITERATIONS = 310_000
        private const val VERIFIER_BITS = 256
    }
}
