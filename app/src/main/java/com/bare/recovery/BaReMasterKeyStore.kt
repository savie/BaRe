package com.bare.recovery

import android.content.Context
import android.util.Base64
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey

/**
 * Keeps the BaRe master key locally protected by Android Keystore.
 *
 * The password is never stored here. Portable recovery stores an encrypted
 * copy of the master key in the user-owned .bare artifact.
 */
class BaReMasterKeyStore(context: Context) {
    private val preferences = context.applicationContext.getSharedPreferences(
        PREFERENCES_NAME,
        Context.MODE_PRIVATE,
    )

    fun getExisting(): ByteArray? {
        return if (preferences.contains(KEY_MASTER_KEY)) load() else null
    }

    fun getOrCreate(): ByteArray {
        if (preferences.contains(KEY_MASTER_KEY)) {
            return load() ?: throw IllegalStateException("stored BaRe master key cannot be opened")
        }
        val key = ByteArray(KEY_BYTES).also(secureRandom::nextBytes)
        save(key)
        return key
    }

    fun saveImported(masterKey: ByteArray) {
        require(masterKey.size == KEY_BYTES) { "invalid BaRe master key" }
        save(masterKey)
    }

    private fun load(): ByteArray? {
        val encoded = preferences.getString(KEY_MASTER_KEY, null) ?: return null
        return runCatching {
            decrypt(Base64.decode(encoded, Base64.NO_WRAP))
        }.getOrNull()
    }

    private fun save(masterKey: ByteArray) {
        val encoded = Base64.encodeToString(encrypt(masterKey), Base64.NO_WRAP)
        preferences.edit().putString(KEY_MASTER_KEY, encoded).apply()
    }

    private fun encrypt(value: ByteArray): ByteArray {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, getOrCreateKey())
        val ciphertext = cipher.doFinal(value)
        return cipher.iv + ciphertext
    }

    private fun decrypt(value: ByteArray): ByteArray {
        require(value.size > GCM_IV_BYTES) { "invalid stored master key" }
        val iv = value.copyOfRange(0, GCM_IV_BYTES)
        val ciphertext = value.copyOfRange(GCM_IV_BYTES, value.size)
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.DECRYPT_MODE, getOrCreateKey(), javax.crypto.spec.GCMParameterSpec(GCM_TAG_BITS, iv))
        return cipher.doFinal(ciphertext)
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

    companion object {
        private const val PREFERENCES_NAME = "bare_master_key"
        private const val KEY_MASTER_KEY = "encrypted_master_key"
        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val KEY_ALIAS = "bare_master_key_wrap"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
        private const val KEY_BYTES = 32
        private const val GCM_IV_BYTES = 12
        private const val GCM_TAG_BITS = 128
        private val secureRandom = java.security.SecureRandom()
    }
}
