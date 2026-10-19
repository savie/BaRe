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
            password, salt, iterations = 2, memoryKiB = 32, parallelism = 1, outputLength = 32,
        )
        val second = SbaNativeCrypto.a.deriveArgon2id(
            password, salt, iterations = 2, memoryKiB = 32, parallelism = 1, outputLength = 32,
        )

        assertEquals(32, first.size)
        assertArrayEquals(first, second)
    }

    @Test
    fun saltChangeChangesDerivedOutput() {
        val password = "password".toByteArray(Charsets.UTF_8)
        val firstSalt = ByteArray(16) { 1 }
        val secondSalt = ByteArray(16) { 2 }

        val first = SbaNativeCrypto.a.deriveArgon2id(password, firstSalt, 2, 32, 1, 32)
        val second = SbaNativeCrypto.a.deriveArgon2id(password, secondSalt, 2, 32, 1, 32)

        assertFalse(first.contentEquals(second))
    }

    @Test
    fun rejectsInvalidArgon2Parameters() {
        val password = byteArrayOf(1, 2, 3)
        val salt = ByteArray(16) { 1 }

        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 0, 32, 1, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 7, 1, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 32, 0, 32)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, salt, 2, 32, 1, 15)
        }
        assertThrows(IllegalArgumentException::class.java) {
            SbaNativeCrypto.a.deriveArgon2id(password, ByteArray(7), 2, 32, 1, 32)
        }
    }
}
