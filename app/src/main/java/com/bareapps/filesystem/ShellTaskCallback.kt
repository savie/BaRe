package com.bareapps.filesystem

import java.io.InputStream
import java.io.OutputStream

/**
 * Source mapping for defpackage.pd7: callback invoked with the shell's stdin,
 * stdout and stderr streams.
 */
internal fun interface ShellTaskCallback {
    fun execute(
        outputStream: OutputStream,
        stdout: InputStream,
        stderr: InputStream
    )
}
