package com.bareapps.filesystem

import java.io.IOException
import java.nio.ByteBuffer
import java.nio.channels.FileChannel

/**
 * Kotlin port of `org.swiftapps.filesystem.a.a(FileChannel, long, byte[], int, int)`.
 *
 * Writes the requested byte-array slice at an explicit file offset. The write
 * position advances by the number of bytes actually written, so partial writes
 * are handled without changing the caller's channel position.
 */
object RandomAccessFileChannelWriter {

    @JvmStatic
    @Throws(IOException::class)
    fun write(
        fileChannel: FileChannel,
        offset: Long,
        bytes: ByteArray,
        bufferOffset: Int,
        length: Int
    ) {
        // Reference c6.f("offset < 0") throws IllegalArgumentException.
        if (offset < 0L) {
            throw IllegalArgumentException("offset < 0")
        }

        // Preserve the reference's validation order and Int arithmetic.
        if (bufferOffset < 0 || length < 0 || bufferOffset + length > bytes.size) {
            // Reference b6.b(size, message) appends the array size and throws IllegalArgumentException.
            throw IllegalArgumentException(
                "Invalid buffer range: off=$bufferOffset, len=$length, size=${bytes.size}"
            )
        }

        val buffer = ByteBuffer.wrap(bytes, bufferOffset, length)
        var fileOffset = offset
        while (buffer.hasRemaining()) {
            val written = fileChannel.write(buffer, fileOffset)
            if (written <= 0) {
                // Reference y5.m(message) throws IllegalArgumentException.
                throw IllegalArgumentException(
                    "Unable to write random file data at offset $fileOffset"
                )
            }
            fileOffset += written.toLong()
        }
    }
}
