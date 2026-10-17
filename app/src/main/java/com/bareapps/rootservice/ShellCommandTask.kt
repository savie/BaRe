package com.bareapps.rootservice

import com.bareapps.filesystem.CommandTaskSink
import com.bareapps.filesystem.CommandTaskWriter
import java.io.Closeable

/**
 * Deferred Process-backed mapping of od7/rh4/vy5.
 *
 * rh4-like execution produces the gn6 payload/sentinels. The vy5-like policy
 * retries only the exact retry sentinel once. This remains separate from
 * libsu Shell.Job execution and does not claim end-to-end parity.
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
            when (val result = executeVy5Policy()) {
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

    /** Mirrors vy5.b(): retry only when rh4 returns the gn6.e singleton. */
    private fun executeVy5Policy(): CommandTaskResult {
        var retryAllowed = true
        while (true) {
            val result = executeRh4Like()
            if (retryAllowed && result === CommandTaskResult.RETRYABLE_SHELL_TERMINATION) {
                retryAllowed = false
                continue
            }
            return if (result === CommandTaskResult.RETRYABLE_SHELL_TERMINATION) {
                CommandTaskResult.GENERIC_FAILURE
            } else {
                result
            }
        }
    }

    /**
     * Mirrors the result boundary in rh4.b(): a mutable payload on success,
     * gn6.e for shell termination, and gn6.d for other IO/execution failures.
     */
    private fun executeRh4Like(): CommandTaskResult {
        if (closed) return CommandTaskResult.GENERIC_FAILURE

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
        return try {
            val exitCode = backend.execute(taskSinks.toList(), stdout, stderr)
            CommandTaskResult.completed(stdout, stderr, exitCode)
        } catch (_: ShellTerminatedException) {
            ProcessShellRegistry.invalidate(backend)
            CommandTaskResult.RETRYABLE_SHELL_TERMINATION
        } catch (_: Exception) {
            CommandTaskResult.GENERIC_FAILURE
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
