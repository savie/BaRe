package com.bareapps.barebackup.sba

import org.bouncycastle.crypto.generators.Argon2BytesGenerator
import org.bouncycastle.crypto.params.Argon2Parameters

/**
 * Argon2id key derivation used by the SBA archive pipeline.
 *
 * The parameter order intentionally matches the reference JNI contract:
 * iterations, memory in KiB, parallelism, and output length in bytes.
 */
class SbaNativeCrypto private constructor() {
    fun deriveArgon2id(
        password: ByteArray,
        salt: ByteArray,
        iterations: Int,
        memoryKiB: Int,
        parallelism: Int,
        outputLength: Int,
    ): ByteArray {
        require(password.isNotEmpty()) { "SBA encryption password must not be empty" }
        require(salt.size == 16) { "SBA Argon2id salt must be 16 bytes" }
        require(iterations in 1..100) { "SBA Argon2id iterations out of range: $iterations" }
        require(memoryKiB in 16_384..65_536) {
            "SBA Argon2id memoryKiB out of range: $memoryKiB"
        }
        require(parallelism in 1..8) {
            "SBA Argon2id parallelism out of range: $parallelism"
        }
        require(outputLength in 16..128) {
            "SBA Argon2id outputBytes must be in 16..128: $outputLength"
        }

        val parameters = Argon2Parameters.Builder(Argon2Parameters.ARGON2_id)
            .withSalt(salt)
            .withIterations(iterations)
            .withMemoryAsKB(memoryKiB)
            .withParallelism(parallelism)
            .build()
        val generator = Argon2BytesGenerator()
        generator.init(parameters)
        return ByteArray(outputLength).also { output ->
            generator.generateBytes(password, output)
        }
    }

    companion object {
        @JvmField val a = SbaNativeCrypto()
    }
}
