package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell

/**
 * Rewrite mapping for the shell-selection portion of SwiftBackup
 * `defpackage.k55`. The original class is a large obfuscated utility class;
 * only its shell registry/selection responsibilities belong here.
 *
 * Reference methods: `k55.j()` selects/returns the active `zd7`; `k55.k()`
 * checks the cached shell and invalidates it when its status is negative.
 *
 * TODO(parity): model the reference's synchronized cached-shell lifecycle,
 * including invalidation and the `k55.b` callback/registration flag.
 */
internal object ShellSelectionRegistry {

    @Volatile
    private var selectedShell: Shell? = null

    @Synchronized
    fun getOrCreate(): Shell {
        val current = selectedShell
        if (current != null && runCatching { current.status >= 0 }.getOrDefault(false)) {
            return current
        }
        return RootShellFactory.create().also { selectedShell = it }
    }

    @Synchronized
    fun clear() {
        val current = selectedShell
        selectedShell = null
        runCatching { current?.close() }
    }
}
