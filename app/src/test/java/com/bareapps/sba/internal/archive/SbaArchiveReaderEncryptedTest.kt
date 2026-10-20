package com.bareapps.sba.internal.archive

import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.util.zip.CRC32
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveReaderEncryptedTest {
    @Test
    fun parsesSyntheticTwoEntryV2Layout() {
        val root = Files.createTempDirectory("sba-synthetic-v2-layout")
        try {
            val path = root.resolve("synthetic-layout.sba")
            // Synthetic metadata and verifier fields keep this test independent of any real backup.
            val metadata = """{"fixture":"synthetic","encrypted":true,"entries":["alpha","beta"]}"""
                .padEnd(290, ' ')
                .toByteArray(StandardCharsets.UTF_8)
            val records = listOf(
                Triple("alpha", longArrayOf(144, 173, 136, 120, 1024), longArrayOf(3, 1, 2)),
                Triple("beta", longArrayOf(309, 337, 216, 200, 1536), longArrayOf(2, 1, 1)),
            )
            val indexOffset = 553L
            val index = ByteBuffer.allocate(
                16 + metadata.size + records.sumOf { 108 + it.first.toByteArray(StandardCharsets.UTF_8).size },
            ).order(ByteOrder.BIG_ENDIAN)
            index.put("SAI1".toByteArray(StandardCharsets.US_ASCII))
            index.putShort(16)
            index.putShort(2)
            index.putInt(records.size)
            index.putInt(metadata.size)
            index.put(metadata)
            records.forEach { (nameString, values, counts) ->
                val name = nameString.toByteArray(StandardCharsets.UTF_8)
                values.take(5).forEach { index.putLong(it) }
                index.putInt(23)
                index.putShort(name.size.toShort())
                index.putInt(0)
                index.putShort(0)
                index.put(ByteArray(32))
                counts.forEach { index.putLong(it) }
                index.put(name)
            }
            val indexBytes = index.array()
            val indexCrc = crc(indexBytes)
            val header = ByteBuffer.allocate(144).order(ByteOrder.BIG_ENDIAN)
            header.put("SBA1".toByteArray(StandardCharsets.US_ASCII))
            header.putShort(2)
            header.putShort(144)
            header.putInt(3)
            header.putLong(1700000000000L)
            header.putShort(1)
            header.putShort(1)
            header.putShort(4)
            header.putShort(1)
            header.putShort(3)
            header.putShort(16)
            header.putShort(16)
            header.putShort(16)
            header.put(ByteArray(16) { (0x40 + it).toByte() }) // synthetic key-check
            header.put(ByteArray(16) { (0x50 + it).toByte() }) // synthetic salt
            header.put(ByteArray(16) { (0x60 + it).toByte() }) // synthetic nonce seed
            header.putShort(0)
            header.putShort(0)
            header.putInt(4096)
            header.putInt(16384)
            header.putShort(1)
            header.putShort(1)
            header.putShort(32)
            header.putShort(1)
            header.put(ByteArray(32)) // Synthetic fixture intentionally omits the password-dependent index MAC.
            header.put(ByteArray(8))
            val footer = ByteBuffer.allocate(32).order(ByteOrder.BIG_ENDIAN)
            footer.put("SAF1".toByteArray(StandardCharsets.US_ASCII))
            footer.putShort(32)
            footer.putShort(2)
            footer.putLong(indexOffset)
            footer.putLong(indexBytes.size.toLong())
            footer.putInt(indexCrc)
            footer.putInt(crc(footer.array().copyOfRange(0, 28)))
            Files.newOutputStream(path).use { out ->
                out.write(header.array())
                out.write("SAE1".toByteArray(StandardCharsets.US_ASCII))
                out.write(ByteBuffer.allocate(20).order(ByteOrder.BIG_ENDIAN).apply {
                    putShort(24); putShort(0); putInt(23); putShort(5); putInt(0); put(ByteArray(6))
                }.array())
                out.write("alpha".toByteArray(StandardCharsets.UTF_8))
                out.write(ByteArray(136))
                out.write("SAE1".toByteArray(StandardCharsets.US_ASCII))
                out.write(ByteBuffer.allocate(20).order(ByteOrder.BIG_ENDIAN).apply {
                    putShort(24); putShort(0); putInt(23); putShort(4); putInt(0); put(ByteArray(6))
                }.array())
                out.write("beta".toByteArray(StandardCharsets.UTF_8))
                out.write(ByteArray(216))
                out.write(indexBytes)
                out.write(footer.array())
            }
            val parsed = SbaArchiveReader.read(path.toString())
            assertEquals(2, parsed.version)
            assertEquals(1116L, parsed.fileSize)
            assertEquals(553L, parsed.indexOffset)
            assertEquals(531L, parsed.indexSize)
            assertEquals(indexCrc, parsed.indexCrc32)
            assertEquals(ByteBuffer.wrap(footer.array()).order(ByteOrder.BIG_ENDIAN).getInt(28), parsed.footerCrc32)
            assertEquals(4, parsed.encryptionMethod)
            assertEquals(1, parsed.compressionMethod)
            assertEquals(1, parsed.kdfMethod)
            assertEquals(3, parsed.kdfIterations)
            assertEquals(16384, parsed.kdfMemoryKiB)
            assertEquals(1, parsed.kdfParallelism)
            assertEquals(4096, parsed.chunkSize)
            assertArrayEquals(ByteArray(16) { (0x40 + it).toByte() }, parsed.keyCheck)
            assertArrayEquals(ByteArray(16) { (0x50 + it).toByte() }, parsed.salt)
            assertArrayEquals(ByteArray(16) { (0x60 + it).toByte() }, parsed.nonceSeed)
            assertEquals(listOf("alpha", "beta"), parsed.entries.map { it.name })
            assertEquals(listOf(136L, 216L), parsed.entries.map { it.storedSize })
            assertEquals(listOf(3L, 2L), parsed.entries.map { it.tarEntryCount })
            assertEquals(listOf(1L, 1L), parsed.entries.map { it.regularFileCount })
            assertEquals(listOf(2L, 1L), parsed.entries.map { it.directoryCount })
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    @Test
    fun readsAegis256HeaderAndEncryptedEntryIndexWithoutTreatingCiphertextAsTar() {
        val root = Files.createTempDirectory("sba-aegis-index-test")
        try {
            val path = root.resolve("encrypted.sba")
            val name = "apps".toByteArray(StandardCharsets.UTF_8)
            val salt = ByteArray(16) { it.toByte() }
            val nonce = ByteArray(16) { (it + 16).toByte() }
            val keyCheck = hex("fe13ad2ca2dfe86c242fcae9b2f28f1e")
            val tarSize = 1024L
            val storedSize = tarSize + 16L
            val entryOffset = 96L
            val payloadOffset = entryOffset + 24L + name.size
            val indexOffset = payloadOffset + storedSize
            val index = ByteBuffer.allocate(16 + 2 + 84 + name.size).order(ByteOrder.BIG_ENDIAN)
            index.put("SAI1".toByteArray(StandardCharsets.US_ASCII))
            index.putShort(16)
            index.putShort(1)
            index.putInt(1)
            index.putInt(2)
            index.put("{}".toByteArray(StandardCharsets.UTF_8))
            index.putLong(entryOffset)
            index.putLong(payloadOffset)
            index.putLong(storedSize)
            index.putLong(tarSize)
            index.putLong(tarSize)
            index.putInt(21)
            index.putShort(name.size.toShort())
            index.putInt(0)
            index.putShort(0)
            index.put(ByteArray(32))
            index.put(name)
            val indexBytes = index.array()
            val indexCrc = crc(indexBytes)
            val header = ByteBuffer.allocate(96).order(ByteOrder.BIG_ENDIAN)
            header.put("SBA1".toByteArray(StandardCharsets.US_ASCII))
            header.putShort(1)
            header.putShort(96)
            header.putInt(2)
            header.putLong(0L)
            header.putShort(0)
            header.putShort(0)
            header.putShort(4)
            header.putShort(1)
            header.putShort(3)
            header.putShort(16)
            header.putShort(16)
            header.putShort(16)
            header.put(keyCheck)
            header.put(salt)
            header.put(nonce)
            header.putShort(0)
            header.putShort(0)
            header.putInt(4096)
            header.putInt(0)
            val entryHeader = ByteBuffer.allocate(24).order(ByteOrder.BIG_ENDIAN)
            entryHeader.put("SAE1".toByteArray(StandardCharsets.US_ASCII))
            entryHeader.putShort(24)
            entryHeader.putShort(0)
            entryHeader.putInt(21)
            entryHeader.putShort(name.size.toShort())
            entryHeader.putInt(0)
            entryHeader.put(ByteArray(6))
            val footer = ByteBuffer.allocate(32).order(ByteOrder.BIG_ENDIAN)
            footer.put("SAF1".toByteArray(StandardCharsets.US_ASCII))
            footer.putShort(32)
            footer.putShort(1)
            footer.putLong(indexOffset)
            footer.putLong(indexBytes.size.toLong())
            footer.putInt(indexCrc)
            footer.putInt(crc(footer.array().copyOfRange(0, 28)))

            Files.newOutputStream(path).use { out ->
                out.write(header.array())
                out.write(entryHeader.array())
                out.write(name)
                out.write(ByteArray(storedSize.toInt()))
                out.write(indexBytes)
                out.write(footer.array())
            }

            val parsed = SbaArchiveReader.read(path.toString())
            assertTrue(parsed.isEncrypted)
            assertEquals(4, parsed.encryptionMethod)
            assertEquals(1, parsed.kdfMethod)
            assertEquals(3, parsed.kdfIterations)
            assertEquals(16384, parsed.kdfMemoryKiB)
            assertEquals(1, parsed.kdfParallelism)
            assertEquals(4096, parsed.chunkSize)
            assertEquals(listOf("apps"), parsed.entries.map { it.name })
            assertEquals(storedSize, parsed.entries.single().storedSize)

            // The same AEAD chunk-size/tag framing is used by the reference AES-GCM and
            // AES-GCM-SIV modes; archive-info parsing must not misclassify them as AEGIS.
            for (method in 2..3) {
                val alternate = Files.readAllBytes(path)
                ByteBuffer.wrap(alternate).order(ByteOrder.BIG_ENDIAN).putShort(24, method.toShort())
                val alternatePath = root.resolve("encrypted-$method.sba")
                Files.write(alternatePath, alternate)
                val alternateInfo = SbaArchiveReader.read(alternatePath.toString())
                assertEquals(method, alternateInfo.encryptionMethod)
                assertEquals(21, alternateInfo.entries.single().flags)
                assertEquals(storedSize, alternateInfo.entries.single().storedSize)
            }

            val aesCbcPath = root.resolve("aes-cbc.sba")
            Files.write(aesCbcPath, convertAegisFixtureToAesCbc(Files.readAllBytes(path)))
            val aesCbcInfo = SbaArchiveReader.read(aesCbcPath.toString())
            assertEquals(1, aesCbcInfo.encryptionMethod)
            assertEquals(13, aesCbcInfo.entries.single().flags)
            assertEquals(tarSize, aesCbcInfo.entries.single().storedSize)
            assertArrayEquals(ByteArray(32) { 0x5a }, aesCbcInfo.entries.single().payloadHmac)

            val invalidGcm = Files.readAllBytes(root.resolve("encrypted-2.sba"))
            ByteBuffer.wrap(invalidGcm).order(ByteOrder.BIG_ENDIAN).putInt(88, 0)
            val invalidGcmPath = root.resolve("invalid-gcm-chunk.sba")
            Files.write(invalidGcmPath, invalidGcm)
            assertThrows(IOException::class.java) { SbaArchiveReader.read(invalidGcmPath.toString()) }

            val invalidCbc = Files.readAllBytes(aesCbcPath)
            ByteBuffer.wrap(invalidCbc).order(ByteOrder.BIG_ENDIAN).putShort(84, 0)
            val invalidCbcPath = root.resolve("invalid-aes-cbc-mac.sba")
            Files.write(invalidCbcPath, invalidCbc)
            assertThrows(IOException::class.java) { SbaArchiveReader.read(invalidCbcPath.toString()) }

            val invalidKdf = Files.readAllBytes(path)
            ByteBuffer.wrap(invalidKdf).order(ByteOrder.BIG_ENDIAN).putShort(28, 0)
            val invalidKdfPath = root.resolve("invalid-aegis-kdf.sba")
            Files.write(invalidKdfPath, invalidKdf)
            assertThrows(IOException::class.java) { SbaArchiveReader.read(invalidKdfPath.toString()) }
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }


    @Test
    fun parsesSanitizedReferenceObservedV2AegisArchiveLayout() {
        val root = Files.createTempDirectory("sba-reference-observed-v2")
        try {
            val path = root.resolve("reference-layout.sba")
            // Values below are taken from the structure of the user-provided SwiftBackup
            // 5.1.0 (620) com.bare.dat archive. Payload bytes, key material, metadata, and
            // index MAC are replaced with synthetic values; this is not a decrypt fixture.
            val metadata = """{"fixture":"reference-observed","encrypted":true,"entries":["data","data_de"]}"""
                .padEnd(290, ' ')
                .toByteArray(StandardCharsets.UTF_8)
            val records = listOf(
                Triple("data", longArrayOf(144, 172, 642, 626, 9728), longArrayOf(5, 2, 3)),
                Triple("data_de", longArrayOf(814, 845, 259, 243, 2560), longArrayOf(1, 0, 1)),
            )
            val index = ByteBuffer.allocate(533).order(ByteOrder.BIG_ENDIAN)
            index.put("SAI1".toByteArray(StandardCharsets.US_ASCII))
            index.putShort(16)
            index.putShort(2)
            index.putInt(2)
            index.putInt(metadata.size)
            index.put(metadata)
            records.forEach { (nameString, values, counts) ->
                val name = nameString.toByteArray(StandardCharsets.UTF_8)
                values.forEach { index.putLong(it) }
                index.putInt(23)
                index.putShort(name.size.toShort())
                index.putInt(0)
                index.putShort(0)
                index.put(ByteArray(32))
                counts.forEach { index.putLong(it) }
                index.put(name)
            }
            val indexBytes = index.array()
            val indexCrc = crc(indexBytes)

            val header = ByteBuffer.allocate(144).order(ByteOrder.BIG_ENDIAN)
            header.put("SBA1".toByteArray(StandardCharsets.US_ASCII))
            header.putShort(2)
            header.putShort(144)
            header.putInt(3)
            header.putLong(1789818238000L)
            header.putShort(1) // Zstandard
            header.putShort(1) // FASTEST
            header.putShort(4) // AEGIS-256
            header.putShort(1) // Argon2id
            header.putShort(3)
            header.putShort(16)
            header.putShort(16)
            header.putShort(16)
            header.put(ByteArray(16) { (it + 1).toByte() })
            header.put(ByteArray(16) { (it + 17).toByte() })
            header.put(ByteArray(16) { (it + 33).toByte() })
            header.putShort(0)
            header.putShort(0)
            header.putInt(1 shl 20)
            header.putInt(16384)
            header.putShort(1)
            header.putShort(1)
            header.putShort(32)
            header.putShort(1)
            header.put(ByteArray(32) { (it + 65).toByte() }) // synthetic v2 index MAC
            header.put(ByteArray(8))

            val output = java.io.ByteArrayOutputStream()
            output.write(header.array())
            records.forEach { (nameString, values, _) ->
                val name = nameString.toByteArray(StandardCharsets.UTF_8)
                val entryHeader = ByteBuffer.allocate(24).order(ByteOrder.BIG_ENDIAN)
                entryHeader.put("SAE1".toByteArray(StandardCharsets.US_ASCII))
                entryHeader.putShort(24)
                entryHeader.putShort(0)
                entryHeader.putInt(23)
                entryHeader.putShort(name.size.toShort())
                entryHeader.putInt(0)
                entryHeader.put(ByteArray(6))
                output.write(entryHeader.array())
                output.write(name)
                output.write(ByteArray(values[2].toInt()))
            }
            assertEquals(1104, output.size())
            output.write(indexBytes)
            val footer = ByteBuffer.allocate(32).order(ByteOrder.BIG_ENDIAN)
            footer.put("SAF1".toByteArray(StandardCharsets.US_ASCII))
            footer.putShort(32)
            footer.putShort(2)
            footer.putLong(1104L)
            footer.putLong(indexBytes.size.toLong())
            footer.putInt(indexCrc)
            footer.putInt(crc(footer.array().copyOfRange(0, 28)))
            output.write(footer.array())
            Files.write(path, output.toByteArray())

            val parsed = SbaArchiveReader.read(path.toString())
            assertEquals(1669L, parsed.fileSize)
            assertEquals(1104L, parsed.indexOffset)
            assertEquals(533L, parsed.indexSize)
            assertEquals(1048576, parsed.chunkSize)
            assertEquals(16384, parsed.kdfMemoryKiB)
            assertEquals(1, parsed.kdfParallelism)
            assertArrayEquals(ByteArray(32) { (it + 65).toByte() }, parsed.indexMac)
            assertEquals(listOf("data", "data_de"), parsed.entries.map { it.name })
            assertEquals(listOf(642L, 259L), parsed.entries.map { it.storedSize })
            assertEquals(listOf(626L, 243L), parsed.entries.map { it.compressedSize })
            assertEquals(listOf(9728L, 2560L), parsed.entries.map { it.tarSize })
            assertEquals(listOf(5L, 1L), parsed.entries.map { it.tarEntryCount })
            assertEquals(listOf(2L, 0L), parsed.entries.map { it.regularFileCount })
            assertEquals(listOf(3L, 1L), parsed.entries.map { it.directoryCount })
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    private fun convertAegisFixtureToAesCbc(source: ByteArray): ByteArray {
        val footerOffset = source.size - 32
        val oldIndexOffset = ByteBuffer.wrap(source, footerOffset + 8, 8).order(ByteOrder.BIG_ENDIAN).long.toInt()
        val indexSize = ByteBuffer.wrap(source, footerOffset + 16, 8).order(ByteOrder.BIG_ENDIAN).long.toInt()
        val payloadOffset = 96 + 24 + 4
        val storedSize = 1024
        val newIndexOffset = payloadOffset + storedSize
        val index = source.copyOfRange(oldIndexOffset, oldIndexOffset + indexSize)
        val recordOffset = 16 + 2 // 16-byte index header + two-byte metadata "{}"
        ByteBuffer.wrap(index).order(ByteOrder.BIG_ENDIAN).putLong(recordOffset + 16, storedSize.toLong())
        ByteBuffer.wrap(index).order(ByteOrder.BIG_ENDIAN).putInt(recordOffset + 40, 13)
        index.fill(0x5a.toByte(), recordOffset + 52, recordOffset + 84) // AES-CBC compatibility entry HMAC.
        val indexCrc = crc(index)

        val header = source.copyOfRange(0, 96)
        ByteBuffer.wrap(header).order(ByteOrder.BIG_ENDIAN).putShort(24, 1)
        ByteBuffer.wrap(header).order(ByteOrder.BIG_ENDIAN).putShort(84, 1)
        ByteBuffer.wrap(header).order(ByteOrder.BIG_ENDIAN).putShort(86, 32)
        ByteBuffer.wrap(header).order(ByteOrder.BIG_ENDIAN).putInt(88, 0)
        val entryHeader = source.copyOfRange(96, 120)
        ByteBuffer.wrap(entryHeader).order(ByteOrder.BIG_ENDIAN).putInt(8, 13)
        val name = source.copyOfRange(120, payloadOffset)
        val payload = source.copyOfRange(payloadOffset, payloadOffset + storedSize)
        val footer = ByteBuffer.allocate(32).order(ByteOrder.BIG_ENDIAN)
        footer.put("SAF1".toByteArray(StandardCharsets.US_ASCII))
        footer.putShort(32)
        footer.putShort(1)
        footer.putLong(newIndexOffset.toLong())
        footer.putLong(index.size.toLong())
        footer.putInt(indexCrc)
        footer.putInt(crc(footer.array().copyOfRange(0, 28)))
        return java.io.ByteArrayOutputStream().apply {
            write(header); write(entryHeader); write(name); write(payload); write(index); write(footer.array())
        }.toByteArray()
    }

    private fun crc(bytes: ByteArray): Int = CRC32().apply { update(bytes) }.value.toInt()

    private fun hex(value: String): ByteArray =
        value.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
}
