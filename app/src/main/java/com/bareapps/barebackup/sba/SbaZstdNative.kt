package com.bareapps.barebackup.sba

import android.os.ParcelFileDescriptor
import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener
import java.io.FileDescriptor
import java.io.IOException

/** JNI surface for Zstandard operations used by the SBA archive pipeline. */
class SbaZstdNative private constructor() {
    private external fun decompressZstdFdToFdRaw(inputFd: Int, outputFd: Int, maxBytes: Long, progress: SbaNativeProgressListener?): LongArray
    external fun compressZstdBytes(input: ByteArray, level: Int): ByteArray
    external fun decompressZstdBytes(input: ByteArray): ByteArray

    /** Uses temporary duplicates, leaving descriptor ownership with the caller. */
    @Throws(IOException::class)
    fun decompressDescriptorToDescriptor(input: FileDescriptor, output: FileDescriptor, progress: SbaNativeProgressListener?): LongArray {
        ParcelFileDescriptor.dup(input).use { inputDuplicate ->
            ParcelFileDescriptor.dup(output).use { outputDuplicate ->
                return decompressZstdFdToFdRaw(inputDuplicate.fd, outputDuplicate.fd, -1L, progress)
            }
        }
    }

    companion object {
        @JvmField val instance = SbaZstdNative()
        @JvmField val a = instance
        init { System.loadLibrary("sba_archive") }
    }
}
