package com.bareapps.barebackup.sba

import android.os.ParcelFileDescriptor
import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener
import com.bareapps.barebackup.sba.internal.tar.SbaTarEntryInfo
import java.io.FileDescriptor
import java.io.IOException

/** JNI surface for SBA TAR operations. Caller-owned descriptors are never closed. */
class SbaSwiftTarNative private constructor() {
    external fun extractTarFromFdRaw(fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String>
    private external fun extractTarFromFdWithStatsRaw(fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): LongArray
    external fun extractTarZstdFromFdRaw(fd: Int, offset: Long, compressedSize: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String>
    external fun listTarEntriesFromFdRaw(fd: Int, offset: Long): Array<SbaTarEntryInfo>
    external fun listTarEntriesZstdFromFdRaw(fd: Int, offset: Long, compressedSize: Long): Array<SbaTarEntryInfo>

    external fun extractAegisArchiveEntry(
        archivePath: String, offset: Long, size: Long, compressedSize: Long, tarSize: Long,
        destination: String, flags: Int, includes: Array<String>, option0: Int, option1: Int,
        key: ByteArray, nonce: ByteArray, metadata: ByteArray, chunkSize: Long, option2: Int,
        progress: SbaNativeProgressListener?,
    ): Array<String>

    external fun extractAegisArchiveEntryFused(
        archivePath: String, offset: Long, size: Long, compressedSize: Long, tarSize: Long,
        destination: String, flags: Int, includes: Array<String>, option0: Int, option1: Int,
        key: ByteArray, nonce: ByteArray, metadata: ByteArray, chunkSize: Long, option2: Int,
        progress: SbaNativeProgressListener?,
    ): Array<String>

    @Throws(IOException::class)
    fun extractTarFromDescriptorWithStats(
        descriptor: FileDescriptor, offset: Long, destination: String, flags: Int,
        includes: Array<String>, progress: SbaNativeProgressListener?,
    ): LongArray = withDuplicate(descriptor) {
        extractTarFromFdWithStatsRaw(it, offset, destination, flags, includes, progress)
    }

    @Throws(IOException::class)
    fun extractTarFromDescriptor(descriptor: FileDescriptor, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String> =
        withDuplicate(descriptor) { extractTarFromFdRaw(it, offset, destination, flags, includes, progress) }

    /**
     * Decompresses only the declared Zstandard frame range to a private temporary TAR,
     * then runs the same validated TAR extractor. The caller's descriptor stays open.
     */
    @Throws(IOException::class)
    fun extractTarZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String> {
        require(offset >= 0L && compressedSize >= 0L && offset <= Long.MAX_VALUE - compressedSize) {
            "Invalid compressed TAR range"
        }
        val compressed = java.io.File.createTempFile("bare-sba-zstd-", ".zst")
        val tarFile = java.io.File.createTempFile("bare-sba-", ".tar")
        try {
            copyDescriptorRange(descriptor, offset, compressedSize, compressed)
            java.io.FileInputStream(compressed).use { source ->
                java.io.FileOutputStream(tarFile).use { sink ->
                    com.github.luben.zstd.ZstdInputStream(source).use { decoder ->
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        var written = 0L
                        while (true) {
                            if (progress?.isCancellationRequested() == true) {
                                throw java.io.InterruptedIOException("Zstandard TAR extraction cancelled")
                            }
                            val count = decoder.read(buffer)
                            if (count < 0) break
                            if (count == 0) continue
                            sink.write(buffer, 0, count)
                            written += count.toLong()
                            progress?.onProgress(written, -1L)
                        }
                    }
                }
            }
            java.io.FileInputStream(tarFile).use { tar ->
                return withDuplicate(tar.fd) { extractTarFromFdRaw(it, 0L, destination, flags, includes, progress) }
            }
        } finally {
            compressed.delete()
            tarFile.delete()
        }
    }

    @Throws(IOException::class)
    fun listTarEntriesFromDescriptor(descriptor: FileDescriptor, offset: Long): Array<SbaTarEntryInfo> =
        withDuplicate(descriptor) { listTarEntriesFromFdRaw(it, offset) }

    @Throws(IOException::class)
    fun listTarEntriesZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long): Array<SbaTarEntryInfo> {
        require(offset >= 0L && compressedSize >= 0L && offset <= Long.MAX_VALUE - compressedSize) {
            "Invalid compressed TAR range"
        }
        val compressed = java.io.File.createTempFile("bare-sba-list-zstd-", ".zst")
        val tarFile = java.io.File.createTempFile("bare-sba-list-", ".tar")
        try {
            copyDescriptorRange(descriptor, offset, compressedSize, compressed)
            java.io.FileInputStream(compressed).use { source ->
                java.io.FileOutputStream(tarFile).use { sink ->
                    com.github.luben.zstd.ZstdInputStream(source).use { decoder ->
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        while (true) {
                            val count = decoder.read(buffer)
                            if (count < 0) break
                            if (count == 0) continue
                            sink.write(buffer, 0, count)
                        }
                    }
                }
            }
            java.io.FileInputStream(tarFile).use { tar ->
                return withDuplicate(tar.fd) { listTarEntriesFromFdRaw(it, 0L) }
            }
        } finally {
            compressed.delete()
            tarFile.delete()
        }
    }

    /**
     * Uses positional reads so duplicated descriptors' shared file offsets are untouched.
     */
    @Throws(IOException::class)
    private fun copyDescriptorRange(
        descriptor: FileDescriptor,
        offset: Long,
        length: Long,
        destination: java.io.File,
    ) {
        java.io.FileOutputStream(destination).use { output ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            var position = offset
            var remaining = length
            while (remaining > 0L) {
                val requested = minOf(buffer.size.toLong(), remaining).toInt()
                val count = try {
                    android.system.Os.pread(descriptor, buffer, 0, requested, position)
                } catch (error: android.system.ErrnoException) {
                    throw IOException("Unable to read compressed TAR range", error)
                }
                if (count <= 0) throw java.io.EOFException("Compressed TAR range is truncated")
                output.write(buffer, 0, count)
                position += count.toLong()
                remaining -= count.toLong()
            }
        }
    }

    private inline fun <T> withDuplicate(descriptor: FileDescriptor, operation: (Int) -> T): T {
        ParcelFileDescriptor.dup(descriptor).use { duplicate -> return operation(duplicate.fd) }
    }

    companion object {
        @JvmField val instance = SbaSwiftTarNative()
        @JvmField val a = instance

        /**
         * Descriptor-based facade matching the reference class's public helper
         * behavior while replacing its obfuscated helper names with semantic ones.
         * Each operation duplicates the caller's descriptor before entering JNI.
         */
        @JvmStatic
        @Throws(IOException::class)
        fun extractTarWithStats(
            descriptor: FileDescriptor,
            offset: Long,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): LongArray = instance.extractTarFromDescriptorWithStats(
            descriptor, offset, destination, flags, includes, progress
        )

        @JvmStatic
        @Throws(IOException::class)
        fun extractTar(
            descriptor: FileDescriptor,
            offset: Long,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = instance.extractTarFromDescriptor(
            descriptor, offset, destination, flags, includes, progress
        )

        @JvmStatic
        @Throws(IOException::class)
        fun extractTarZstd(
            descriptor: FileDescriptor,
            offset: Long,
            compressedSize: Long,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): Array<String> = instance.extractTarZstdFromDescriptor(
            descriptor, offset, compressedSize, destination, flags, includes, progress
        )

        @JvmStatic
        @Throws(IOException::class)
        fun listTarEntries(
            descriptor: FileDescriptor,
            offset: Long,
        ): Array<SbaTarEntryInfo> = instance.listTarEntriesFromDescriptor(descriptor, offset)

        @JvmStatic
        @Throws(IOException::class)
        fun listTarEntriesZstd(
            descriptor: FileDescriptor,
            offset: Long,
            compressedSize: Long,
        ): Array<SbaTarEntryInfo> =
            instance.listTarEntriesZstdFromDescriptor(descriptor, offset, compressedSize)

        init { System.loadLibrary("sba_archive") }
    }
}
