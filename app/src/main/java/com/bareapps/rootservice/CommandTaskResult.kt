package com.bareapps.rootservice

/**
 * Source mapping for defpackage.gn6's result payload.
 *
 * The original uses singleton identity for generic failure and retryable
 * shell termination, plus a mutable exit code. This typed representation
 * intentionally does not claim to preserve those singleton semantics yet.
 */
internal sealed interface CommandTaskResult {
    data class Completed(
        val stdout: List<String>,
        val stderr: List<String>,
        val exitCode: Int
    ) : CommandTaskResult

    data class Failed(
        val reason: String,
        val cause: Throwable? = null
    ) : CommandTaskResult

    data object RetryableShellTermination : CommandTaskResult
}
