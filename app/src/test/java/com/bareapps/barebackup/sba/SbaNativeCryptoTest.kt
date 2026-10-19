package com.bareapps.barebackup.sba

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Test

class SbaNativeCryptoTest {
    @Test
    fun derivesDeterministicOutputWithRequestedLength() {
        val password = "correct horse battery staple".toByteArray(Charsets.UTF_8)
        val salt = ByteArray(16) { it.toByte() }

        val first = SbaNativeCrypto.a.deriveArgon2id(
            password, salt, iterations = 2, memoryKiB = 16_384, parallelism = 1, outputLength = 32,
        )
        val second = SbaNativeCrypto.a.deriveArgon2id(
            password, salt, iterations = 2, memoryKiB = 16_384, parallelism = 1, outputLength = 32,
        )

        assertEquals(32, first.size)
        assertArrayEquals(first, second)
        assertArrayEquals(
            hexToBytes("7cfb910f4bd460566328e3bad06e93c339eea042b331c8215ee9b478f9851668"),
            first,
        )
    }

    @Test
    fun saltChangeChangesDerivedOutput() {
        val password = "password".toByteArray(Charsets.UTF_8)
        val firstSalt = ByteArray(16) { 1 }
        val secondSalt = ByteArray(16) { 2 }

        val first = SbaNativeCrypto.a.deriveArgon2id(password, firstSalt, 2, 16_384, 1, 32)
        val second = SbaNativeCrypto.a.deriveArgon2id(password, secondSalt, 2, 16_384, 1, 32)

        assertFalse(first.contentEquals(second))
    }

    private fun hexToBytes(value: String): ByteArray =
        value.chunked(2).map { it.toInt(16).toByte() }.toByteArray()

    @Test
    fun rejectsInvalidArgon2Parameters() {
        val password = byteArrayOf(1, 2, 3)
        val salt = ByteArray(16) { 1 }

        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 0, 16_384, 1, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 7, 1, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 16_384, 0, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            // 8 * parallelism overflows Int; validation must use a wider integer type.
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 16_384, Int.MAX_VALUE, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 16_384, 1, 15)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 16_384, 1, 129)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, ByteArray(7), 2, 16_384, 1, 32)
        }
    }
}
