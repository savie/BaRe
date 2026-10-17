package com.bareapps.rootservice

import com.bareapps.filesystem.CommandTaskSink
import com.bareapps.filesystem.CommandTaskWriter
import java.io.Closeable

/**
 * Deferred shell task backed by the source-shaped Process implementation.
 * Mirrors od7/rh4/vy5 accumulation and result behavior more closely than the
 * libsu Shell.Job adapter; it remains separate from ShellHelper.getMainShell().
 */
class ShellCommandTask internal constructor(
    private val requireRoot: Boolean,
    commands: Array<out String>,
    private val backendProvider: () -> ProcessShellBackend = { ProcessShellRegistry.getOrCreate() }
) : Closeable {

    private val taskSinks = mutableListOf<CommandTaskSink>()
    private var closed = false

    init {
        if (commands.isNotEmpty()) taskSinks += CommandTaskWriter(commands)
    }

    fun add(vararg moreCommands: String): ShellCommandTask = apply {
        check(!closed) { "Command task is closed" }
        if (moreCommands.isNotEmpty()) taskSinks += CommandTaskWriter(moreCommands)
    }

    fun execute(): Result {
        check(!closed) { "Command task is closed" }
        return try {
            var attempt = 0
            while (true) {
                val backend = try {
                    backendProvider()
                } catch (error: Exception) {
                    return Result.Failed(error.message ?: "Unable to create shell", error)
                }

                if (requireRoot && !backend.isRoot) {
                    return Result.Failed("Root shell required")
                }

                val stdout = mutableListOf<String>()
                val stderr = mutableListOf<String>()
                try {
                    val exitCode = backend.execute(taskSinks.toList(), stdout, stderr)
                    return Result.Completed(stdout, stderr, exitCode)
                } catch (error: ShellTerminatedException) {
                    ProcessShellRegistry.invalidate(backend)
                    if (attempt == 0) {
                        attempt++
                        continue
                    }
                    return Result.Failed(error.message ?: "Shell terminated unexpectedly", error)
                } catch (error: Exception) {
                    return Result.Failed(error.message ?: error.javaClass.simpleName, error)
                }
            }
            @Suppress("UNREACHABLE_CODE")
            Result.Failed("Unreachable execution state")
        } finally {
            close()
        }
    }

    override fun close() {
        if (closed) return
        closed = true
        taskSinks.forEach { runCatching { it.close() } }
        taskSinks.clear()
    }

    sealed interface Result {
        data class Completed(
            val stdout: List<String>,
            val stderr: List<String>,
            val exitCode: Int
        ) : Result

        data class Failed(
            val reason: String,
            val cause: Throwable? = null
        ) : Result
    }
}
