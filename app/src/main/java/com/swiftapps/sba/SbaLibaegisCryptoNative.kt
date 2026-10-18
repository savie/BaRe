package com.swiftapps.sba

import com.swiftapps.sba.internal.progress.SbaNativeProgressListener

class SbaLibaegisCryptoNative private constructor() {
    external fun isAvailable(): Boolean

    external fun decryptAegis128X2ChunkedEntryFdRaw(
        fd: Int, offset: Long, length: Int, key: ByteArray, nonce: ByteArray,
        metadata: ByteArray, chunkSize: Long, totalSize: Long, flags: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    external fun decryptAegis256ChunkedEntryFdRaw(
        fd: Int, offset: Long, length: Int, key: ByteArray, nonce: ByteArray,
        metadata: ByteArray, chunkSize: Long, totalSize: Long, flags: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    external fun encryptAegis256ChunkedEntryFdRaw(
        fd: Int, offset: Long, length: Int, key: ByteArray, nonce: ByteArray,
        metadata: ByteArray, chunkSize: Long, totalSize: Long, flags: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    companion object {
        @JvmField val a = SbaLibaegisCryptoNative()
        init { System.loadLibrary("sba_archive") }
    }
}
