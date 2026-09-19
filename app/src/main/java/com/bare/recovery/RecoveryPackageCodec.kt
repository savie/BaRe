package com.bare.recovery

import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.DataInputStream
import java.io.DataOutputStream
import java.security.SecureRandom
import javax.crypto.Cipher
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.PBEKeySpec
import javax.crypto.spec.SecretKeySpec

/** Versioned encrypted recovery container. Identity data never appears in the cleartext header. */
object RecoveryPackageCodec {
    private val MAGIC = byteArrayOf('B'.code.toByte(), 'R'.code.toByte(), 'E'.code.toByte(), 'C'.code.toByte())
    private const val VERSION = 1
    private const val KDF_PBKDF2_SHA256 = 1
    private const val ITERATIONS = 310_000
    private const val SALT_BYTES = 16
    private const val NONCE_BYTES = 12
    private const val KEY_BITS = 256
    private const val GCM_TAG_BITS = 128
    private const val MAX_PAYLOAD_BYTES = 64 * 1024

    data class Payload(
        val identityId: String,
        val type: String,
        val setupComplete: Boolean,
        val accessMethod: String?,
    )

    fun encode(payload: Payload, password: CharArray, random: SecureRandom = SecureRandom()): ByteArray {
        require(payload.identityId.isNotBlank()) { "identityId is required" }
        require(payload.type == "LOCAL") { "only LOCAL identity can be exported" }
        require(password.isNotEmpty()) { "recovery password is required" }

        val plain = serialize(payload)
        require(plain.size <= MAX_PAYLOAD_BYTES) { "recovery payload too large" }

        val salt = ByteArray(SALT_BYTES).also(random::nextBytes)
        val nonce = ByteArray(NONCE_BYTES).also(random::nextBytes)
        val key = deriveKey(password, salt)

        val header = header(VERSION, KDF_PBKDF2_SHA256, ITERATIONS, salt, nonce)
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.ENCRYPT_MODE, key, GCMParameterSpec(GCM_TAG_BITS, nonce))
        cipher.updateAAD(header)
        val ciphertext = cipher.doFinal(plain)

        return ByteArrayOutputStream().use { output ->
            DataOutputStream(output).use { data ->
                data.write(header)
                data.writeInt(ciphertext.size)
                data.write(ciphertext)
            }
            output.toByteArray()
        }
    }

    fun decode(bytes: ByteArray, password: CharArray): Payload {
        require(password.isNotEmpty()) { "recovery password is required" }

        DataInputStream(ByteArrayInputStream(bytes)).use { input ->
            val magic = ByteArray(MAGIC.size)
            input.readFully(magic)
            require(magic.contentEquals(MAGIC)) { "invalid BaRe recovery package" }

            val version = input.readUnsignedByte()
            require(version == VERSION) { "unsupported recovery package version: $version" }

            val kdf = input.readUnsignedByte()
            require(kdf == KDF_PBKDF2_SHA256) { "unsupported recovery KDF: $kdf" }

            val iterations = input.readInt()
            require(iterations in 100_000..1_000_000) { "invalid recovery KDF parameters" }

            val saltLength = input.readUnsignedByte()
            val nonceLength = input.readUnsignedByte()
            require(saltLength == SALT_BYTES && nonceLength == NONCE_BYTES) {
                "invalid recovery parameters"
            }

            val salt = ByteArray(saltLength).also(input::readFully)
            val nonce = ByteArray(nonceLength).also(input::readFully)
            val ciphertextLength = input.readInt()
            require(ciphertextLength in (GCM_TAG_BITS / 8)..(MAX_PAYLOAD_BYTES + GCM_TAG_BITS / 8)) {
                "invalid recovery payload length"
            }
            val ciphertext = ByteArray(ciphertextLength).also(input::readFully)
            require(input.read() == -1) { "trailing recovery package data" }

            val key = deriveKey(password, salt, iterations)
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            cipher.init(Cipher.DECRYPT_MODE, key, GCMParameterSpec(GCM_TAG_BITS, nonce))
            cipher.updateAAD(header(version, kdf, iterations, salt, nonce))
            return deserialize(cipher.doFinal(ciphertext))
        }
    }

    private fun header(
        version: Int,
        kdf: Int,
        iterations: Int,
        salt: ByteArray,
        nonce: ByteArray,
    ): ByteArray = ByteArrayOutputStream().use { output ->
        DataOutputStream(output).use { data ->
            data.write(MAGIC)
            data.writeByte(version)
            data.writeByte(kdf)
            data.writeInt(iterations)
            data.writeByte(salt.size)
            data.writeByte(nonce.size)
            data.write(salt)
            data.write(nonce)
        }
        output.toByteArray()
    }

    private fun serialize(payload: Payload): ByteArray = ByteArrayOutputStream().use { output ->
        DataOutputStream(output).use { data ->
            data.writeUTF(payload.identityId)
            data.writeUTF(payload.type)
            data.writeBoolean(payload.setupComplete)
            data.writeBoolean(payload.accessMethod != null)
            payload.accessMethod?.let(data::writeUTF)
        }
        output.toByteArray()
    }

    private fun deserialize(bytes: ByteArray): Payload = DataInputStream(ByteArrayInputStream(bytes)).use { input ->
        val payload = Payload(
            identityId = input.readUTF(),
            type = input.readUTF(),
            setupComplete = input.readBoolean(),
            accessMethod = if (input.readBoolean()) input.readUTF() else null,
        )
        require(input.read() == -1) { "invalid recovery payload" }
        require(payload.identityId.isNotBlank() && payload.type == "LOCAL") {
            "invalid LOCAL recovery payload"
        }
        payload
    }

    private fun deriveKey(
        password: CharArray,
        salt: ByteArray,
        iterations: Int = ITERATIONS,
    ): SecretKeySpec {
        val spec = PBEKeySpec(password, salt, iterations, KEY_BITS)
        return try {
            val bytes = SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
                .generateSecret(spec)
                .encoded
            SecretKeySpec(bytes, "AES")
        } finally {
            spec.clearPassword()
        }
    }
}
