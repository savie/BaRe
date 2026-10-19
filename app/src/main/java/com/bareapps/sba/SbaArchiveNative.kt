package com.bareapps.sba

import com.bareapps.sba.internal.archive.SbaArchiveInfo
import com.bareapps.sba.internal.archive.SbaArchiveReader
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import com.bareapps.sba.internal.tar.SbaTarEntryInfo
import java.io.FileInputStream
import java.io.IOException
import java.nio.CharBuffer
import java.nio.charset.CodingErrorAction
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.Arrays

/** Native SBA v1 creation entry point and independent archive-info/restore facade. */
class SbaArchiveNative private constructor() {
    fun createArchive(
        mode: Int,
        outputPath: String,
        metadata: ByteArray,
        sourcePaths: Array<String>,
        entryNames: Array<String>,
        entryModes: IntArray,
        includePaths: Array<Array<String>>,
        excludePaths: Array<Array<String>>,
        option0: Int,
        option1: Int,
        option2: Int,
        option3: Int,
        option4: Int,
        option5: Int,
        option6: Int,
        option7: Int,
        option8: Int,
        option9: Int,
        key0: ByteArray?,
        key1: ByteArray?,
        key2: ByteArray?,
        key3: ByteArray?,
        progress: SbaNativeProgressListener?,
    ): LongArray = com.bareapps.sba.internal.archive.SbaArchiveWriter.createArchive(
        mode, outputPath, metadata, sourcePaths, entryNames, entryModes,
        includePaths, excludePaths, option0, option1, option2, option3, option4,
        option5, option6, option7, option8, option9, key0, key1, key2, key3, progress,
    )

    companion object {
        @JvmField val a = SbaArchiveNative()

        @JvmStatic
        fun isSbaFile(path: String): Boolean = try {
            FileInputStream(path).use { input ->
                val magic = ByteArray(4)
                var read = 0
                while (read < magic.size) {
                    val count = input.read(magic, read, magic.size - read)
                    if (count < 0) return false
                    read += count
                }
                magic.contentEquals("SBA1".toByteArray(Charsets.US_ASCII))
            }
        } catch (_: IOException) {
            false
        }

        @JvmStatic
        @Throws(IOException::class)
        fun readArchiveInfo(path: String): SbaArchiveInfo = SbaArchiveReader.read(path)

        @JvmStatic
        @Throws(IOException::class)
        fun verifyArchivePassword(path: String, password: CharArray): Boolean {
            val info = SbaArchiveReader.read(path)
            if (!info.isEncrypted) throw IOException("SBA archive is not encrypted")
            if (info.encryptionMethod != 4 && info.encryptionMethod != 5) {
                throw IOException("Password verification is not implemented for this SBA encryption method")
            }
            if (password.isEmpty()) throw IOException("SBA encryption password must not be empty")
            val passwordCopy = password.copyOf()
            val encoded = try {
                val buffer = StandardCharsets.UTF_8.newEncoder()
                    .onMalformedInput(CodingErrorAction.REPORT)
                    .onUnmappableCharacter(CodingErrorAction.REPORT)
                    .encode(CharBuffer.wrap(passwordCopy))
                ByteArray(buffer.remaining()).also { buffer.get(it) }
            } catch (failure: Exception) {
                throw IOException("SBA password is not valid UTF-8", failure)
            }
            var key = ByteArray(0)
            var fullCheck = ByteArray(0)
            return try {
                val keyLength = if (info.encryptionMethod == 4) 32 else 16
                key = SbaNativeCrypto.a.deriveArgon2id(
                    encoded, info.salt, info.kdfIterations, info.kdfMemoryKiB,
                    info.kdfParallelism, keyLength,
                )
                val digest = MessageDigest.getInstance("SHA-256")
                digest.update(
                    (if (info.encryptionMethod == 4) "SBA1-AEGIS256-key-check-v1"
                    else "SBA1-AEGIS128X2-key-check-v1").toByteArray(StandardCharsets.UTF_8)
                )
                digest.update(info.salt)
                digest.update(info.nonceSeed)
                digest.update(key)
                fullCheck = digest.digest()
                val expectedCheck = fullCheck.copyOf(16)
                try {
                    MessageDigest.isEqual(info.keyCheck, expectedCheck)
                } finally {
                    Arrays.fill(expectedCheck, 0)
                }
            } finally {
                Arrays.fill(encoded, 0)
                Arrays.fill(key, 0)
                Arrays.fill(fullCheck, 0)
                Arrays.fill(passwordCopy, '\u0000')
            }
        }

        @JvmStatic
        @Throws(IOException::class)
        fun listEntryTarEntries(path: String, entryName: String): Array<SbaTarEntryInfo> {
            val info = SbaArchiveReader.read(path)
            if (info.isEncrypted) throw IOException("Encrypted SBA payload decoding is not implemented yet")
            val entry = info.entries.firstOrNull { it.name == entryName }
                ?: throw IOException("SBA entry not found: $entryName")
            FileInputStream(path).use { archive ->
                return if (info.compressionMethod == 1) {
                    SbaBareTarNative.instance.listTarEntriesZstdFromDescriptorBounded(
                        archive.fd, entry.payloadOffset, entry.compressedSize, entry.tarSize,
                    )
                } else {
                    SbaBareTarNative.instance.listTarEntriesFromDescriptor(archive.fd, entry.payloadOffset)
                }
            }
        }

        @JvmStatic
        @Throws(IOException::class)
        fun extractEntry(
            path: String,
            entryName: String,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> {
            val info = SbaArchiveReader.read(path)
            if (info.isEncrypted) throw IOException("Encrypted SBA payload decoding is not implemented yet")
            val entry = info.entries.firstOrNull { it.name == entryName }
                ?: throw IOException("SBA entry not found: $entryName")
            FileInputStream(path).use { archive ->
                return if (info.compressionMethod == 1) {
                    SbaBareTarNative.instance.extractTarZstdFromDescriptorBounded(
                        archive.fd, entry.payloadOffset, entry.compressedSize, entry.tarSize,
                        destination, flags, includes, progress,
                    )
                } else {
                    SbaBareTarNative.instance.extractTarFromDescriptor(
                        archive.fd, entry.payloadOffset, destination, flags, includes, progress,
                    )
                }
            }
        }

        init { System.loadLibrary("sba_archive") }
    }
}
