package com.swiftapps.sba

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener

class SbaZstdNative private constructor() {
    private external fun decompressZstdFdToFdRaw(
        inputFd: Int,
        outputFd: Int,
        maxBytes: Long,
        progress: SbaNativeProgressListener?,
    ): LongArray

    external fun compressZstdBytes(input: ByteArray, level: Int): ByteArray
    external fun decompressZstdBytes(input: ByteArray): ByteArray

    companion object {
        @JvmField val a = SbaZstdNative()
        init { System.loadLibrary("sba_archive") }
    }
}
