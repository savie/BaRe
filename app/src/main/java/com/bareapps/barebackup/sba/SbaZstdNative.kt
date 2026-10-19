package com.bareapps.barebackup.sba

import android.os.ParcelFileDescriptor
import com.bareapps.barebackup.sba.internal.progress.SbaNativeProgressListener
import com.github.luben.zstd.ZstdInputStream
import com.github.luben.zstd.ZstdOutputStream
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.FileDescriptor
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException
import java.io.OutputStream

/** Zstandard operations used by the SBA archive pipeline. */
class SbaZstdNative private constructor() {
    private external fun decompressZstdFdToFdRaw(inputFd: Int, outputFd: Int, maxBytes: Long, progress: SbaNativeProgressListener?): LongArray

    /**
     * Compresses a byte array as one Zstandard frame using the same explicit
     * compression-level contract as the reference JNI method.
     */
    fun compressZstdBytes(input: ByteArray, level: Int): ByteArray =
        com.github.luben.zstd.Zstd.compress(input, level)

    /**
     * Decompresses Zstandard frame data without requiring the uncompressed size
     * to be supplied by the caller, matching the reference method's signature.
     */
    @Throws(IOException::class)
    fun decompressZstdBytes(input: ByteArray): ByteArray {
        val output = ByteArrayOutputStream()
        ZstdInputStream(ByteArrayInputStream(input)).use { decoder ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val count = decoder.read(buffer)
                if (count < 0) break
                if (count == 0) continue
                output.write(buffer, 0, count)
            }
        }
        return output.toByteArray()
    }

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

        val inputDuplicate = ParcelFileDescriptor.dup(input)
        val outputDuplicate = try {
            ParcelFileDescriptor.dup(output)
        } catch (failure: Throwable) {
            inputDuplicate.close()
            throw failure
        }
        // AutoClose streams own their duplicated PFDs. Do not wrap the same
        // descriptors in FileInputStream/FileOutputStream: that creates a
        // second close owner and risks closing a recycled descriptor number.
        val source = ParcelFileDescriptor.AutoCloseInputStream(inputDuplicate)
        val sink = ParcelFileDescriptor.AutoCloseOutputStream(outputDuplicate)
        var decoded: ZstdInputStream? = null
        try {
            var inputCount = 0L
            val countingSource = object : java.io.FilterInputStream(source) {
                override fun read(): Int {
                    val value = super.read()
                    if (value >= 0) inputCount++
                    return value
                }
                override fun read(bytes: ByteArray, offset: Int, length: Int): Int {
                    val count = super.read(bytes, offset, length)
                    if (count > 0) inputCount += count.toLong()
                    return count
                }
            }
            val decoder = ZstdInputStream(countingSource)
            decoded = decoder
            var outputCount = 0L
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                if (progress?.isCancellationRequested() == true) {
                    throw java.io.InterruptedIOException("Zstandard decompression cancelled")
                }
                val count = decoder.read(buffer)
                if (count < 0) break
                if (count == 0) continue
                if (maxOutputBytes >= 0L && count.toLong() > maxOutputBytes - outputCount) {
                    throw IOException("Zstandard output exceeds configured limit")
                }
                sink.write(buffer, 0, count)
                outputCount += count.toLong()
                progress?.onProgress(outputCount, maxOutputBytes.takeIf { it >= 0L } ?: -1L)
            }
            sink.flush()
            return longArrayOf(inputCount, outputCount)
        } finally {
            try {
                decoded?.close()
            } finally {
                try {
                    source.close()
                } finally {
                    sink.close()
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
        val inputDuplicate = ParcelFileDescriptor.dup(input)
        val outputDuplicate = try {
            ParcelFileDescriptor.dup(output)
        } catch (failure: Throwable) {
            inputDuplicate.close()
            throw failure
        }
        val source = ParcelFileDescriptor.AutoCloseInputStream(inputDuplicate)
        val sink = ParcelFileDescriptor.AutoCloseOutputStream(outputDuplicate)
        var encoder: ZstdOutputStream? = null
        var outputCount = 0L
        try {
            val countingSink = object : OutputStream() {
                override fun write(value: Int) {
                    sink.write(value)
                    outputCount++
                }
                override fun write(bytes: ByteArray, offset: Int, length: Int) {
                    sink.write(bytes, offset, length)
                    outputCount += length
                }
                override fun flush() = sink.flush()
                // The outer method owns and closes the sink/PFD.
                override fun close() = sink.flush()
            }
            encoder = ZstdOutputStream(countingSink, level)
            var inputCount = 0L
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                if (progress?.isCancellationRequested() == true) {
                    throw java.io.InterruptedIOException("Zstandard compression cancelled")
                }
                val count = source.read(buffer)
                if (count < 0) break
                if (count == 0) continue
                encoder.write(buffer, 0, count)
                inputCount += count.toLong()
                progress?.onProgress(inputCount, -1L)
            }
            encoder.close()
            encoder = null
            sink.flush()
            return longArrayOf(inputCount, outputCount)
        } finally {
            try {
                try { encoder?.close() } finally { source.close() }
            } finally {
                sink.close()
            }
        }
    }

    /**
     * Compresses a regular file into a caller-owned output descriptor without
     * loading the file into memory. The file stream is closed by this method.
     */
    @Throws(IOException::class)
    fun compressFileToDescriptor(
        inputFile: java.io.File,
        output: FileDescriptor,
        level: Int = 3,
        progress: SbaNativeProgressListener? = null,
    ): LongArray {
        require(inputFile.isFile && inputFile.canRead()) { "Input must be a readable regular file" }
        FileInputStream(inputFile).use { source ->
            return compressDescriptorToDescriptor(source.fd, output, level, progress)
        }
    }

    /**
     * Decompresses one bounded compressed range into a caller-owned descriptor.
     * This avoids decoding trailing data belonging to the next archive record.
     */
    @Throws(IOException::class)
    fun decompressRangeToDescriptor(
        input: FileDescriptor,
        offset: Long,
        compressedLength: Long,
        output: FileDescriptor,
        progress: SbaNativeProgressListener? = null,
        maxOutputBytes: Long = -1L,
    ): LongArray {
        require(offset >= 0L && compressedLength >= 0L && offset <= Long.MAX_VALUE - compressedLength) {
            "Invalid compressed input range"
        }
        require(maxOutputBytes >= -1L) { "maxOutputBytes must be -1 or non-negative" }
        val temporary = java.io.File.createTempFile("bare-zstd-range-", ".zst")
        try {
            FileOutputStream(temporary).use { spool ->
                ParcelFileDescriptor.dup(input).use { duplicate ->
                    val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                    var position = offset
                    var remaining = compressedLength
                    while (remaining > 0L) {
                        val count = try {
                            android.system.Os.pread(duplicate.fileDescriptor, buffer, 0,
                                minOf(buffer.size.toLong(), remaining).toInt(), position)
                        } catch (error: android.system.ErrnoException) {
                            throw IOException("Unable to read compressed descriptor range", error)
                        }
                        if (count <= 0) throw java.io.EOFException("Compressed descriptor range is truncated")
                        spool.write(buffer, 0, count)
                        position += count.toLong()
                        remaining -= count.toLong()
                    }
                }
            }
            FileInputStream(temporary).use { source ->
                val duplicate = ParcelFileDescriptor.dup(output)
                val sink = ParcelFileDescriptor.AutoCloseOutputStream(duplicate)
                try {
                    ZstdInputStream(source).use { decoder ->
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        var outputCount = 0L
                        try {
                            while (true) {
                                if (progress?.isCancellationRequested() == true) {
                                    throw java.io.InterruptedIOException("Zstandard decompression cancelled")
                                }
                                val count = decoder.read(buffer)
                                if (count < 0) break
                                if (count == 0) continue
                                if (maxOutputBytes >= 0L && count.toLong() > maxOutputBytes - outputCount) {
                                    throw IOException("Zstandard output exceeds configured limit")
                                }
                                sink.write(buffer, 0, count)
                                outputCount += count.toLong()
                                progress?.onProgress(outputCount, maxOutputBytes)
                            }
                            sink.flush()
                            return longArrayOf(compressedLength, outputCount)
                        } finally {
                            sink.flush()
                        }
                    }
                } finally {
                    sink.close()
                }
            }
        } finally {
            if (!temporary.delete()) temporary.deleteOnExit()
        }
    }

    companion object {
        @JvmField val instance = SbaZstdNative()
        @JvmField val a = instance

        /** Semantic equivalent of the reference's descriptor-to-descriptor helper. */
        @JvmStatic
        @Throws(IOException::class)
        fun decompressDescriptor(
            input: FileDescriptor,
            output: FileDescriptor,
            progress: SbaNativeProgressListener?,
        ): LongArray = instance.decompressDescriptorToDescriptor(input, output, progress, -1L)

        init { System.loadLibrary("sba_archive") }
    }
}
