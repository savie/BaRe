package com.bare.feature.account

import android.content.Context
import java.security.MessageDigest
import java.security.SecureRandom
import java.util.Base64

/**
 * v1.0 local Account credential boundary.
 *
 * Authentication is local-only. Password material is never persisted in
 * plaintext; only a random salt and PBKDF2-derived verifier are stored.
 * This does not establish a cloud session or provider connection.
 */
class LocalAccountRepository(context: Context) {
    private val database = AccountLocalDatabase(context)
    private val random = SecureRandom()

    fun register(accountId: String, email: String, password: CharArray): Boolean {
        require(accountId.isNotBlank())
        require(email.isNotBlank())
        require(password.isNotEmpty())
        val salt = ByteArray(SALT_BYTES).also(random::nextBytes)
        val verifier = derive(password, salt)
        return runCatching {
            database.writableDatabase.execSQL(
                """
                INSERT INTO accounts(account_id, email, provider, active, password_salt, password_verifier)
                VALUES (?, ?, 'LOCAL', 1, ?, ?)
                """.trimIndent(),
                arrayOf(accountId, email.trim(), salt.toB64(), verifier.toB64()),
            )
            true
        }.getOrDefault(false).also {
            password.fill('\u0000')
        }
    }

    fun signIn(email: String, password: CharArray): Boolean {
        require(email.isNotBlank())
        val result = runCatching {
            database.readableDatabase.rawQuery(
                "SELECT account_id, password_salt, password_verifier FROM accounts WHERE lower(email) = lower(?) LIMIT 1",
                arrayOf(email.trim()),
            ).use { cursor ->
                if (!cursor.moveToFirst()) return@use false
                val salt = cursor.getString(1).fromB64()
                val expected = cursor.getString(2).fromB64()
                MessageDigest.isEqual(derive(password, salt), expected)
            }
        }.getOrDefault(false)
        password.fill('\u0000')
        if (result) {
            database.writableDatabase.execSQL("UPDATE accounts SET active = 0")
            database.writableDatabase.execSQL(
                "UPDATE accounts SET active = 1 WHERE lower(email) = lower(?)",
                arrayOf(email.trim()),
            )
        }
        return result
    }

    fun signOut() {
        database.writableDatabase.execSQL("UPDATE accounts SET active = 0")
    }

    fun activeAccount(): AccountRecord? {
        database.readableDatabase.rawQuery(
            "SELECT account_id, email, provider FROM accounts WHERE active = 1 LIMIT 1",
            emptyArray(),
        ).use { cursor ->
            if (!cursor.moveToFirst()) return null
            return AccountRecord(cursor.getString(0), cursor.getString(1), cursor.getString(2))
        }
    }

    private fun derive(password: CharArray, salt: ByteArray): ByteArray {
        val spec = javax.crypto.spec.PBEKeySpec(password, salt, ITERATIONS, KEY_BITS)
        return try {
            javax.crypto.SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
                .generateSecret(spec).encoded
        } finally {
            spec.clearPassword()
        }
    }

    data class AccountRecord(
        val accountId: String,
        val email: String,
        val provider: String,
    )

    companion object {
        private const val SALT_BYTES = 16
        private const val ITERATIONS = 120_000
        private const val KEY_BITS = 256

        private fun ByteArray.toB64(): String = Base64.getEncoder().encodeToString(this)
        private fun String.fromB64(): ByteArray = Base64.getDecoder().decode(this)
    }
}
