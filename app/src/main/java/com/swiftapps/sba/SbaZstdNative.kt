package com.swiftapps.sba

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener

class SbaZstdNative private constructor() {
    external fun compressZstdBytes(input: ByteArray, level: Int): ByteArray
    external fun decompressZstdBytes(input: ByteArray): ByteArray
    external fun compressZstdFdToFdRaw(
        inputFd: Int, outputFd: Int, level: Int, progress: SbaNativeProgressListener?,
    ): LongArray
    external fun compressZstdFileToFdRaw(
        inputPath: String, outputFd: Int, level: Int, progress: SbaNativeProgressListener?,
    ): LongArray
    external fun decompressZstdFdToFdRaw(
        inputFd: Int, outputFd: Int, maxBytes: Long, progress: SbaNativeProgressListener?,
    ): LongArray

    companion object {
        @JvmField val a = SbaZstdNative()
        init { System.loadLibrary("sba_archive") }
    }
}
