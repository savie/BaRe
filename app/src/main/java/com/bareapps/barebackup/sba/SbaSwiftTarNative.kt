package com.bareapps.barebackup.sba

import android.os.ParcelFileDescriptor
import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener
import com.bareapps.barebackup.sba.internal.tar.SbaTarEntryInfo
import java.io.FileDescriptor
import java.io.IOException

/** JNI surface for SBA TAR operations. Caller-owned descriptors are never closed. */
class SbaSwiftTarNative private constructor() {
    external fun extractTarFromFdRaw(fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String>
    external fun extractTarFromFdWithStatsRaw(fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): LongArray
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
    fun extractTarFromDescriptor(descriptor: FileDescriptor, offset: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String> =
        withDuplicate(descriptor) { extractTarFromFdRaw(it, offset, destination, flags, includes, progress) }

    @Throws(IOException::class)
    fun extractTarZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long, destination: String, flags: Int, includes: Array<String>, progress: SbaNativeProgressListener?): Array<String> =
        withDuplicate(descriptor) { extractTarZstdFromFdRaw(it, offset, compressedSize, destination, flags, includes, progress) }

    @Throws(IOException::class)
    fun listTarEntriesFromDescriptor(descriptor: FileDescriptor, offset: Long): Array<SbaTarEntryInfo> =
        withDuplicate(descriptor) { listTarEntriesFromFdRaw(it, offset) }

    @Throws(IOException::class)
    fun listTarEntriesZstdFromDescriptor(descriptor: FileDescriptor, offset: Long, compressedSize: Long): Array<SbaTarEntryInfo> =
        withDuplicate(descriptor) { listTarEntriesZstdFromFdRaw(it, offset, compressedSize) }

    private inline fun <T> withDuplicate(descriptor: FileDescriptor, operation: (Int) -> T): T {
        ParcelFileDescriptor.dup(descriptor).use { duplicate -> return operation(duplicate.fd) }
    }

    companion object {
        @JvmField val instance = SbaSwiftTarNative()
        @JvmField val a = instance
        init { System.loadLibrary("sba_archive") }
    }
}
