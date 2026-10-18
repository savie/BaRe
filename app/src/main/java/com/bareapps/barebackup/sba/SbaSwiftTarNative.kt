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
        require(offset >= 0L && compressedSize >= 0L) { "Invalid compressed TAR range" }
        val temporary = java.io.File.createTempFile("bare-sba-", ".tar")
        try {
            ParcelFileDescriptor.dup(descriptor).use { duplicate ->
                java.io.FileInputStream(duplicate.fileDescriptor).use { source ->
                    // Positioning uses a duplicate descriptor, so the caller's file offset is unchanged.
                    source.channel.position(offset)
                    java.io.FileOutputStream(temporary).use { sink ->
                        val decoder = com.github.luben.zstd.ZstdInputStream(source)
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        var remaining = compressedSize
                        try {
                            while (remaining > 0L) {
                                if (progress?.isCancellationRequested() == true) {
                                    throw java.io.InterruptedIOException("Zstandard TAR extraction cancelled")
                                }
                                val requested = minOf(buffer.size.toLong(), remaining).toInt()
                                val count = decoder.read(buffer, 0, requested)
                                if (count < 0) break
                                if (count == 0) continue
                                sink.write(buffer, 0, count)
                                remaining -= count.toLong()
                                progress?.onProgress(compressedSize - remaining, compressedSize)
                            }
                        } finally {
                            decoder.close()
                        }
                    }
                }
            }
            java.io.FileInputStream(temporary).use { tar ->
                return withDuplicate(tar.fd) { extractTarFromFdRaw(it, 0L, destination, flags, includes, progress) }
            }
        } finally {
            if (temporary.exists() && !temporary.delete()) temporary.deleteOnExit()
        }
    }

    @Throws(IOException::class)
    fun listTarEntriesFromDescriptor(descriptor: FileDescriptor, offset: Long): Array<SbaTarEntryInfo> =
        withDuplicate(descriptor) { listTarEntriesFromFdRaw(it, offset) }

    @Throws(IOException::class)
    fun listTarEntriesZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long): Array<SbaTarEntryInfo> {
        require(offset >= 0L && compressedSize >= 0L) { "Invalid compressed TAR range" }
        val temporary = java.io.File.createTempFile("bare-sba-list-", ".tar")
        try {
            ParcelFileDescriptor.dup(descriptor).use { duplicate ->
                java.io.FileInputStream(duplicate.fileDescriptor).use { source ->
                    source.channel.position(offset)
                    java.io.FileOutputStream(temporary).use { sink ->
                        val decoder = com.github.luben.zstd.ZstdInputStream(source)
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        var remaining = compressedSize
                        try {
                            while (remaining > 0L) {
                                val requested = minOf(buffer.size.toLong(), remaining).toInt()
                                val count = decoder.read(buffer, 0, requested)
                                if (count < 0) break
                                if (count == 0) continue
                                sink.write(buffer, 0, count)
                                remaining -= count.toLong()
                            }
                        } finally {
                            decoder.close()
                        }
                    }
                }
            }
            java.io.FileInputStream(temporary).use { tar ->
                return withDuplicate(tar.fd) { listTarEntriesFromFdRaw(it, 0L) }
            }
        } finally {
            if (temporary.exists() && !temporary.delete()) temporary.deleteOnExit()
        }
    }

    private inline fun <T> withDuplicate(descriptor: FileDescriptor, operation: (Int) -> T): T {
        ParcelFileDescriptor.dup(descriptor).use { duplicate -> return operation(duplicate.fd) }
    }

    companion object {
        @JvmField val instance = SbaSwiftTarNative()
        @JvmField val a = instance
        init { System.loadLibrary("sba_archive") }
    }
}
