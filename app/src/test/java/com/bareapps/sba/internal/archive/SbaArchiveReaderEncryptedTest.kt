package com.bareapps.sba.internal.archive

import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.util.zip.CRC32
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveReaderEncryptedTest {
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
