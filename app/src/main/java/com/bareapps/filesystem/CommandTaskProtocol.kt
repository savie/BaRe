package com.bareapps.filesystem

import java.io.InputStream
import java.io.InterruptedIOException
import java.io.OutputStream
import java.nio.charset.StandardCharsets
import java.util.UUID

/**
 * Rewrite mapping for SwiftBackup 5.1.0 (620) `defpackage.gy7`.
 *
 * Reference gy7 writes task objects, emits a unique marker on stdout and
 * stderr, then reads the process exit status from the marker protocol while
 * collecting the two streams independently.
 *
 * This file records the protocol constants and command-task writing behavior.
 * TODO(parity): port marker parsing and concurrent stream collection into the
 * executor before treating this as a replacement for zd7.execTask.
 */
internal class CommandTaskProtocol(
    private val taskWriter: CommandTaskWriter
) {
    private val marker: String = UUID.randomUUID().toString()

    fun write(outputStream: OutputStream) {
        taskWriter.writeTo(outputStream)
        outputStream.write(
            String.format(
                "__RET=\$?;echo %1\$s;echo %1\$s >&2;echo \$__RET;unset __RET\n",
                marker
            ).toByteArray(StandardCharsets.UTF_8)
        )
        outputStream.flush()
    }

    fun marker(): String = marker

    // TODO(parity): source uses separate asynchronous readers and waits for both
    // futures; this adapter intentionally does not claim to implement that.
}
