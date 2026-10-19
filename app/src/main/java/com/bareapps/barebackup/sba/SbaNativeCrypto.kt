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
        require(iterations > 0) { "iterations must be positive" }
        require(memoryKiB >= 8 * parallelism && parallelism > 0) {
            "memoryKiB must be at least 8 KiB per lane and parallelism must be positive"
        }
        // The reference native implementation rejects output sizes outside 16..128 bytes.
        require(outputLength in 16..128) { "Argon2id outputBytes must be in 16..128" }
        require(salt.size >= 8) { "Argon2 salt must be at least 8 bytes" }

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
        init { System.loadLibrary("sba_archive") }
    }
}
