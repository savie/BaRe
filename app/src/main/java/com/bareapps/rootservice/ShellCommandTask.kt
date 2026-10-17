package com.bareapps.rootservice

import com.bareapps.filesystem.CommandTaskSink
import com.bareapps.filesystem.CommandTaskWriter
import java.io.Closeable

/**
 * Deferred shell task backed by the source-shaped Process implementation.
 * Maps od7/rh4/vy5 task accumulation, gn6 result sentinels, and the one-retry
 * policy. This remains separate from libsu Shell.Job execution.
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
            when (val result = executeSourceResult()) {
                CommandTaskResult.GENERIC_FAILURE ->
                    Result.Failed("Command execution failed")
                CommandTaskResult.RETRYABLE_SHELL_TERMINATION ->
                    Result.Failed("Shell terminated unexpectedly")
                else -> Result.Completed(
                    stdout = result.stdoutOrEmpty(),
                    stderr = result.stderr ?: emptyList(),
                    exitCode = result.exitCode
                )
            }
        } finally {
            close()
        }
    }

    /**
     * Source-shaped result path: rh4 returns gn6.e only for a terminated shell,
     * gn6.d for generic failures, and a mutable payload for completed execution.
     * vy5 retries the exact gn6.e singleton once, then returns gn6.d.
     */
    private fun executeSourceResult(): CommandTaskResult {
        if (closed) return CommandTaskResult.GENERIC_FAILURE

        repeat(2) { attempt ->
            val backend = try {
                backendProvider()
            } catch (_: Exception) {
                return CommandTaskResult.GENERIC_FAILURE
            }

            if (requireRoot && !backend.isRoot) {
                return CommandTaskResult.GENERIC_FAILURE
            }

            val stdout = mutableListOf<String>()
            val stderr = mutableListOf<String>()
            try {
                val exitCode = backend.execute(taskSinks.toList(), stdout, stderr)
                return CommandTaskResult(
                    stdout = stdout,
                    stderr = stderr,
                    exitCode = exitCode
                )
            } catch (error: ShellTerminatedException) {
                ProcessShellRegistry.invalidate(backend)
                val result = CommandTaskResult.RETRYABLE_SHELL_TERMINATION
                if (attempt == 0 && result === CommandTaskResult.RETRYABLE_SHELL_TERMINATION) {
                    return@repeat
                }
                return CommandTaskResult.GENERIC_FAILURE
            } catch (_: Exception) {
                return CommandTaskResult.GENERIC_FAILURE
            }
        }
        return CommandTaskResult.GENERIC_FAILURE
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
