package com.bareapps.rootservice

import com.bareapps.filesystem.CommandTaskProtocol
import com.bareapps.filesystem.CommandTaskSink
import java.io.BufferedReader
import java.io.IOException
import java.io.InputStreamReader
import java.nio.charset.StandardCharsets
import java.util.concurrent.TimeUnit

/**
 * Process-backed lifecycle boundary derived from defpackage.zd7/ex0.
 * Owns a Process directly and executes tasks through the marker protocol.
 * Not yet substituted into ShellSelectionRegistry: the libsu Shell adapter
 * and all callers need a separately reviewed migration.
 */
internal class ProcessShellBackend private constructor(
    private val process: Process,
    private val startupTimeoutSeconds: Long
) : java.io.Closeable {

    private val stdin = ProcessShellOutput(process.outputStream)
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

    @Synchronized
    @Throws(IOException::class)
    fun execute(
        taskSinks: List<CommandTaskSink>,
        stdoutLines: MutableList<String>,
        stderrLines: MutableList<String>
    ): Int {
        checkOpen()
        if (status < 0) throw ShellTerminatedException()
        return try {
            CommandTaskProtocol(taskSinks).execute(stdin, stdout, stderr, stdoutLines, stderrLines)
        } catch (error: IOException) {
            closeAfterFailure()
            throw ShellTerminatedException(error)
        }
    }

    private fun verifyShell() {
        try {
            if (!process.isAlive) throw IOException("Created process has terminated")
            while (stdout.available() > 0) stdout.skip(stdout.available().toLong())
            while (stderr.available() > 0) stderr.skip(stderr.available().toLong())
            stdin.write("echo SHELL_TEST\n".toByteArray(StandardCharsets.UTF_8))
            stdin.flush()
            val reader = BufferedReader(InputStreamReader(stdout, StandardCharsets.UTF_8))
            val test = readLineWithTimeout(reader)
            if (test.isNullOrEmpty() || !test.contains("SHELL_TEST")) {
                throw IOException("Created process is not a shell")
            }
            stdin.write("id\n".toByteArray(StandardCharsets.UTF_8))
            stdin.flush()
            val identity = readLineWithTimeout(reader)
            status = if (identity?.contains("uid=0") == true) 1 else 0
            if (status == 1) {
                val workingDirectory = System.getProperty("user.dir").replace("\\", "\\\\").replace("\"", "\\\"").replace("$", "\\$")
                stdin.write("cd \"$workingDirectory\"\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                readLineWithTimeout(reader)
                stdin.write("readlink /proc/self/ns/mnt\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                val ownNamespace = readLineWithTimeout(reader)
                stdin.write("readlink /proc/1/ns/mnt\n".toByteArray(StandardCharsets.UTF_8))
                stdin.flush()
                val initNamespace = readLineWithTimeout(reader)
                if (!ownNamespace.isNullOrEmpty() && ownNamespace == initNamespace) status = 2
            }
        } catch (error: Exception) {
            closeAfterFailure()
            if (error is IOException) throw error
            throw IOException("Unable to initialize shell process", error)
        }
    }

    private fun readLineWithTimeout(reader: BufferedReader): String? {
        val future = java.util.concurrent.FutureTask<String?> { reader.readLine() }
        Thread(future, "bare-shell-startup").apply { isDaemon = true; start() }
        return try {
            future.get(startupTimeoutSeconds, TimeUnit.SECONDS)
        } catch (error: java.util.concurrent.TimeoutException) {
            future.cancel(true)
            throw IOException("Shell check timeout", error)
        } catch (error: InterruptedException) {
            Thread.currentThread().interrupt()
            throw IOException("Shell check interrupted", error)
        } catch (error: java.util.concurrent.ExecutionException) {
            throw IOException("Shell check failed", error.cause)
        }
    }

    private fun checkOpen() {
        if (closed || !process.isAlive) throw ShellTerminatedException()
    }

    private fun closeAfterFailure() {
        status = -1
        closed = true
        runCatching { stdin.closeUnderlying() }
        runCatching { stderr.closeUnderlying() }
        runCatching { stdout.closeUnderlying() }
        process.destroy()
    }

    override fun close() {
        if (closed) return
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
