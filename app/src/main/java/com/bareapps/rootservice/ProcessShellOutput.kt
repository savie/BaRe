package com.bareapps.rootservice

import java.io.FilterOutputStream
import java.io.FilterInputStream
import java.io.IOException
import java.io.InputStream
import java.io.OutputStream

/** Mapping of defpackage.yd7: close flushes; closeUnderlying closes shell stdin. */
internal class ProcessShellOutput(output: OutputStream) : FilterOutputStream(output) {
    override fun close() { this.`out`.flush() }

    @Throws(IOException::class)
    fun closeUnderlying() { super.close() }

    override fun write(buffer: ByteArray, offset: Int, length: Int) {
        this.`out`.write(buffer, offset, length)
    }
}

/** Mapping of defpackage.xd7: close is a no-op; teardown closes the underlying stream. */
internal class ProcessShellInput(input: InputStream) : FilterInputStream(input) {
    override fun close() = Unit

    @Throws(IOException::class)
    fun closeUnderlying() { this.`in`.close() }
}
