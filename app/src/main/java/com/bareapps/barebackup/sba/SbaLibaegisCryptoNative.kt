package com.bareapps.barebackup.sba

import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener

/**
 * Target-package declarations aligned to methods declared by the decompiled reference class.
 * The reference binary also exports an encryptAegis256 JNI symbol, but the decompiled
 * reference Kotlin/Java class does not declare that method; it is not exposed here.
 */
class SbaLibaegisCryptoNative private constructor() {
    external fun isAvailable(): Boolean

    private external fun decryptAegis128X2ChunkedEntryFdRaw(
        fd: Int, offset: Long, length: Int, key: ByteArray, nonce: ByteArray,
        metadata: ByteArray, chunkSize: Long, totalSize: Long, flags: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    private external fun decryptAegis256ChunkedEntryFdRaw(
        fd: Int, offset: Long, length: Int, key: ByteArray, nonce: ByteArray,
        metadata: ByteArray, chunkSize: Long, totalSize: Long, flags: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    companion object {
        @JvmField val a = SbaLibaegisCryptoNative()
        init { System.loadLibrary("sba_archive") }
    }
}
