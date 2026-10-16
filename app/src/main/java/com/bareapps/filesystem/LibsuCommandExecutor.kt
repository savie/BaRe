package com.bareapps.filesystem

import com.topjohnwu.superuser.Shell
import java.io.Closeable

/**
 * Kotlin execution adapter for the reference's libsu command-job path
 * (`defpackage.rh4`, backed by the reference `zd7.execTask`).
 *
 * Keep stdout and stderr separate: jr7's output-returning path reads the
 * reference stdout list, while command success is determined by the exit code.
 * libsu owns shell lifecycle and command execution.
 */
internal class LibsuCommandExecutor(
    private val commands: MutableList<String> = mutableListOf()
) : Closeable {

    fun add(vararg command: String): LibsuCommandExecutor = apply {
        if (command.isNotEmpty()) commands += command.joinToString(" ; ")
    }

    fun execute(): CommandResult {
        if (commands.isEmpty()) return CommandResult(emptyList(), emptyList(), 0)
        // Use the configured shell instance rather than Shell.cmd's global
        // convenience entry point. The reference rh4 is constructed with the
        // app-selected Shell (k55.j()) and obtains jobs from that shell.
        val result = Shell.getShell().newJob().add(*commands.toTypedArray()).exec()
        return CommandResult(
            output = result.out.orEmpty(),
            error = result.err.orEmpty(),
            exitCode = result.code
        )
    }

    override fun close() {
        // Commands are materialized as strings; libsu owns the underlying shell.
        commands.clear()
    }

    internal data class CommandResult(
        val output: List<String>,
        val error: List<String>,
        val exitCode: Int
    )
}
