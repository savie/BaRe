package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell

/**
 * Rewrite mapping for SwiftBackup 5.1.0 (620) `defpackage.vy5`.
 *
 * Reference vy5 extends rh4, obtains the active shell through k55.j(), and
 * returns the generic failure result when root is required but unavailable.
 * It retries once when its first execution reports the reference's retryable
 * result.
 *
 * TODO(parity): integrate this policy with the project's command result type
 * and reproduce the exact gn6 result/status semantics before use in production.
 */
internal class RootRequiredCommandExecutor(
    private val requireRoot: Boolean,
    private val shellProvider: () -> Shell = { ShellSelectionRegistry.getOrCreate() }
) {

    fun selectedShellOrNull(): Shell? {
        val shell = runCatching { shellProvider() }.getOrNull() ?: return null
        if (requireRoot && !runCatching { shell.isRoot }.getOrDefault(false)) {
            return null
        }
        return shell
    }
}
