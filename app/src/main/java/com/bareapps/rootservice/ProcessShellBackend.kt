package com.bareapps.rootservice

import com.bareapps.filesystem.CommandTaskProtocol
import com.bareapps.filesystem.CommandTaskSink
import java.io.BufferedOutputStream
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader
import java.io.InterruptedIOException
import java.nio.charset.StandardCharsets
import java.util.concurrent.ExecutionException
import java.util.concurrent.FutureTask
import java.util.concurrent.TimeUnit

/**
 * Process-backed lifecycle boundary derived from defpackage.zd7/ex0.
 * Owns a Process directly and serializes task execution through the r77-shaped
 * worker queue. It is not substituted into ShellSelectionRegistry yet.
 */
internal class ProcessShellBackend private constructor(
    private val process: Process,
    private val startupTimeoutSeconds: Long
) : java.io.Closeable {

    private val worker = ProcessShellWorker()
    private val stdin = ProcessShellOutput(
        process.outputStream.let { stream ->
            if (stream is BufferedOutputStream) stream else BufferedOutputStream(stream)
        }
    )
    private val stdout = ProcessShellInput(process.inputStream)
    private val stderr = ProcessShellInput(process.errorStream)
    @Volatile private var status: Int = -1
    @Volatile private var closed = false

    init { verifyShell() }

    val shellStatus: Int get() = status
    val isAlive: Boolean
        get() {
            if (status < 0) return false
            return try { process.exitValue(); false }
            catch (_: IllegalThreadStateException) { true }
        }
    val isRoot: Boolean get() = status >= 1

    @Throws(IOException::class)
    fun execute(
        taskSinks: List<CommandTaskSink>,
        stdoutLines: MutableList<String>,
        stderrLines: MutableList<String>
    ): Int {
        checkOpen()
        if (status < 0) throw ShellTerminatedException()
        val task = FutureTask<Int> {
            executeSerialized(taskSinks, stdoutLines, stderrLines)
        }
        try {
            worker.execute(task)
            return task.get()
        } catch (error: InterruptedException) {
            Thread.currentThread().interrupt()
            throw InterruptedIOException("Interrupted while waiting for shell task").also {
                it.initCause(error)
            }
        } catch (error: ExecutionException) {
            val cause = error.cause
            if (cause is IOException) throw cause
            throw IOException("Shell task failed", cause)
        } catch (error: java.util.concurrent.RejectedExecutionException) {
            throw ShellTerminatedException(error)
        }
    }

    @Synchronized
    @Throws(IOException::class)
    private fun executeSerialized(
        taskSinks: List<CommandTaskSink>,
        stdoutLines: MutableList<String>,
        stderrLines: MutableList<String>
    ): Int {
        checkOpen()
        if (status < 0) throw ShellTerminatedException()
        return try {
            // zd7.execTask drains stale output and writes one separator newline
            // before handing the streams to gy7.
            stdout.discardAvailable()
            stderr.discardAvailable()
            stdin.write(byteArrayOf(10))
            stdin.flush()
            CommandTaskProtocol(taskSinks).execute(stdin, stdout, stderr, stdoutLines, stderrLines)
        } catch (error: IOException) {
            closeAfterFailure()
            throw ShellTerminatedException(error)
        }
    }

    private fun verifyShell() {
        val deadlineNanos = System.nanoTime() + TimeUnit.SECONDS.toNanos(startupTimeoutSeconds)
        try {
            if (!process.isAlive) throw IOException("Created process has terminated")
            stdout.discardAvailable()
            stderr.discardAvailable()
            stdin.write("echo SHELL_TEST\n".toByteArray(StandardCharsets.UTF_8))
            stdin.flush()
            val reader = BufferedReader(InputStreamReader(stdout, StandardCharsets.UTF_8))
            val test = readLineWithTimeout(reader, deadlineNanos)
            if (test.isNullOrEmpty() || !test.contains("SHELL_TEST")) {
                throw IOException("Created process is not a shell")
            }
            stdin.write("id\n".toByteArray(StandardCharsets.UTF_8))
            stdin.flush()
            val identity = readLineWithTimeout(reader, deadlineNanos)
            status = if (identity?.contains("uid=0") == true) 1 else 0
            if (status == 1) {
                val workingDirectory = quoteShellArgument(System.getProperty("user.dir"))
                stdin.write("cd $workingDirectory\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                stdin.write("readlink /proc/self/ns/mnt\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                val ownNamespace = readLineWithTimeout(reader, deadlineNanos)
                stdin.write("readlink /proc/1/ns/mnt\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                val initNamespace = readLineWithTimeout(reader, deadlineNanos)
                if (!ownNamespace.isNullOrEmpty() && ownNamespace == initNamespace) status = 2
            }
        } catch (error: Exception) {
            closeAfterFailure()
            if (error is IOException) throw error
            throw IOException("Unable to initialize shell process", error)
        }
    }

    private fun readLineWithTimeout(reader: BufferedReader, deadlineNanos: Long): String? {
        val future = FutureTask<String?> { reader.readLine() }
        Thread(future, "bare-shell-startup").apply { isDaemon = true; start() }
        val remainingNanos = deadlineNanos - System.nanoTime()
        if (remainingNanos <= 0L) {
            future.cancel(true)
            throw IOException("Shell check timeout")
        }
        return try {
            future.get(remainingNanos, TimeUnit.NANOSECONDS)
        } catch (error: java.util.concurrent.TimeoutException) {
            future.cancel(true)
            throw IOException("Shell check timeout", error)
        } catch (error: InterruptedException) {
            Thread.currentThread().interrupt()
            throw IOException("Shell check interrupted", error)
        } catch (error: ExecutionException) {
            throw IOException("Shell check failed", error.cause)
        }
    }

    /** Matches com.topjohnwu.superuser.ShellUtils.b single-quote escaping. */
    private fun quoteShellArgument(value: String): String = "'" + value.replace("'", "'\\''") + "'"

    private fun checkOpen() {
        if (closed || !process.isAlive) throw ShellTerminatedException()
    }

    private fun closeAfterFailure() {
        status = -1
        closed = true
        worker.shutdownNow()
        runCatching { stdin.closeUnderlying() }
        runCatching { stderr.closeUnderlying() }
        runCatching { stdout.closeUnderlying() }
        process.destroy()
    }

    /**
     * Mirrors zd7.waitAndClose: stop accepting queued work, await the active
     * worker for the requested duration, and destroy only after it terminates.
     * On timeout, status becomes -1 and the process is left for explicit cleanup.
     */
    fun waitAndClose(timeout: Long, unit: TimeUnit): Boolean {
        if (status < 0) return true
        worker.shutdown()
        val terminated = try {
            worker.awaitTermination(timeout, unit)
        } catch (error: InterruptedException) {
            Thread.currentThread().interrupt()
            false
        }
        return if (terminated) {
            closeProcess()
            true
        } else {
            status = -1
            false
        }
    }

    override fun close() {
        if (status < 0) return
        worker.shutdown()
        closeProcess()
    }

    private fun closeProcess() {
        status = -1
        closed = true
        runCatching { stdin.closeUnderlying() }
        runCatching { stderr.closeUnderlying() }
        runCatching { stdout.closeUnderlying() }
        process.destroy()
    }

    companion object {
        fun start(command: List<String>, startupTimeoutSeconds: Long = 20): ProcessShellBackend {
            val process = try { ProcessBuilder(command).start() }
            catch (error: IOException) { throw IOException("Unable to create a shell!", error) }
            return ProcessShellBackend(process, startupTimeoutSeconds)
        }
    }
}
