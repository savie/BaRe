package com.bare.feature.account

import android.content.Context
import android.util.Base64
import java.security.KeyStore
import java.security.MessageDigest
import java.security.SecureRandom
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.PBEKeySpec

/**
 * Stores a verifier for the user-owned Local Account recovery password.
 * This password is independent from the Advanced encryption password.
 *
 * A locally protected copy is kept only so Recovery settings can perform
 * export/import without asking for the password again. The portable recovery
 * artifact still requires the user-entered Recovery password on a new device.
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

    fun hasLocallyStoredPassword(): Boolean =
        hasPassword() && preferences.contains(KEY_ENCRYPTED_PASSWORD)

    fun savePassword(password: CharArray) {
        require(password.isNotEmpty()) { "password is required" }
        val salt = ByteArray(SALT_BYTES).also(SecureRandom()::nextBytes)
        val verifier = deriveVerifier(password, salt)
        val encryptedPassword = encryptPassword(password)
        preferences.edit()
            .putBoolean(KEY_CONFIGURED, true)
            .putString(KEY_SALT, salt.toHex())
            .putString(KEY_VERIFIER, verifier.toHex())
            .putString(KEY_ENCRYPTED_PASSWORD, encryptedPassword.toBase64())
            .apply()
        password.fill('\u0000')
    }

    fun loadPassword(): CharArray? {
        if (!hasLocallyStoredPassword()) return null
        return runCatching {
            decryptPassword(
                preferences.getString(KEY_ENCRYPTED_PASSWORD, null)
                    ?.fromBase64()
                    ?: return null,
            )
        }.getOrNull()
    }

    fun changePassword(currentPassword: CharArray, newPassword: CharArray): Boolean {
        if (!verifyPassword(currentPassword)) {
            newPassword.fill('\u0000')
            return false
        }
        savePassword(newPassword)
        return true
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

    private fun encryptPassword(password: CharArray): ByteArray {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, getOrCreateKey())
        return cipher.iv + cipher.doFinal(String(password).toByteArray(Charsets.UTF_8))
    }

    private fun decryptPassword(value: ByteArray): CharArray {
        require(value.size > GCM_IV_BYTES) { "invalid stored recovery password" }
        val iv = value.copyOfRange(0, GCM_IV_BYTES)
        val ciphertext = value.copyOfRange(GCM_IV_BYTES, value.size)
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(
            Cipher.DECRYPT_MODE,
            getOrCreateKey(),
            GCMParameterSpec(GCM_TAG_BITS, iv),
        )
        return String(cipher.doFinal(ciphertext), Charsets.UTF_8).toCharArray()
    }

    private fun getOrCreateKey(): SecretKey {
        val keyStore = KeyStore.getInstance(ANDROID_KEYSTORE).apply { load(null) }
        keyStore.getKey(KEY_ALIAS, null)?.let { return it as SecretKey }

        val generator = KeyGenerator.getInstance("AES", ANDROID_KEYSTORE)
        generator.init(
            android.security.keystore.KeyGenParameterSpec.Builder(
                KEY_ALIAS,
                android.security.keystore.KeyProperties.PURPOSE_ENCRYPT or
                    android.security.keystore.KeyProperties.PURPOSE_DECRYPT,
            )
                .setBlockModes(android.security.keystore.KeyProperties.BLOCK_MODE_GCM)
                .setEncryptionPaddings(android.security.keystore.KeyProperties.ENCRYPTION_PADDING_NONE)
                .build(),
        )
        return generator.generateKey()
    }

    private fun ByteArray.toHex(): String =
        joinToString("") { "%02x".format(it) }

    private fun String.hexToBytes(): ByteArray {
        require(length % 2 == 0)
        return ByteArray(length / 2) { index ->
            substring(index * 2, index * 2 + 2).toInt(16).toByte()
        }
    }

    private fun ByteArray.toBase64(): String =
        Base64.encodeToString(this, Base64.NO_WRAP)

    private fun String.fromBase64(): ByteArray =
        Base64.decode(this, Base64.NO_WRAP)

    companion object {
        private const val PREFERENCES_NAME = "bare_recovery_password"
        private const val KEY_CONFIGURED = "password_configured"
        private const val KEY_SALT = "password_verifier_salt"
        private const val KEY_VERIFIER = "password_verifier"
        private const val KEY_ENCRYPTED_PASSWORD = "password_encrypted"
        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val KEY_ALIAS = "bare_recovery_password_wrap"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
        private const val GCM_IV_BYTES = 12
        private const val GCM_TAG_BITS = 128
        private const val SALT_BYTES = 16
        private const val PBKDF2_ITERATIONS = 310_000
        private const val VERIFIER_BITS = 256
    }
}
