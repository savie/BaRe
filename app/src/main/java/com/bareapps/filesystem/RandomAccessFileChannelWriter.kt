package com.bareapps.filesystem

import defpackage.b6
import defpackage.c6
import defpackage.u48
import defpackage.xs1
import defpackage.y5
import java.io.IOException
import java.nio.ByteBuffer
import java.nio.channels.FileChannel

/**
 * Kotlin port of org.swiftapps.filesystem.a.
 *
 * Method a(FileChannel, long, byte[], int, int) is kept as the source-shaped
 * entry point. The obfuscated validation/error helpers are deliberately retained;
 * their behavior is not replaced with guessed IllegalArgumentException logic.
 */
object RandomAccessFileChannelWriter {

    @JvmStatic
    @Throws(IOException::class)
    fun a(fileChannel: FileChannel, j: Long, bArr: ByteArray, i: Int, i2: Int) {
        var offset = j
        if (offset < 0L) {
            c6.f("offset < 0")
            return
        }
        if (i < 0 || i2 < 0 || i + i2 > bArr.size) {
            b6.b(bArr.size, xs1.n("Invalid buffer range: off=", i, ", len=", ", size=", i2))
            return
        }

        val byteBufferWrap = ByteBuffer.wrap(bArr, i, i2)
        while (byteBufferWrap.hasRemaining()) {
            val iWrite = fileChannel.write(byteBufferWrap, offset)
            if (iWrite <= 0) {
                y5.m(u48.l(offset, "Unable to write random file data at offset "))
                return
            }
            offset += iWrite.toLong()
        }
    }

    /** Descriptive Kotlin entry point for existing callers. */
    @JvmStatic
    @Throws(IOException::class)
    fun write(
        fileChannel: FileChannel,
        offset: Long,
        bytes: ByteArray,
        bufferOffset: Int,
        length: Int
    ) = a(fileChannel, offset, bytes, bufferOffset, length)
}
