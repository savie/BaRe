package com.bareapps.filesystem

import com.topjohnwu.superuser.Shell
import java.io.Closeable

/**
 * Kotlin execution adapter for the reference's libsu command-job path
 * (`defpackage.rh4`, backed by the reference `zd7.execTask`).
 *
 * Commands are accumulated before execution, matching the reference builder
 * behavior. libsu owns shell lifecycle and command execution.
 */
internal class LibsuCommandExecutor(
    private val commands: MutableList<String> = mutableListOf()
) : Closeable {

    fun add(vararg command: String): LibsuCommandExecutor = apply {
        if (command.isNotEmpty()) commands += command.joinToString(" ; ")
    }

    fun execute(): CommandResult {
        if (commands.isEmpty()) return CommandResult(emptyList(), 0)
        val result = Shell.cmd(*commands.toTypedArray()).exec()
        val output = buildList {
            addAll(result.out.orEmpty())
            addAll(result.err.orEmpty())
        }
        return CommandResult(output, result.code)
    }

    override fun close() {
        // Commands are materialized as strings; libsu owns the underlying shell.
        commands.clear()
    }

    internal data class CommandResult(
        val output: List<String>,
        val exitCode: Int
    )
}
