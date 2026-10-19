package com.bareapps.barebackup.sba

import org.bouncycastle.crypto.generators.Argon2BytesGenerator
import org.bouncycastle.crypto.params.Argon2Parameters

/** Reference-compatible JNI surface for SBA Argon2id derivation. */
@androidx.annotation.Keep
class SbaNativeCrypto private constructor() {
    external fun deriveArgon2id(
        password: ByteArray,
        salt: ByteArray,
        iterations: Int,
        memoryKiB: Int,
        parallelism: Int,
        outputLength: Int,
    ): ByteArray

    companion object {
        @JvmField val a = SbaNativeCrypto()
        init { System.loadLibrary("sba_archive") }
    }
}

/** Pure Kotlin implementation used by the JNI adapter and host-side known-answer tests. */
@androidx.annotation.Keep
internal object SbaArgon2idPortable {
    @JvmStatic
    @androidx.annotation.Keep
    fun deriveArgon2id(
        password: ByteArray,
        salt: ByteArray,
        iterations: Int,
        memoryKiB: Int,
        parallelism: Int,
        outputLength: Int,
    ): ByteArray {
        require(salt.size >= 8) { "Argon2id salt must contain at least 8 bytes" }
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

}
