package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell
import java.io.Closeable

/**
 * Deferred command job matching the public shape of the reference's
 * org.swiftapps.rootservice.ShellHelper.sh()/su() -> defpackage.od7 path.
 *
 * The original job accumulates command writers and executes only when b() is
 * called. This wrapper keeps that deferred boundary instead of returning a
 * libsu Shell.Job, whose API and result contract are different.
 *
 * TODO(parity): map exact gn6 singleton/result semantics and the reference's
 * retryable ee7 signal. libsu's public Result API does not expose zd7's
 * process lifecycle signal directly.
 */
class ShellCommandTask(
    private val requireRoot: Boolean,
    commands: Array<out String>,
    private val shellProvider: () -> Shell = { ShellSelectionRegistry.getOrCreate() }
) : Closeable {

    private val commands = commands.toMutableList()
    private var closed = false

    fun add(vararg moreCommands: String): ShellCommandTask = apply {
        check(!closed) { "Command task is closed" }
        commands.addAll(moreCommands)
    }

    /**
     * Executes the accumulated commands. A missing required-root shell maps to
     * a failed result; stdout and stderr remain separate as in rh4/gn6.
     */
    fun execute(): Result {
        check(!closed) { "Command task is closed" }
        val shell = runCatching { shellProvider() }.getOrNull()
            ?: return Result.Failed("Unable to create shell")
        if (requireRoot && !runCatching { shell.isRoot }.getOrDefault(false)) {
            close()
            return Result.Failed("Root shell required")
        }
        if (commands.isEmpty()) return Result.Completed(emptyList(), emptyList(), 0)

        return try {
            val shellResult = shell.newJob().add(*commands.toTypedArray()).exec()
            Result.Completed(
                stdout = shellResult.out.orEmpty(),
                stderr = shellResult.err.orEmpty(),
                exitCode = shellResult.code
            )
        } catch (error: Exception) {
            Result.Failed(error.message ?: error.javaClass.simpleName, error)
        } finally {
            close()
        }
    }

    override fun close() {
        closed = true
        commands.clear()
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
