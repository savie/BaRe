package com.bareapps.filesystem

import com.topjohnwu.superuser.Shell
import java.io.IOException
import java.io.InputStream
import java.io.InterruptedIOException
import java.io.OutputStream
import java.nio.charset.StandardCharsets
import java.util.UUID
import java.util.concurrent.ExecutionException
import java.util.concurrent.Future

/**
 * Kotlin mapping of defpackage.gy7.
 *
 * Starts independent stdout/stderr readers before writing commands, appends
 * the reference marker protocol, then waits for both readers. This is a
 * protocol adapter for raw process streams; it is not wired into libsu's
 * public Shell.Job execution path because that API owns its own stream handling.
 */
internal class CommandTaskProtocol(
    private val taskWriters: List<CommandTaskSink>
) {
    constructor(taskWriter: CommandTaskWriter) : this(listOf(taskWriter))

    private val marker: String = UUID.randomUUID().toString()

    fun write(outputStream: OutputStream) {
        taskWriters.forEach { it.writeTo(outputStream) }
        outputStream.write(
            String.format(
                "__RET=\$?;echo %1\$s;echo %1\$s >&2;echo \$__RET;unset __RET\n",
                marker
            ).toByteArray(StandardCharsets.UTF_8)
        )
        outputStream.flush()
    }

    /**
     * Executes the stream protocol. The caller must provide a live shell's
     * three streams and serialize calls against that shell, as zd7.execTask
     * does with a synchronized method.
     */
    @Throws(IOException::class)
    fun execute(
        outputStream: OutputStream,
        stdout: InputStream,
        stderr: InputStream,
        stdoutLines: MutableList<String>,
        stderrLines: MutableList<String>
    ): Int {
        val stdoutFuture = Shell.EXECUTOR.submit(
            CommandExitCodeReader(stdout, stdoutLines, marker)::readExitCode
        )
        val stderrFuture = Shell.EXECUTOR.submit(
            { CommandStderrDrainer(stderr, stderrLines, marker).drain(); Unit }
        )
        try {
            write(outputStream)
            val exitCode = await(stdoutFuture)
            await(stderrFuture)
            return exitCode
        } catch (error: IOException) {
            stdoutFuture.cancel(true)
            stderrFuture.cancel(true)
            throw error
        } catch (error: RuntimeException) {
            stdoutFuture.cancel(true)
            stderrFuture.cancel(true)
            throw error
        }
    }

    private fun <T> await(future: Future<T>): T {
        try {
            return future.get()
        } catch (error: InterruptedException) {
            Thread.currentThread().interrupt()
            throw InterruptedIOException().also { it.initCause(error) }
        } catch (error: ExecutionException) {
            val cause = error.cause
            if (cause is IOException) throw cause
            throw IOException("Shell stream reader failed", cause)
        }
    }

    fun marker(): String = marker

    fun closeWriters() {
        taskWriters.forEach { it.close() }
    }
}
