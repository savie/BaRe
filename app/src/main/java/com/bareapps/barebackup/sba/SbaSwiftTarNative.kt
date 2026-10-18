package com.bareapps.barebackup.sba

import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener
import com.bareapps.barebackup.sba.internal.tar.SbaTarEntryInfo

class SbaSwiftTarNative private constructor() {
    external fun extractTarFromFdRaw(
        fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>,
        progress: SbaNativeProgressListener?,
    ): Array<String>
    external fun extractTarFromFdWithStatsRaw(
        fd: Int, offset: Long, destination: String, flags: Int, includes: Array<String>,
        progress: SbaNativeProgressListener?,
    ): LongArray
    external fun extractTarZstdFromFdRaw(
        fd: Int, offset: Long, compressedSize: Long, destination: String, flags: Int,
        includes: Array<String>, progress: SbaNativeProgressListener?,
    ): Array<String>
    external fun listTarEntriesFromFdRaw(fd: Int, offset: Long): Array<SbaTarEntryInfo>
    external fun listTarEntriesZstdFromFdRaw(
        fd: Int, offset: Long, compressedSize: Long,
    ): Array<SbaTarEntryInfo>
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

    companion object {
        @JvmField val a = SbaSwiftTarNative()
        init { System.loadLibrary("sba_archive") }
    }
}
