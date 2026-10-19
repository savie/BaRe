package com.bareapps.sba

import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import java.io.FileDescriptor

/**
 * Target-package declarations aligned to methods declared by the decompiled reference class.
 * The reference binary also exports an encryptAegis256 JNI symbol, but the decompiled
 * reference Kotlin/Java class does not declare that method; it is not exposed here.
 */
class SbaLibaegisCryptoNative private constructor() {
    external fun isAvailable(): Boolean

    /**
     * Reference JNI contract: inputFd is already positioned at the encrypted payload;
     * storedSize is the ciphertext byte count; outputFd is the destination pipe/file descriptor.
     * entryNameUtf8 is UTF-8 bytes, entryIndex is the zero-based SBA index-record order,
     * compressedSize is the decrypted/compressed byte count, and chunkSize is the archive chunk size.
     */
    internal external fun decryptAegis128X2ChunkedEntryFdRaw(
        inputFd: FileDescriptor, storedSize: Long, outputFd: FileDescriptor, key: ByteArray, nonceSeed: ByteArray,
        entryNameUtf8: ByteArray, entryIndex: Long, compressedSize: Long, chunkSize: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    internal external fun decryptAegis256ChunkedEntryFdRaw(
        inputFd: FileDescriptor, storedSize: Long, outputFd: FileDescriptor, key: ByteArray, nonceSeed: ByteArray,
        entryNameUtf8: ByteArray, entryIndex: Long, compressedSize: Long, chunkSize: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    internal external fun encryptAegis128X2ChunkedEntryFdRaw(
        inputFd: FileDescriptor, plainSize: Long, outputFd: FileDescriptor, key: ByteArray, nonceSeed: ByteArray,
        entryNameUtf8: ByteArray, entryOrder: Long, chunkSize: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    internal external fun encryptAegis256ChunkedEntryFdRaw(
        inputFd: FileDescriptor, plainSize: Long, outputFd: FileDescriptor, key: ByteArray, nonceSeed: ByteArray,
        entryNameUtf8: ByteArray, entryOrder: Long, chunkSize: Int,
        progress: SbaNativeProgressListener?,
    ): LongArray

    companion object {
        @JvmField val a = SbaLibaegisCryptoNative()
        init { System.loadLibrary("sba_archive") }
    }
}
