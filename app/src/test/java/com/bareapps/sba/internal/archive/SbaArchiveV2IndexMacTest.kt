package com.bareapps.sba.internal.archive

import com.bareapps.sba.SbaArgon2idPortable
import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.security.MessageDigest
import java.util.zip.CRC32
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveV2IndexMacTest {
    @Test
    fun verifiesReferenceV2IndexMacAndRejectsRechecksummedIndexTampering() {
        val root = Files.createTempDirectory("sba-v2-index-mac")
        try {
            val password = "correct horse battery staple".toCharArray()
            val path = root.resolve("encrypted-v2.sba")
            val archive = buildArchive()
            Files.write(path, archive)
            val info = SbaArchiveReader.read(path.toString())
            assertTrue(SbaArchiveKeyCheck.verify(info, password.copyOf(), path.toString()))
            assertFalse(SbaArchiveKeyCheck.verify(info, "wrong password".toCharArray(), path.toString()))
            val suppliedKey = SbaArchiveKeyCheck.deriveVerifiedKey(info, password.copyOf(), path.toString())!!
            try {
                SbaArchiveKeyCheck.verifyProvidedKey(info, suppliedKey, path.toString())

                // A cached SbaArchiveInfo must not mask a header-MAC change on disk.
                val macTamperedPath = root.resolve("tampered-header-mac.sba")
                val macTampered = archive.copyOf()
                macTampered[104] = (macTampered[104].toInt() xor 1).toByte()
                Files.write(macTamperedPath, macTampered)
                assertThrows(IOException::class.java) {
                    SbaArchiveKeyCheck.verifyProvidedKey(info, suppliedKey, macTamperedPath.toString())
                }
            } finally {
                java.util.Arrays.fill(suppliedKey, 0)
            }

            val tampered = archive.copyOf()
            val indexOffset = ByteBuffer.wrap(tampered, tampered.size - 32 + 8, 8)
                .order(ByteOrder.BIG_ENDIAN).long.toInt()
            tampered[indexOffset + 16] = '['.code.toByte() // Change valid metadata "{}" to "[]".
            val indexSize = ByteBuffer.wrap(tampered, tampered.size - 32 + 16, 8)
                .order(ByteOrder.BIG_ENDIAN).long.toInt()
            val newIndexCrc = crc(tampered.copyOfRange(indexOffset, indexOffset + indexSize))
            val footerOffset = tampered.size - 32
            ByteBuffer.wrap(tampered, footerOffset + 24, 4).order(ByteOrder.BIG_ENDIAN).putInt(newIndexCrc)
            val footerCrc = crc(tampered.copyOfRange(footerOffset, footerOffset + 28))
            ByteBuffer.wrap(tampered, footerOffset + 28, 4).order(ByteOrder.BIG_ENDIAN).putInt(footerCrc)
            val tamperedPath = root.resolve("tampered.sba")
            Files.write(tamperedPath, tampered)
            val tamperedInfo = SbaArchiveReader.read(tamperedPath.toString())
            assertThrows(IOException::class.java) {
                SbaArchiveKeyCheck.verify(tamperedInfo, password.copyOf(), tamperedPath.toString())
            }
        } finally {
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    private fun buildArchive(): ByteArray {
        val name = "apps".toByteArray(StandardCharsets.UTF_8)
        val salt = ByteArray(16) { it.toByte() }
        val nonce = ByteArray(16) { (it + 16).toByte() }
        val password = "correct horse battery staple".toByteArray(StandardCharsets.UTF_8)
        val key = SbaArgon2idPortable.deriveArgon2id(password, salt, 3, 16384, 1, 32)
        val keyCheck = MessageDigest.getInstance("SHA-256").run {
            update("SBA1-AEGIS256-key-check-v1".toByteArray(StandardCharsets.UTF_8))
            update(salt)
            update(nonce)
            update(key)
            digest().copyOf(16)
        }
        val tarSize = 1024L
        val storedSize = tarSize + 16L
        val entryOffset = 144L
        val payloadOffset = entryOffset + 24L + name.size
        val indexOffset = payloadOffset + storedSize
        val index = ByteBuffer.allocate(16 + 2 + 108 + name.size).order(ByteOrder.BIG_ENDIAN)
        index.put("SAI1".toByteArray(StandardCharsets.US_ASCII))
        index.putShort(16)
        index.putShort(2)
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
        index.putLong(0L)
        index.putLong(0L)
        index.putLong(0L)
        index.put(name)
        val indexBytes = index.array()
        val indexCrc = crc(indexBytes)

        val header = ByteBuffer.allocate(144).order(ByteOrder.BIG_ENDIAN)
        header.put("SBA1".toByteArray(StandardCharsets.US_ASCII))
        header.putShort(2)
        header.putShort(144)
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
        header.putInt(16384)
        header.putShort(1) // Argon2id parallelism
        header.putShort(1)
        header.putShort(32)
        header.putShort(1)
        header.put(ByteArray(32)) // Index MAC bytes are zeroed while calculating the MAC.
        header.put(ByteArray(8))
        val headerBytes = header.array()
        val secondaryKey = MessageDigest.getInstance("SHA-256").run {
            update("SBA2-index-mac-key-v1".toByteArray(StandardCharsets.UTF_8))
            update(salt)
            update(nonce)
            update(key)
            digest()
        }
        val mac = Mac.getInstance("HmacSHA256")
        mac.init(SecretKeySpec(secondaryKey, "HmacSHA256"))
        mac.update("SBA2-index-metadata-mac-v1".toByteArray(StandardCharsets.UTF_8))
        mac.update(headerBytes)
        mac.update(ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(indexOffset).array())
        mac.update(ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(indexBytes.size.toLong()).array())
        mac.update(ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(indexCrc).array())
        mac.update(indexBytes)
        System.arraycopy(mac.doFinal(), 0, headerBytes, 104, 32)

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
        footer.putShort(2)
        footer.putLong(indexOffset)
        footer.putLong(indexBytes.size.toLong())
        footer.putInt(indexCrc)
        footer.putInt(crc(footer.array().copyOfRange(0, 28)))
        return ByteArrayOutputStreamBuilder().build(headerBytes, entryHeader.array(), name, ByteArray(storedSize.toInt()), indexBytes, footer.array())
    }

    private fun crc(bytes: ByteArray): Int = CRC32().apply { update(bytes) }.value.toInt()

    private class ByteArrayOutputStreamBuilder {
        fun build(vararg parts: ByteArray): ByteArray {
            val output = java.io.ByteArrayOutputStream()
            parts.forEach { output.write(it) }
            return output.toByteArray()
        }
    }
}
