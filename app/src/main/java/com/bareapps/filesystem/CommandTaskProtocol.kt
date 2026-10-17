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
 * Kotlin port of defpackage.gy7.
 *
 * Source order is preserved: submit both readers, write every ae7 payload, write
 * the shared marker bytes, flush, await stdout/exit status, then await stderr.
 * The reference does not cancel the futures or restore the interrupt flag when
 * InterruptedException/ExecutionException is translated to InterruptedIOException.
 */
internal class CommandTaskProtocol(
    private val taskWriters: List<CommandTaskSink>
) {
    constructor(taskWriter: CommandTaskWriter) : this(listOf(taskWriter))

    companion object {
        // gy7.c and gy7.d are static in the source and shared by all task instances.
        val c: String = UUID.randomUUID().toString()
        val d: ByteArray = String.format(
            "__RET=\$?;echo %1\$s;echo %1\$s >&2;echo \$__RET;unset __RET\n",
            c
        ).toByteArray(StandardCharsets.UTF_8)
    }

    @Throws(IOException::class)
    fun write(outputStream: OutputStream) {
        for (writer in taskWriters) {
            writer.writeTo(outputStream)
        }
        outputStream.write(d)
        outputStream.flush()
    }

    /**
     * Port of gy7.a(outputStream, inputStream, inputStream2).
     * Callers remain responsible for serializing access to a shell's streams.
     */
    @Throws(IOException::class)
    fun execute(
        outputStream: OutputStream,
        stdout: InputStream,
        stderr: InputStream,
        stdoutLines: MutableList<String>,
        stderrLines: MutableList<String>
    ): Int {
        val stdoutFuture: Future<Int> = Shell.EXECUTOR.submit(
            CommandExitCodeReader(stdout, stdoutLines, c)::readExitCode
        )
        val stderrFuture: Future<Unit> = Shell.EXECUTOR.submit(
            java.util.concurrent.Callable {
                CommandStderrDrainer(stderr, stderrLines, c).drain()
            }
        )

        write(outputStream)
        try {
            val exitCode = await(stdoutFuture)
            await(stderrFuture)
            return exitCode
        } catch (exception: InterruptedException) {
            throw InterruptedIOException().also { it.initCause(exception) }
        } catch (exception: ExecutionException) {
            throw InterruptedIOException().also { it.initCause(exception) }
        }
    }

    private fun <T> await(future: Future<T>): T = future.get()

    fun marker(): String = c

    fun closeWriters() {
        for (writer in taskWriters) {
            writer.close()
        }
    }
}
