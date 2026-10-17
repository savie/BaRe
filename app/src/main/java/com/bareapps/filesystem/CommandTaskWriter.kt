package com.bareapps.filesystem

import java.io.OutputStream
import java.nio.charset.StandardCharsets

/**
 * Rewrite mapping for SwiftBackup 5.1.0 (620) `defpackage.dm1`.
 *
 * Reference dm1 writes each supplied command as UTF-8 followed by a newline.
 * This small behavior is directly supported by the decompiled source.
 */
internal class CommandTaskWriter(
    private val commands: Array<out String>
) : CommandTaskSink {
    override fun writeTo(outputStream: OutputStream) {
        commands.forEach { command ->
            outputStream.write(command.toByteArray(StandardCharsets.UTF_8))
            outputStream.write('\n'.code)
        }
    }
}
