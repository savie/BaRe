package com.bare.feature.settings

import android.content.Context
import android.util.Base64
import org.json.JSONArray
import java.nio.charset.StandardCharsets
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey

enum class EncryptionPasswordStrategy {
    STANDARD,
    ADVANCED,
}

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

    fun hasActivePassword(): Boolean = preferences.contains(KEY_ACTIVE_PASSWORD)

    fun saveActivePassword(password: CharArray) {
        preferences.edit().putString(KEY_ACTIVE_PASSWORD, encrypt(password.concatToString())).apply()
    }

    fun addOldPassword(password: CharArray) {
        val values = loadOldPasswordBlobs().toMutableList()
        values += encrypt(password.concatToString())
        preferences.edit().putString(KEY_OLD_PASSWORDS, JSONArray(values).toString()).apply()
    }

    fun oldPasswordCount(): Int = loadOldPasswordBlobs().size

    private fun loadOldPasswordBlobs(): List<String> {
        val raw = preferences.getString(KEY_OLD_PASSWORDS, null) ?: return emptyList()
        return runCatching {
            val array = JSONArray(raw)
            buildList(array.length()) {
                for (index in 0 until array.length()) {
                    add(array.getString(index))
                }
            }
        }.getOrDefault(emptyList())
    }

    private fun encrypt(value: String): String {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, getOrCreateKey())
        val ciphertext = cipher.doFinal(value.toByteArray(StandardCharsets.UTF_8))
        val payload = ByteArray(cipher.iv.size + ciphertext.size)
        System.arraycopy(cipher.iv, 0, payload, 0, cipher.iv.size)
        System.arraycopy(ciphertext, 0, payload, cipher.iv.size, ciphertext.size)
        return Base64.encodeToString(payload, Base64.NO_WRAP)
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
        private const val PREFERENCES_NAME = "bare_encryption_passwords"
        private const val KEY_STRATEGY = "strategy"
        private const val KEY_ACTIVE_PASSWORD = "active_password"
        private const val KEY_OLD_PASSWORDS = "old_passwords"
        private const val ANDROID_KEYSTORE = "AndroidKeyStore"
        private const val KEY_ALIAS = "bare_encryption_password_key"
        private const val TRANSFORMATION = "AES/GCM/NoPadding"
    }
}
