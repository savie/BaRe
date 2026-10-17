package com.bareapps.rootservice

import java.util.Collections

/**
 * Source mapping for defpackage.gn6.
 *
 * The decompiled class is a mutable payload with two distinct singleton
 * instances: [GENERIC_FAILURE] (gn6.d) and [RETRYABLE_SHELL_TERMINATION]
 * (gn6.e). Callers in rh4/vy5 compare the retry sentinel by identity.
 */
internal class CommandTaskResult private constructor(
    var stdout: List<String>? = null,
    var stderr: List<String>? = null,
    var exitCode: Int = -1
) {
    /** Mirrors gn6.a(): absent stdout is exposed as Collections.EMPTY_LIST. */
    fun stdoutOrEmpty(): List<String> = stdout ?: Collections.emptyList()

    companion object {
        /** gn6.d: generic failure sentinel. */
        val GENERIC_FAILURE = CommandTaskResult()

        /** gn6.e: retryable shell termination sentinel; intentionally distinct. */
        val RETRYABLE_SHELL_TERMINATION = CommandTaskResult()

        fun completed(stdout: List<String>, stderr: List<String>, exitCode: Int): CommandTaskResult =
            CommandTaskResult(stdout = stdout, stderr = stderr, exitCode = exitCode)
    }
}
