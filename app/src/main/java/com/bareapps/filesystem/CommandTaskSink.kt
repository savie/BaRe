package com.bareapps.filesystem

import java.io.Closeable
import java.io.OutputStream

/**
 * Source mapping for defpackage.ae7.
 *
 * A command writer emits its payload to the shell task's stdin. The reference
 * interface also extends Closeable with a no-op default close implementation.
 */
internal fun interface CommandTaskSink : Closeable {
    fun writeTo(outputStream: OutputStream)

    override fun close() = Unit
}
