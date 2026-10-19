package com.bareapps.barebackup.sba.internal.tar

import java.nio.file.Files
import java.nio.file.Path
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class UstarArchiveWriterTest {
    @Test
    fun writesHeaderPayloadPaddingAndTwoZeroEndBlocks() {
        val destination = Files.createTempFile("bare-ustar-", ".tar")
        try {
            val payload = byteArrayOf(1, 2, 3)
            UstarArchiveWriter.write(
                destination,
                listOf(UstarArchiveWriter.Entry("dir/file.bin", payload))
            )

            val archive = Files.readAllBytes(destination)
            assertEquals(2048, archive.size)
            assertEquals("file.bin", String(archive, 0, 8, Charsets.US_ASCII).trimEnd('\u0000'))
            assertEquals("dir", String(archive, 345, 3, Charsets.US_ASCII))
            assertEquals('0'.code.toByte(), archive[156])
            assertEquals(3L, parseOctal(archive, 124, 12))
            assertTrue(archive.copyOfRange(512, 515).contentEquals(payload))
            assertTrue(archive.copyOfRange(515, 1024).all { it == 0.toByte() })
            assertTrue(archive.copyOfRange(1024, 2048).all { it == 0.toByte() })

            val expectedChecksum = archive.copyOfRange(0, 512).mapIndexed { index, byte ->
                if (index in 148..155) 32 else byte.toInt() and 0xff
            }.sum()
            assertEquals(expectedChecksum.toLong(), parseOctal(archive, 148, 8))
        } finally {
            Files.deleteIfExists(destination)
        }
    }

    @Test
    fun splitsLongUstarPathIntoPrefixAndBaseName() {
        val destination = Files.createTempFile("bare-ustar-long-", ".tar")
        try {
            val name = "a".repeat(70) + "/" + "b".repeat(40)
            UstarArchiveWriter.write(destination, listOf(UstarArchiveWriter.Entry(name, byteArrayOf())))

            val archive = Files.readAllBytes(destination)
            assertEquals("a".repeat(70), String(archive, 345, 70, Charsets.US_ASCII))
            assertEquals("b".repeat(40), String(archive, 0, 40, Charsets.US_ASCII))
        } finally {
            Files.deleteIfExists(destination)
        }
    }

    @Test
    fun rejectsUnsafeAndUnrepresentablePathsBeforeCreatingOutput() {
        val destination = Files.createTempDirectory("bare-ustar-reject-").resolve("archive.tar")
        val unsafe = listOf("../escape", "/absolute", "a\\b", "a//b", "a/./b")
        try {
            unsafe.forEach { path ->
                var rejected = false
                try {
                    UstarArchiveWriter.write(destination, listOf(UstarArchiveWriter.Entry(path, byteArrayOf())))
                } catch (_: IllegalArgumentException) {
                    rejected = true
                }
                assertTrue("Expected path to be rejected: $path", rejected)
                assertFalse(Files.exists(destination))
            }

            val unrepresentable = "x".repeat(101)
            var rejected = false
            try {
                UstarArchiveWriter.write(destination, listOf(UstarArchiveWriter.Entry(unrepresentable, byteArrayOf())))
            } catch (_: IllegalArgumentException) {
                rejected = true
            }
            assertTrue(rejected)
            assertFalse(Files.exists(destination))
        } finally {
            Files.deleteIfExists(destination)
            Files.deleteIfExists(destination.parent)
        }
    }

    @Test
    fun writesValidEmptyArchiveAndReplacesDestinationOnlyAfterSuccess() {
        val directory = Files.createTempDirectory("bare-ustar-atomic-")
        val destination = directory.resolve("archive.tar")
        try {
            Files.write(destination, byteArrayOf(9, 8, 7))
            UstarArchiveWriter.write(destination, emptyList())
            val emptyArchive = Files.readAllBytes(destination)
            assertEquals(1024, emptyArchive.size)
            assertTrue(emptyArchive.all { it == 0.toByte() })

            val sentinel = byteArrayOf(4, 5, 6)
            Files.write(destination, sentinel)
            var rejected = false
            try {
                UstarArchiveWriter.write(
                    destination,
                    listOf(UstarArchiveWriter.Entry("../escape", byteArrayOf(1)))
                )
            } catch (_: IllegalArgumentException) {
                rejected = true
            }
            assertTrue(rejected)
            assertTrue(Files.readAllBytes(destination).contentEquals(sentinel))
            assertEquals(1L, Files.list(directory).use { it.count() })
        } finally {
            Files.deleteIfExists(destination)
            Files.deleteIfExists(directory)
        }
    }

    private fun parseOctal(bytes: ByteArray, offset: Int, length: Int): Long {
        val text = String(bytes, offset, length, Charsets.US_ASCII).trim('\u0000', ' ')
        return text.toLong(8)
    }
}
