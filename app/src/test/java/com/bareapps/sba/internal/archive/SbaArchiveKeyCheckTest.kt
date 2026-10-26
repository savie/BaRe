package com.bareapps.sba.internal.archive

import java.io.IOException
import java.util.Arrays
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.assertThrows
import org.junit.Test

class SbaArchiveKeyCheckTest {
    @Test
    fun matchesReferenceAegis256KeyCheckVector() {
        val info = info(
            method = 4,
            keyCheck = hex("fe13ad2ca2dfe86c242fcae9b2f28f1e"),
        )
        assertTrue(SbaArchiveKeyCheck.verify(info, "correct horse battery staple".toCharArray()))
        assertFalse(SbaArchiveKeyCheck.verify(info, "incorrect password".toCharArray()))
    }

    @Test
    fun verifiesCallerSuppliedKeyAndRejectsWrongKey() {
        val info = info(4, hex("fe13ad2ca2dfe86c242fcae9b2f28f1e"))
        val key = SbaArchiveKeyCheck.deriveVerifiedKey(info, "correct horse battery staple".toCharArray())!!
        try {
            SbaArchiveKeyCheck.verifyProvidedKey(info, key, "")
            assertThrows(IOException::class.java) {
                SbaArchiveKeyCheck.verifyProvidedKey(info, ByteArray(32), "")
            }
        } finally {
            Arrays.fill(key, 0)
        }
    }

    @Test
    fun matchesReferenceAegis128X2KeyCheckVector() {
        val info = info(
            method = 5,
            keyCheck = hex("8b4129de1d21dd106415b9f130f35f6c"),
        )
        assertTrue(SbaArchiveKeyCheck.verify(info, "correct horse battery staple".toCharArray()))
        assertFalse(SbaArchiveKeyCheck.verify(info, "incorrect password".toCharArray()))
    }

    private fun info(method: Int, keyCheck: ByteArray) = SbaArchiveInfo(
        version = 1,
        createdAtMillis = 0,
        compressionMethod = 0,
        compressionLevel = 0,
        metadata = ByteArray(0),
        entries = emptyList(),
        fileSize = 0,
        indexOffset = 0,
        indexSize = 0,
        encryptionMethod = method,
        kdfMethod = 1,
        kdfIterations = 3,
        keyCheck = keyCheck,
        salt = ByteArray(16) { it.toByte() },
        nonceSeed = ByteArray(16) { (it + 16).toByte() },
        chunkSize = 4096,
        kdfMemoryKiB = 16384,
        kdfParallelism = 1,
    )

    private fun hex(value: String): ByteArray =
        value.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
}
