package com.bareapps.sba

import com.bareapps.sba.internal.archive.SbaArchiveInfo
import com.bareapps.sba.internal.archive.SbaArchiveKeyCheck
import com.bareapps.sba.internal.archive.SbaArchiveReader
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import com.bareapps.sba.internal.tar.SbaTarEntryInfo
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.RandomAccessFile
import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.Files

/** SBA v1/v2 creation entry point and independent archive-info/restore facade. */
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

        @Volatile private var configuredTemporaryDirectory: java.nio.file.Path? = null

        /** Configure an app-private directory for authenticated plaintext staging. */
        @JvmStatic
        @Throws(IOException::class)
        internal fun setTemporaryDirectory(path: String) {
            if (path.isBlank()) throw IOException("SBA temporary directory path must not be blank")
            val directory = java.nio.file.Path.of(path).toAbsolutePath().normalize()
            Files.createDirectories(directory)
            if (!Files.isDirectory(directory) || !Files.isWritable(directory)) {
                throw IOException("SBA temporary directory is not writable")
            }
            configuredTemporaryDirectory = directory
        }

        /** Create sensitive TAR/compressed/plaintext staging outside the user-selected output directory. */
        @JvmStatic
        @Throws(IOException::class)
        internal fun createStagingTempFile(prefix: String, suffix: String): java.nio.file.Path {
            configuredTemporaryDirectory?.let { return Files.createTempFile(it, prefix, suffix) }
            // Direct API callers may not have configured an app-private cache. Use the
            // platform temp directory; if unavailable, fail closed rather than spill plaintext
            // beside an archive on shared/external storage.
            return Files.createTempFile(prefix, suffix)
        }

        private fun createDecryptedPayloadTemp(): java.nio.file.Path =
            createStagingTempFile(".bare-sba-aegis-", ".payload")

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
        fun verifyArchivePassword(path: String, password: CharArray): Boolean =
            SbaArchiveKeyCheck.verify(SbaArchiveReader.read(path), password, path)

        @JvmStatic
        @Throws(IOException::class)
        fun deriveVerifiedArchiveKey(path: String, password: CharArray): ByteArray =
            deriveVerifiedArchiveKey(SbaArchiveReader.read(path), path, password)

        @JvmStatic
        @Throws(IOException::class)
        fun deriveVerifiedArchiveKey(info: SbaArchiveInfo, path: String, password: CharArray): ByteArray {
            if (!info.isEncrypted || info.encryptionMethod !in 4..5) {
                throw IOException("Archive does not use a supported SBA AEGIS encryption method")
            }
            return SbaArchiveKeyCheck.deriveVerifiedKey(info, password, path)
                ?: throw IOException("Incorrect SBA password")
        }

        @JvmStatic
        @Throws(IOException::class)
        fun listEncryptedEntryTarEntries(
            path: String,
            entryName: String,
            password: CharArray,
            progress: SbaNativeProgressListener? = null,
        ): Array<SbaTarEntryInfo> = withDecryptedEntryPayload(path, entryName, password, null, progress) { info, entry, descriptor ->
            listDecryptedTarEntries(info, entry, descriptor)
        }

        @JvmStatic
        @Throws(IOException::class)
        fun listEncryptedEntryTarEntriesWithKey(
            path: String,
            entryName: String,
            key: ByteArray,
            progress: SbaNativeProgressListener? = null,
        ): Array<SbaTarEntryInfo> = withDecryptedEntryPayload(path, entryName, null, key, progress) { info, entry, descriptor ->
            listDecryptedTarEntries(info, entry, descriptor)
        }

        /** Fast path for callers that already authenticated this key and the v2 index MAC. */
        @JvmStatic
        @Throws(IOException::class)
        internal fun listEncryptedEntryTarEntriesWithVerifiedKey(
            path: String,
            entryName: String,
            key: ByteArray,
            progress: SbaNativeProgressListener? = null,
        ): Array<SbaTarEntryInfo> = withDecryptedEntryPayload(
            path, entryName, null, key, progress, providedKeyVerified = true,
        ) { info, entry, descriptor ->
            listDecryptedTarEntries(info, entry, descriptor)
        }

        @JvmStatic
        @Throws(IOException::class)
        internal fun listEncryptedEntryTarEntriesWithVerifiedKey(
            path: String,
            info: SbaArchiveInfo,
            entryName: String,
            key: ByteArray,
            progress: SbaNativeProgressListener? = null,
        ): Array<SbaTarEntryInfo> = withDecryptedEntryPayload(
            path, entryName, null, key, progress,
            providedKeyVerified = true, knownInfo = info,
        ) { archiveInfo, entry, descriptor ->
            listDecryptedTarEntries(archiveInfo, entry, descriptor)
        }

        private fun listDecryptedTarEntries(
            info: SbaArchiveInfo,
            entry: com.bareapps.sba.internal.archive.SbaArchiveEntry,
            descriptor: java.io.FileDescriptor,
        ): Array<SbaTarEntryInfo> = if (info.compressionMethod == 1) {
            SbaBareTarNative.instance.listTarEntriesZstdFromDescriptorBounded(
                descriptor, 0L, entry.compressedSize, entry.tarSize,
            )
        } else {
            SbaBareTarNative.instance.listTarEntriesFromDescriptor(descriptor, 0L)
        }

        @JvmStatic
        @Throws(IOException::class)
        fun extractEncryptedEntry(
            path: String,
            entryName: String,
            password: CharArray,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = withDecryptedEntryPayload(path, entryName, password, null, progress) { info, entry, descriptor ->
            extractDecryptedTar(info, entry, descriptor, destination, flags, includes, progress)
        }

        @JvmStatic
        @Throws(IOException::class)
        fun extractEncryptedEntryWithKey(
            path: String,
            entryName: String,
            key: ByteArray,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = withDecryptedEntryPayload(path, entryName, null, key, progress) { info, entry, descriptor ->
            extractDecryptedTar(info, entry, descriptor, destination, flags, includes, progress)
        }

        /** Fast path for callers that already authenticated this key and the v2 index MAC. */
        @JvmStatic
        @Throws(IOException::class)
        internal fun extractEncryptedEntryWithVerifiedKey(
            path: String,
            entryName: String,
            key: ByteArray,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = withDecryptedEntryPayload(
            path, entryName, null, key, progress, providedKeyVerified = true,
        ) { info, entry, descriptor ->
            extractDecryptedTar(info, entry, descriptor, destination, flags, includes, progress)
        }

        @JvmStatic
        @Throws(IOException::class)
        internal fun extractEncryptedEntryWithVerifiedKey(
            path: String,
            info: SbaArchiveInfo,
            entryName: String,
            key: ByteArray,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = withDecryptedEntryPayload(
            path, entryName, null, key, progress,
            providedKeyVerified = true, knownInfo = info,
        ) { archiveInfo, entry, descriptor ->
            extractDecryptedTar(archiveInfo, entry, descriptor, destination, flags, includes, progress)
        }

        private fun extractDecryptedTar(
            info: SbaArchiveInfo,
            entry: com.bareapps.sba.internal.archive.SbaArchiveEntry,
            descriptor: java.io.FileDescriptor,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = if (info.compressionMethod == 1) {
            SbaBareTarNative.instance.extractTarZstdFromDescriptorBounded(
                descriptor, 0L, entry.compressedSize, entry.tarSize,
                destination, flags, includes, progress,
            )
        } else {
            SbaBareTarNative.instance.extractTarFromDescriptor(
                descriptor, 0L, destination, flags, includes, progress,
            )
        }

        private fun <T> withDecryptedEntryPayload(
            path: String,
            entryName: String,
            password: CharArray?,
            providedKey: ByteArray?,
            progress: SbaNativeProgressListener?,
            providedKeyVerified: Boolean = false,
            knownInfo: SbaArchiveInfo? = null,
            block: (SbaArchiveInfo, com.bareapps.sba.internal.archive.SbaArchiveEntry, java.io.FileDescriptor) -> T,
        ): T {
            val info = knownInfo ?: SbaArchiveReader.read(path)
            if (!info.isEncrypted || info.encryptionMethod !in 4..5) {
                throw IOException("Archive does not use a supported SBA AEGIS encryption method")
            }
            val entryIndex = info.entries.indexOfFirst { it.name == entryName }
            if (entryIndex < 0) throw IOException("SBA entry not found: $entryName")
            val entry = info.entries[entryIndex]
            val ownsKey = providedKey == null
            val key = providedKey ?: SbaArchiveKeyCheck.deriveVerifiedKey(
                info, password ?: throw IOException("Password is required for encrypted SBA access"), path,
            ) ?: throw IOException("Incorrect SBA password")
            var temporary: java.nio.file.Path? = null
            try {
                val expectedKeyLength = if (info.encryptionMethod == 4) 32 else 16
                if (key.size != expectedKeyLength) throw IOException("Invalid SBA AEGIS key length")
                if (providedKey != null && !providedKeyVerified) SbaArchiveKeyCheck.verifyProvidedKey(info, key, path)
                val temp = createDecryptedPayloadTemp()
                temporary = temp
                RandomAccessFile(path, "r").use { input ->
                    input.seek(entry.payloadOffset)
                    FileOutputStream(temp.toFile()).use { output ->
                        val decoded = try {
                            if (info.encryptionMethod == 4) {
                                SbaLibaegisCryptoNative.a.decryptAegis256ChunkedEntryFdRaw(
                                    input.fd, entry.storedSize, output.fd, key, info.nonceSeed,
                                    entry.name.toByteArray(StandardCharsets.UTF_8), entryIndex.toLong(),
                                    entry.compressedSize, info.chunkSize, progress,
                                )
                            } else {
                                SbaLibaegisCryptoNative.a.decryptAegis128X2ChunkedEntryFdRaw(
                                    input.fd, entry.storedSize, output.fd, key, info.nonceSeed,
                                    entry.name.toByteArray(StandardCharsets.UTF_8), entryIndex.toLong(),
                                    entry.compressedSize, info.chunkSize, progress,
                                )
                            }
                        } catch (failure: IOException) {
                            val message = failure.message.orEmpty()
                            if (message.contains("authentication failed", ignoreCase = true)) {
                                val method = if (info.encryptionMethod == 4) "Aegis256" else "Aegis128X2"
                                throw IOException("Failed to authenticate SBA $method payload", failure)
                            }
                            throw failure
                        }
                        output.flush()
                        if (decoded.size < 2 || decoded[0] != entry.storedSize ||
                            decoded[1] != entry.compressedSize) {
                            throw IOException("native SBA AEGIS decrypted byte count mismatch")
                        }
                    }
                }
                FileInputStream(temporary!!.toFile()).use { payload ->
                    return block(info, entry, payload.fd)
                }
            } finally {
                if (ownsKey) java.util.Arrays.fill(key, 0)
                temporary?.let { Files.deleteIfExists(it) }
            }
        }

        @JvmStatic
        @Throws(IOException::class)
        fun listEntryTarEntries(path: String, entryName: String): Array<SbaTarEntryInfo> {
            val info = SbaArchiveReader.read(path)
            if (info.isEncrypted) throw IOException("Encrypted SBA listing requires a password")
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
            if (info.isEncrypted) throw IOException("Encrypted SBA extraction requires a password")
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
