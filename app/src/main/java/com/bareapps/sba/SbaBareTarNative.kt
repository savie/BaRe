package com.bareapps.sba

import android.os.ParcelFileDescriptor
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import com.bareapps.sba.internal.tar.SbaTarEntryInfo
import java.io.FileDescriptor
import java.io.IOException
import java.io.InputStream

/** JNI surface for SBA TAR operations. Caller-owned descriptors are never closed. */
class SbaBareTarNative private constructor() {
    private external fun extractTarFromFdRaw(fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String>
    private external fun extractTarFromFdWithStatsRaw(fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): LongArray
    private external fun extractTarZstdFromFdRaw(fd: Int, offset: Long, compressedSize: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String>
    private external fun listTarEntriesFromFdRaw(fd: Int, offset: Long): Array<SbaTarEntryInfo>
    private external fun listTarEntriesZstdFromFdRaw(fd: Int, offset: Long, compressedSize: Long): Array<SbaTarEntryInfo>

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
        descriptor: FileDescriptor, tarBytes: Long, destination: String, flags: Int,
        includes: Array<String>, progress: SbaNativeProgressListener?,
    ): LongArray = withDuplicate(descriptor) {
        extractTarFromFdWithStatsRaw(it, tarBytes, destination, flags, includes, progress)
    }

    @Throws(IOException::class)
    fun extractTarFromDescriptor(descriptor: FileDescriptor, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String> =
        withDuplicate(descriptor) { extractTarFromFdRaw(it, offset, destination, flags, includes, progress) }

    /**
     * Decodes only the declared compressed range using positional reads. The compressed
     * bytes are never copied to a second temporary file; only the decoded TAR is spooled
     * so the native extractor can validate and extract it using its normal code path.
     */
    @Throws(IOException::class)
    fun extractTarZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String> =
        extractTarZstdFromDescriptorBounded(descriptor, offset, compressedSize, null, destination, flags, includes, progress)

    /** SBA index-backed restore path: enforce the declared uncompressed TAR length. */
    @Throws(IOException::class)
    fun extractTarZstdFromDescriptorBounded(
        descriptor: FileDescriptor,
        offset: Long,
        compressedSize: Long,
        expectedOutputSize: Long?,
        destination: String,
        flags: Int,
        includes: Array<String>,
        progress: SbaNativeProgressListener?,
    ): Array<String> {
        validateRange(offset, compressedSize)
        require(expectedOutputSize == null || expectedOutputSize >= 0L) { "Invalid expected TAR size" }
        val tarFile = java.io.File.createTempFile("bare-sba-", ".tar")
        try {
            decodeDescriptorRangeToFile(descriptor, offset, compressedSize, tarFile, { written ->
                if (progress?.isCancellationRequested() == true) {
                    throw java.io.InterruptedIOException("Zstandard TAR extraction cancelled")
                }
                progress?.onProgress(written, expectedOutputSize ?: -1L)
            }, expectedOutputSize)
            java.io.FileInputStream(tarFile).use { tar ->
                return withDuplicate(tar.fd) { extractTarFromFdRaw(it, 0L, destination, flags, includes, progress) }
            }
        } finally {
            if (!tarFile.delete()) tarFile.deleteOnExit()
        }
    }

    @Throws(IOException::class)
    fun listTarEntriesFromDescriptor(descriptor: FileDescriptor, offset: Long): Array<SbaTarEntryInfo> =
        withDuplicate(descriptor) { listTarEntriesFromFdRaw(it, offset) }

    @Throws(IOException::class)
    fun listTarEntriesZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long): Array<SbaTarEntryInfo> =
        listTarEntriesZstdFromDescriptorBounded(descriptor, offset, compressedSize, null)

    @Throws(IOException::class)
    fun listTarEntriesZstdFromDescriptorBounded(
        descriptor: FileDescriptor,
        offset: Long,
        compressedSize: Long,
        expectedOutputSize: Long?,
    ): Array<SbaTarEntryInfo> {
        validateRange(offset, compressedSize)
        require(expectedOutputSize == null || expectedOutputSize >= 0L) { "Invalid expected TAR size" }
        val tarFile = java.io.File.createTempFile("bare-sba-list-", ".tar")
        try {
            decodeDescriptorRangeToFile(descriptor, offset, compressedSize, tarFile, null, expectedOutputSize)
            java.io.FileInputStream(tarFile).use { tar ->
                return withDuplicate(tar.fd) { listTarEntriesFromFdRaw(it, 0L) }
            }
        } finally {
            if (!tarFile.delete()) tarFile.deleteOnExit()
        }
    }

    private fun validateRange(offset: Long, length: Long) {
        require(offset >= 0L && length >= 0L && offset <= Long.MAX_VALUE - length) {
            "Invalid compressed TAR range"
        }
    }

    @Throws(IOException::class)
    private fun decodeDescriptorRangeToFile(
        descriptor: FileDescriptor,
        offset: Long,
        length: Long,
        destination: java.io.File,
        onProgress: ((Long) -> Unit)?,
        expectedOutputSize: Long? = null,
    ) {
        ParcelFileDescriptor.dup(descriptor).use { duplicate ->
            val bounded = DescriptorRangeInputStream(duplicate.fileDescriptor, offset, length)
            java.io.FileOutputStream(destination).use { sink ->
                com.github.luben.zstd.ZstdInputStream(bounded).use { decoder ->
                    val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                    var written = 0L
                    while (true) {
                        val count = decoder.read(buffer)
                        if (count < 0) break
                        if (count == 0) continue
                        if (expectedOutputSize != null &&
                            (written > expectedOutputSize || count.toLong() > expectedOutputSize - written)) {
                            throw IOException("Decoded TAR exceeds the SBA index size")
                        }
                        sink.write(buffer, 0, count)
                        written += count.toLong()
                        onProgress?.invoke(written)
                    }
                    if (expectedOutputSize != null && written != expectedOutputSize) {
                        throw java.io.EOFException("Decoded TAR size does not match the SBA index")
                    }
                }
            }
        }
    }

    /** Bounded positional reader that cannot consume the next archive record. */
    private class DescriptorRangeInputStream(
        private val descriptor: FileDescriptor,
        offset: Long,
        length: Long,
    ) : InputStream() {
        private var position = offset
        private var remaining = length

        override fun read(): Int {
            val single = ByteArray(1)
            val count = read(single, 0, 1)
            return if (count < 0) -1 else single[0].toInt() and 0xff
        }

        override fun read(buffer: ByteArray, offset: Int, length: Int): Int {
            if (offset < 0 || length < 0 || length > buffer.size - offset) {
                throw IndexOutOfBoundsException()
            }
            if (length == 0) return 0
            if (remaining == 0L) return -1
            val requested = minOf(length.toLong(), remaining).toInt()
            val count = try {
                android.system.Os.pread(descriptor, buffer, offset, requested, position)
            } catch (error: android.system.ErrnoException) {
                throw IOException("Unable to read compressed TAR range", error)
            }
            if (count <= 0) throw java.io.EOFException("Compressed TAR range is truncated")
            position += count.toLong()
            remaining -= count.toLong()
            return count
        }

        override fun close() {
            // The enclosing ParcelFileDescriptor owns this descriptor.
        }
    }

    private inline fun <T> withDuplicate(descriptor: FileDescriptor, operation: (Int) -> T): T {
        ParcelFileDescriptor.dup(descriptor).use { duplicate -> return operation(duplicate.fd) }
    }

    companion object {
        @JvmField val instance = SbaBareTarNative()
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
            tarBytes: Long,
            destination: String,
            flags: Int,
            includes: Array<String>,
            progress: SbaNativeProgressListener?,
        ): LongArray = instance.extractTarFromDescriptorWithStats(
            descriptor, tarBytes, destination, flags, includes, progress
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
