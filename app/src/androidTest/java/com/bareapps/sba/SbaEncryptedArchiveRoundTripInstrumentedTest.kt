package com.bareapps.sba

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.bareapps.sba.internal.archive.SbaArchiveKeyCheck
import com.bareapps.sba.internal.tar.SbaTarEntryInfo
import java.io.File
import java.io.IOException
import java.io.RandomAccessFile
import java.nio.charset.StandardCharsets
import java.util.Arrays
import java.util.Random
import java.util.zip.CRC32
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class SbaEncryptedArchiveRoundTripInstrumentedTest {
    @Test
    fun createsListsRestoresAndRejectsTamperedV2AegisArchivesForBothVariants() {
        assertTrue("AEGIS primitive/protocol self-tests failed", SbaLibaegisCryptoNative.a.isAvailable())
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        val root = File(context.cacheDir, "sba-encrypted-roundtrip-${System.nanoTime()}").apply { mkdirs() }
        val source = File(root, "source").apply { mkdirs() }
        val payload = ByteArray(24 * 1024).also { Random(0xB4A3L).nextBytes(it) }
        File(source, "payload.bin").writeBytes(payload)
        try {
            for (method in intArrayOf(4, 5)) {
                val archive = File(root, "archive-$method.sba")
                val destination = File(root, "restore-$method").apply { mkdirs() }
                val tamperedDestination = File(root, "tampered-$method").apply { mkdirs() }
                val salt = ByteArray(16) { (it + method).toByte() }
                val nonceSeed = ByteArray(16) { (it + method + 31).toByte() }
                val password = "BΛR☰-roundtrip-$method".toCharArray()
                val material = SbaArchiveKeyCheck.deriveForCreation(method, password, salt, nonceSeed)
                try {
                    SbaArchiveNative.clearTemporaryDirectory()
                    SbaArchiveNative.a.createArchive(
                        2,
                        archive.absolutePath,
                        """{"kind":"instrumented","variant":$method}""".toByteArray(StandardCharsets.UTF_8),
                        arrayOf(source.absolutePath),
                        arrayOf("data"),
                        intArrayOf(0),
                        arrayOf(emptyArray<String>()),
                        arrayOf(emptyArray<String>()),
                        1, 1, method, 1, 3, 16384, 1, 4096, 2,
                        if (method == 4) 32 else 16,
                        material.key, material.keyCheck, salt, nonceSeed, null,
                    )

                    val info = SbaArchiveNative.readArchiveInfo(archive.absolutePath)
                    assertEquals(2, info.version)
                    assertTrue(info.isEncrypted)
                    assertEquals(method, info.encryptionMethod)
                    assertEquals(1, info.compressionMethod)
                    assertEquals(4096, info.chunkSize)
                    assertEquals(32, info.indexMac.size)
                    val entry = info.entries.single()
                    assertEquals(23, entry.flags)
                    val expectedChunks = (entry.compressedSize + info.chunkSize - 1L) / info.chunkSize
                    assertEquals(entry.compressedSize + expectedChunks * 16L, entry.storedSize)

                    val verifiedKey = SbaArchiveNative.deriveVerifiedArchiveKey(info, archive.absolutePath, password)
                    try {
                        assertArrayEquals(material.key, verifiedKey)
                    } finally {
                        Arrays.fill(verifiedKey, 0)
                    }
                    val wrongPassword = "wrong-password-$method".toCharArray()
                    try {
                        assertThrows(IOException::class.java) {
                            SbaArchiveNative.deriveVerifiedArchiveKey(info, archive.absolutePath, wrongPassword)
                        }
                    } finally {
                        Arrays.fill(wrongPassword, '\u0000')
                    }

                    val listed = SbaArchiveNative.listEncryptedEntryTarEntriesWithKey(
                        archive.absolutePath, "data", material.key, null,
                    )
                    assertTrue(listed.any { it.name == "payload.bin" && it.type == SbaTarEntryInfo.TYPE_FILE })
                    val extracted = SbaArchiveNative.extractEncryptedEntryWithKey(
                        archive.absolutePath, "data", material.key, destination.absolutePath,
                        0x1ff, emptyArray(), null,
                    )
                    assertTrue(extracted.contains("payload.bin"))
                    assertArrayEquals(payload, File(destination, "payload.bin").readBytes())

                    val tamperedIndex = File(root, "tampered-index-$method.sba")
                    try {
                        Files.copy(archive.toPath(), tamperedIndex.toPath())
                        RandomAccessFile(tamperedIndex, "rw").use { file ->
                            val metadataByteOffset = info.indexOffset + 16L + 2L
                            file.seek(metadataByteOffset)
                            val original = file.readUnsignedByte()
                            file.seek(metadataByteOffset)
                            file.writeByte(if (original == 'k'.code) 'x'.code else original xor 1)

                            val indexBytes = ByteArray(info.indexSize.toInt())
                            file.seek(info.indexOffset)
                            file.readFully(indexBytes)
                            val indexCrc = CRC32().apply { update(indexBytes) }.value.toInt()
                            val footerOffset = file.length() - 32L
                            file.seek(footerOffset + 24L)
                            file.writeInt(indexCrc)
                            file.seek(footerOffset)
                            val footerPrefix = ByteArray(28)
                            file.readFully(footerPrefix)
                            val footerCrc = CRC32().apply { update(footerPrefix) }.value.toInt()
                            file.seek(footerOffset + 28L)
                            file.writeInt(footerCrc)
                        }
                        val tamperedInfo = SbaArchiveNative.readArchiveInfo(tamperedIndex.absolutePath)
                        assertThrows(IOException::class.java) {
                            SbaArchiveNative.deriveVerifiedArchiveKey(
                                tamperedInfo, tamperedIndex.absolutePath, password,
                            )
                        }
                    } finally {
                        tamperedIndex.delete()
                    }

                    RandomAccessFile(archive, "rw").use { file ->
                        val offset = entry.payloadOffset + 3L
                        file.seek(offset)
                        val original = file.readUnsignedByte()
                        file.seek(offset)
                        file.writeByte(original xor 1)
                    }
                    assertThrows(IOException::class.java) {
                        SbaArchiveNative.extractEncryptedEntryWithKey(
                            archive.absolutePath, "data", material.key, tamperedDestination.absolutePath,
                            0x1ff, emptyArray(), null,
                        )
                    }
                    assertTrue(tamperedDestination.listFiles().isNullOrEmpty())
                } finally {
                    Arrays.fill(password, '\u0000')
                    Arrays.fill(material.key, 0)
                    Arrays.fill(material.keyCheck, 0)
                    Arrays.fill(salt, 0)
                    Arrays.fill(nonceSeed, 0)
                    archive.delete()
                }
            }
        } finally {
            SbaArchiveNative.clearTemporaryDirectory()
            Arrays.fill(payload, 0)
            root.deleteRecursively()
        }
    }
}
