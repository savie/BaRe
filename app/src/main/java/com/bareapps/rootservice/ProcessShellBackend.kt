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
 * Owns a Process directly. The r77-shaped worker runs startup verification;
 * zd7.execTask itself remains synchronized and executes on the calling thread.
 * This is not substituted into ShellSelectionRegistry yet.
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

    init { startAndVerifyShell() }

    val shellStatus: Int get() = status
    val isAlive: Boolean
        get() {
            if (status < 0) return false
            return try { process.exitValue(); false }
            catch (_: IllegalThreadStateException) { true }
        }
    val isRoot: Boolean get() = status >= 1

    @Synchronized
    @Throws(IOException::class)
    fun execute(
        taskSinks: List<CommandTaskSink>,
        stdoutLines: MutableList<String>,
        stderrLines: MutableList<String>
    ): Int {
        if (status < 0) throw ShellTerminatedException()
        return try {
            // zd7.execTask is synchronized and runs the task on its caller;
            // r77 is not the task execution executor.
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

    private fun startAndVerifyShell() {
        val verification = FutureTask<Unit> { verifyShell() }
        try {
            worker.execute(verification)
            verification.get(startupTimeoutSeconds, TimeUnit.SECONDS)
        } catch (error: java.util.concurrent.TimeoutException) {
            verification.cancel(true)
            worker.shutdownNow()
            closeAfterFailure()
            throw IOException("Shell check timeout", error)
        } catch (error: InterruptedException) {
            verification.cancel(true)
            worker.shutdownNow()
            closeAfterFailure()
            throw IOException("Shell check interrupted", error)
        } catch (error: ExecutionException) {
            worker.shutdownNow()
            closeAfterFailure()
            val cause = error.cause
            if (cause is IOException) throw cause
            throw IOException("Unable to initialize shell process", cause)
        } catch (error: java.util.concurrent.RejectedExecutionException) {
            closeAfterFailure()
            throw IOException("Shell startup worker is unavailable", error)
        }
    }

    private fun verifyShell() {
        try {
            if (!process.isAlive) throw IOException("Created process has terminated")
            stdout.discardAvailable()
            stderr.discardAvailable()
            stdin.write("echo SHELL_TEST\n".toByteArray(StandardCharsets.UTF_8))
            stdin.flush()
            BufferedReader(InputStreamReader(stdout, StandardCharsets.UTF_8)).use { reader ->
                val test = reader.readLine()
                if (test.isNullOrEmpty() || !test.contains("SHELL_TEST")) {
                    throw IOException("Created process is not a shell")
                }
                stdin.write("id\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                val identity = reader.readLine()
                status = if (identity?.contains("uid=0") == true) 1 else 0
                if (status == 1) {
                    // TODO(parity): source me2 also sets the process-wide ji8.b
                    // marker while entering this root-shell initialization path.
                    val workingDirectory = quoteShellArgument(System.getProperty("user.dir"))
                    stdin.write("cd $workingDirectory\n".toByteArray(StandardCharsets.UTF_8))
                    stdin.flush()
                    stdin.write("readlink /proc/self/ns/mnt\n".toByteArray(StandardCharsets.UTF_8))
                    stdin.flush()
                    val ownNamespace = reader.readLine()
                    stdin.write("readlink /proc/1/ns/mnt\n".toByteArray(StandardCharsets.UTF_8))
                    stdin.flush()
                    val initNamespace = reader.readLine()
                    if (!ownNamespace.isNullOrEmpty() && !initNamespace.isNullOrEmpty() && ownNamespace == initNamespace) status = 2
                }
            }
        } catch (error: Exception) {
            if (error is IOException) throw error
            throw IOException("Unable to initialize shell process", error)
        }
    }

    /** Matches com.topjohnwu.superuser.ShellUtils.b single-quote escaping. */
    private fun quoteShellArgument(value: String): String = "'" + value.replace("'", "'\\''") + "'"

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
     * Mirrors zd7.waitAndClose: stop accepting worker tasks, await the active
     * startup worker for the requested duration, and destroy after termination.
     * On timeout, status becomes -1 without immediately destroying the process.
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
        worker.shutdownNow()
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
