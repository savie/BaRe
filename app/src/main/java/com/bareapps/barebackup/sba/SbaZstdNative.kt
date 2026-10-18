package com.bareapps.barebackup.sba

import android.os.ParcelFileDescriptor
import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener
import com.github.luben.zstd.ZstdInputStream
import com.github.luben.zstd.ZstdOutputStream
import java.io.FileDescriptor
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException

/** Zstandard operations used by the SBA archive pipeline. */
class SbaZstdNative private constructor() {
    private external fun decompressZstdFdToFdRaw(inputFd: Int, outputFd: Int, maxBytes: Long, progress: SbaNativeProgressListener?): LongArray

    external fun compressZstdBytes(input: ByteArray, level: Int): ByteArray
    external fun decompressZstdBytes(input: ByteArray): ByteArray

    /**
     * Decompresses a Zstandard stream between caller-owned descriptors.
     * The stream is decoded in bounded memory; original descriptors remain caller-owned.
     * Result values are [compressed bytes consumed, decompressed bytes written].
     */
    @Throws(IOException::class)
    fun decompressDescriptorToDescriptor(
        input: FileDescriptor,
        output: FileDescriptor,
        progress: SbaNativeProgressListener?,
        maxOutputBytes: Long = -1L,
    ): LongArray {
        require(maxOutputBytes >= -1L) { "maxOutputBytes must be -1 or non-negative" }
        ParcelFileDescriptor.dup(input).use { inputDuplicate ->
            ParcelFileDescriptor.dup(output).use { outputDuplicate ->
                val source = FileInputStream(inputDuplicate.fileDescriptor)
                val decoded = ZstdInputStream(source)
                val sink = FileOutputStream(outputDuplicate.fileDescriptor)
                var inputCount = 0L
                var outputCount = 0L
                val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                try {
                    while (true) {
                        if (progress?.isCancellationRequested() == true) {
                            throw java.io.InterruptedIOException("Zstandard decompression cancelled")
                        }
                        val count = decoded.read(buffer)
                        if (count < 0) break
                        if (count == 0) continue
                        if (maxOutputBytes >= 0L && outputCount + count > maxOutputBytes) {
                            throw IOException("Zstandard output exceeds configured limit")
                        }
                        sink.write(buffer, 0, count)
                        outputCount += count
                        inputCount = source.channel.position()
                        progress?.onProgress(outputCount, maxOutputBytes.takeIf { it >= 0L } ?: -1L)
                    }
                    sink.flush()
                    return longArrayOf(inputCount, outputCount)
                } finally {
                    try { decoded.close() } finally { sink.flush() }
                }
            }
        }
    }

    /**
     * Compresses bytes from one caller-owned descriptor into another descriptor.
     * The source and destination are duplicated so this method never closes the
     * caller's descriptors. Returns [input bytes consumed, compressed bytes written].
     */
    @Throws(IOException::class)
    fun compressDescriptorToDescriptor(
        input: FileDescriptor,
        output: FileDescriptor,
        level: Int = 3,
        progress: SbaNativeProgressListener? = null,
    ): LongArray {
        ParcelFileDescriptor.dup(input).use { inputDuplicate ->
            ParcelFileDescriptor.dup(output).use { outputDuplicate ->
                val source = FileInputStream(inputDuplicate.fileDescriptor)
                val sink = FileOutputStream(outputDuplicate.fileDescriptor)
                val encoder = ZstdOutputStream(sink, level)
                var inputCount = 0L
                var outputCount = 0L
                val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                try {
                    while (true) {
                        if (progress?.isCancellationRequested() == true) {
                            throw java.io.InterruptedIOException("Zstandard compression cancelled")
                        }
                        val count = source.read(buffer)
                        if (count < 0) break
                        if (count == 0) continue
                        encoder.write(buffer, 0, count)
                        inputCount += count
                        progress?.onProgress(inputCount, -1L)
                    }
                    encoder.close()
                    outputCount = outputDuplicate.fileDescriptor.let { descriptor ->
                        // Descriptor offsets are shared by dup; query the output stream's channel.
                        sink.channel.position()
                    }
                    return longArrayOf(inputCount, outputCount)
                } finally {
                    try { encoder.close() } catch (_: IOException) { }
                }
            }
        }
    }

    companion object {
        @JvmField val instance = SbaZstdNative()
        @JvmField val a = instance
        init { System.loadLibrary("sba_archive") }
    }
}
