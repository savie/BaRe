package com.bareapps.rootservice

import java.io.FilterOutputStream
import java.io.FilterInputStream
import java.io.IOException
import java.io.InputStream
import java.io.OutputStream

/** Mapping of defpackage.yd7: close flushes; explicit a() closes the stream. */
internal class ProcessShellOutput(output: OutputStream) : FilterOutputStream(output) {
    private val underlying = output

    override fun close() {
        underlying.flush()
    }

    @Throws(IOException::class)
    fun closeUnderlying() {
        underlying.close()
    }

    override fun write(buffer: ByteArray, offset: Int, length: Int) {
        underlying.write(buffer, offset, length)
    }
}

/** Mapping of defpackage.xd7: close is a no-op; explicit a() closes the stream. */
internal class ProcessShellInput(input: InputStream) : FilterInputStream(input) {
    private val underlying = input

    override fun close() = Unit

    @Throws(IOException::class)
    fun closeUnderlying() {
        underlying.close()
    }

    /**
     * Mirrors ShellUtils.a(InputStream) before each task: discard stale bytes
     * currently queued on the process stream without closing the stream.
     */
    @Throws(IOException::class)
    fun discardAvailable() {
        while (underlying.available() > 0) {
            val skipped = underlying.skip(underlying.available().toLong())
            if (skipped <= 0) break
        }
    }
}
