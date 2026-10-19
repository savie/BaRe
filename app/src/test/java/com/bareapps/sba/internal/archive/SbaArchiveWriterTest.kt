package com.bareapps.sba.internal.archive

import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.io.IOException
import java.util.zip.CRC32
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveWriterTest {
    @Test
    fun writesValidUnencryptedSbaV1WithTARPayloadAndChecksummedFooter() {
        val root = Files.createTempDirectory("sba-writer-test")
        try {
            val source = Files.createDirectory(root.resolve("source"))
            Files.write(source.resolve("data.txt"), byteArrayOf(1, 2, 3))
            val destination = root.resolve("backup.sba")
            val metadata = "{}".toByteArray(StandardCharsets.UTF_8)

            val stats = SbaArchiveWriter.createArchive(
                1, destination.toString(), metadata,
                arrayOf(source.toString()), arrayOf("data"), intArrayOf(8),
                arrayOf(emptyArray<String>()), arrayOf(emptyArray<String>()),
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                null, null, null, null, null,
            )

            val bytes = Files.readAllBytes(destination)
            assertArrayEquals("SBA1".toByteArray(StandardCharsets.US_ASCII), bytes.copyOfRange(0, 4))
            assertEquals(1, ByteBuffer.wrap(bytes, 4, 2).order(ByteOrder.BIG_ENDIAN).short.toInt())
            assertEquals(bytes.size.toLong(), stats[0])
            assertEquals("SAI1", String(bytes, stats[1].toInt(), 4, StandardCharsets.US_ASCII))
            assertEquals(stats[2], (bytes.size - stats[1] - 32).toLong())
            assertEquals("SAF1", String(bytes, bytes.size - 32, 4, StandardCharsets.US_ASCII))
            val parsed = SbaArchiveReader.read(destination.toString())
            assertEquals(1, parsed.version)
            assertArrayEquals(metadata, parsed.metadata)
            assertEquals(listOf("data"), parsed.entries.map { it.name })
            assertEquals(stats[1], parsed.indexOffset)
            assertEquals(stats[2], parsed.indexSize)

            val footer = bytes.copyOfRange(bytes.size - 32, bytes.size)
            val expectedCrc = ByteBuffer.wrap(footer, 28, 4).order(ByteOrder.BIG_ENDIAN).int
            val actualCrc = CRC32().apply { update(footer, 0, 28) }.value.toInt()
            assertEquals(expectedCrc, actualCrc)

            val entryHeaderOffset = 96
            assertEquals("SAE1", String(bytes, entryHeaderOffset, 4, StandardCharsets.US_ASCII))
            val nameLength = ByteBuffer.wrap(bytes, entryHeaderOffset + 12, 2).order(ByteOrder.BIG_ENDIAN).short.toInt() and 0xffff
            var payloadOffset = entryHeaderOffset + 24 + nameLength
            // PAX mtime may precede the first real TAR header when the filesystem
            // reports sub-second timestamps. Skip valid extension records.
            while (payloadOffset + 512 <= bytes.size) {
                val tarType = bytes[payloadOffset + 156].toInt().toChar()
                if (tarType != 'x' && tarType != 'g' && tarType != 'L' && tarType != 'K') break
                var size = 0L
                for (i in payloadOffset + 124 until payloadOffset + 136) {
                    val ch = bytes[i].toInt().toChar()
                    if (ch == '\u0000' || ch == ' ') continue
                    if (ch !in '0'..'7') throw AssertionError("Invalid TAR extension size")
                    size = (size shl 3) + (ch.code - '0'.code)
                }
                payloadOffset += 512 + (((size + 511) / 512) * 512).toInt()
            }
            assertEquals("source", String(bytes, payloadOffset, 6, StandardCharsets.US_ASCII))
            assertTrue(bytes.size > payloadOffset + 1024)
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    @Test
    fun appliesIncludeExcludeFlagsAndKeepsParentDirectories() {
        val root = Files.createTempDirectory("sba-filter-test")
        try {
            val source = Files.createDirectory(root.resolve("source"))
            val nested = Files.createDirectory(source.resolve("nested"))
            Files.write(nested.resolve("keep.txt"), byteArrayOf(1))
            Files.write(nested.resolve("skip.txt"), byteArrayOf(2))
            Files.write(source.resolve("other.txt"), byteArrayOf(3))
            val destination = root.resolve("filtered.sba")

            SbaArchiveWriter.createArchive(
                1, destination.toString(), "{}".toByteArray(StandardCharsets.UTF_8),
                arrayOf(source.toString()), arrayOf("data"), intArrayOf(8 or 1 or 4),
                arrayOf(arrayOf("nested/keep.txt")), arrayOf(arrayOf("nested/skip.txt")),
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null,
            )

            val info = SbaArchiveReader.read(destination.toString())
            val entry = info.entries.single()
            val archive = Files.readAllBytes(destination)
            val tar = archive.copyOfRange(
                entry.payloadOffset.toInt(),
                (entry.payloadOffset + entry.tarSize).toInt(),
            )
            val names = readTarNames(tar)
            assertTrue(names.contains("source"))
            assertTrue(names.contains("source/nested"))
            assertTrue(names.contains("source/nested/keep.txt"))
            assertTrue(!names.contains("source/nested/skip.txt"))
            assertTrue(!names.contains("source/other.txt"))
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    @Test
    fun writesAndReadsZstandardCompressedSbaEntry() {
        val root = Files.createTempDirectory("sba-zstd-test")
        try {
            val source = Files.createDirectory(root.resolve("source"))
            Files.write(source.resolve("payload.bin"), ByteArray(4097) { (it % 251).toByte() })
            val destination = root.resolve("compressed.sba")
            val stats = SbaArchiveWriter.createArchive(
                1, destination.toString(), "{}".toByteArray(StandardCharsets.UTF_8),
                arrayOf(source.toString()), arrayOf("data"), intArrayOf(8),
                arrayOf(emptyArray<String>()), arrayOf(emptyArray<String>()),
                1, 3, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null,
            )
            val parsed = SbaArchiveReader.read(destination.toString())
            assertEquals(1, parsed.compressionMethod)
            assertEquals(3, parsed.compressionLevel)
            assertEquals(stats[0], Files.size(destination))
            assertEquals(1, parsed.entries.size)
            assertTrue(parsed.entries.single().compressedSize < parsed.entries.single().tarSize)
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    @Test
    fun writesPaxHeaderForPathsLongerThanUstarLimit() {
        val root = Files.createTempDirectory("sba-pax-test")
        try {
            val source = Files.createDirectory(root.resolve("source"))
            val longPath = source.resolve("a".repeat(90)).resolve("b".repeat(90)).resolve("c".repeat(90))
            Files.createDirectories(longPath)
            Files.write(longPath.resolve("payload.txt"), "ok".toByteArray(StandardCharsets.UTF_8))
            val destination = root.resolve("pax.sba")
            SbaArchiveWriter.createArchive(
                1, destination.toString(), "{}".toByteArray(StandardCharsets.UTF_8),
                arrayOf(source.toString()), arrayOf("data"), intArrayOf(8),
                arrayOf(emptyArray<String>()), arrayOf(emptyArray<String>()),
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null,
            )
            val info = SbaArchiveReader.read(destination.toString())
            val archive = Files.readAllBytes(destination)
            val entry = info.entries.single()
            val tar = archive.copyOfRange(entry.payloadOffset.toInt(), (entry.payloadOffset + entry.tarSize).toInt())
            var offset = 0
            var foundPax = false
            while (offset + 512 <= tar.size) {
                if (tar[offset + 156] == 'x'.code.toByte()) foundPax = true
                if (tar[offset] == 0.toByte()) break
                offset += 512
            }
            assertTrue("Expected a POSIX PAX extension header for the long path", foundPax)
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    @Test
    fun rejectsArchiveWithCorruptedFooterCrc() {
        val root = Files.createTempDirectory("sba-corruption-test")
        try {
            val source = Files.createDirectory(root.resolve("source"))
            Files.write(source.resolve("payload.bin"), byteArrayOf(1, 2, 3))
            val destination = root.resolve("valid.sba")
            SbaArchiveWriter.createArchive(
                1, destination.toString(), "{}".toByteArray(StandardCharsets.UTF_8),
                arrayOf(source.toString()), arrayOf("data"), intArrayOf(0),
                arrayOf(emptyArray<String>()), arrayOf(emptyArray<String>()),
                0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, null,
            )
            val bytes = Files.readAllBytes(destination)
            bytes[bytes.lastIndex] = (bytes.last().toInt() xor 1).toByte()
            val corrupt = root.resolve("corrupt.sba")
            Files.write(corrupt, bytes)
            assertThrows(IOException::class.java) { SbaArchiveReader.read(corrupt.toString()) }
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    private fun readTarNames(tar: ByteArray): Set<String> {
        val names = linkedSetOf<String>()
        var offset = 0
        while (offset + 512 <= tar.size) {
            if (tar[offset] == 0.toByte()) break
            val type = tar[offset + 156].toInt().toChar()
            val nameEnd = (offset until offset + 100).firstOrNull { tar[it] == 0.toByte() } ?: (offset + 100)
            val name = String(tar, offset, nameEnd - offset, StandardCharsets.UTF_8)
            val size = parseTarOctal(tar, offset + 124, 12)
            if (type != 'x' && type != 'g' && type != 'L' && type != 'K') names.add(name)
            offset += 512 + (((size + 511) / 512) * 512).toInt()
        }
        return names
    }

    private fun parseTarOctal(bytes: ByteArray, start: Int, length: Int): Long {
        var value = 0L
        for (i in start until start + length) {
            val ch = bytes[i].toInt().toChar()
            if (ch == '\u0000' || ch == ' ') continue
            if (ch !in '0'..'7') throw AssertionError("Invalid TAR octal value")
            value = (value shl 3) + (ch.code - '0'.code)
        }
        return value
    }

    @Test
    fun rejectsEncryptedModeWithoutReplacingExistingDestination() {
        val root = Files.createTempDirectory("sba-writer-test")
        try {
            val destination = root.resolve("existing.sba")
            val sentinel = byteArrayOf(9, 8, 7)
            Files.write(destination, sentinel)
            try {
                SbaArchiveWriter.createArchive(
                    2, destination.toString(), byteArrayOf(), emptyArray(), emptyArray(), intArrayOf(),
                    emptyArray(), emptyArray(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                    null, null, null, null, null,
                )
                throw AssertionError("encrypted mode should be rejected by the unencrypted writer")
            } catch (_: IllegalArgumentException) {
                assertArrayEquals(sentinel, Files.readAllBytes(destination))
            }
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder()).forEach { Files.deleteIfExists(it) }
        }
    }
}
