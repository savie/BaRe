package com.bareapps.filesystem

import com.bareapps.rootservice.ShellHelper
import com.bareapps.rootservice.ShellTerminatedException
import com.topjohnwu.superuser.Shell
import java.io.Closeable
import java.io.IOException
import java.util.ArrayList
import java.util.Collections

/**
 * Source-shaped port of defpackage.rh4. Names a/b/c/d/e match the reference.
 * TODO(parity): the reference d is custom zd7 and executes via execTask; this
 * adapter currently uses the public Shell.Job API instead.
 */
internal class LibsuCommandExecutor(
    @JvmField var d: Shell?
) : Closeable {
    @JvmField var a: MutableList<String>? = null
    @JvmField var b: MutableList<String>? = null
    @JvmField val c: ArrayList<CommandTaskWriter> = ArrayList()
    @JvmField var e: Boolean = false

    constructor() : this(null)

    /** rh4.a(String...). */
    fun add(vararg commands: String): LibsuCommandExecutor = apply {
        if (commands.isNotEmpty()) c.add(CommandTaskWriter(commands.copyOf()))
    }

    /** rh4.b(). */
    fun execute(): LibsuCommandResult = b()

    fun b(): LibsuCommandResult {
        val shell = d!!
        val shared = !e && shell.isRoot
        if (shared) b = a
        val payload = LibsuCommandResult()
        val out = a
        if (out == null || out !== b) {
            payload.a = out
            payload.b = b
        } else {
            val synchronizedLines = Collections.synchronizedList(out)
            payload.a = synchronizedLines
            payload.b = synchronizedLines
        }

        try {
            val commands = c.flatMap { it.commandsForJob() }
            val result = shell.newJob().add(*commands.toTypedArray()).exec()
            if (a == null) a = ArrayList()
            if (b == null && !shared) b = ArrayList()
            a?.addAll(result.out.orEmpty())
            if (!shared) b?.addAll(result.err.orEmpty())
            close()
            payload.a = a
            payload.b = if (shared) null else b
            payload.c = result.code
            return payload
        } catch (error: IOException) {
            close()
            payload.a = a
            payload.b = if (shared) null else b
            return if (error is ShellTerminatedException) {
                LibsuCommandResult.RETRYABLE_SHELL_TERMINATION
            } else {
                LibsuCommandResult.GENERIC_FAILURE
            }
        } catch (error: Throwable) {
            close()
            payload.a = a
            payload.b = if (shared) null else b
            throw error
        }
    }

    /** rh4.close(): close each accumulated dm1/ae7 writer. */
    override fun close() {
        val iterator = c.iterator()
        while (iterator.hasNext()) iterator.next().close()
    }
}

/** gn6-shaped result; the two failure sentinels are intentionally distinct. */
internal class LibsuCommandResult(
    @JvmField var a: MutableList<String>? = null,
    @JvmField var b: MutableList<String>? = null,
    @JvmField var c: Int = -1
) {
    val output: List<String> get() = a ?: emptyList()
    val error: List<String> get() = b ?: emptyList()
    val exitCode: Int get() = c

    companion object {
        @JvmField val GENERIC_FAILURE = LibsuCommandResult()
        @JvmField val RETRYABLE_SHELL_TERMINATION = LibsuCommandResult()
    }
}
