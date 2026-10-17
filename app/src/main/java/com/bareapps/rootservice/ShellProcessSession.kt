package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell
import java.io.Closeable

/**
 * Rewrite mapping for SwiftBackup 5.1.0 (620) `defpackage.zd7`.
 *
 * Reference `zd7` extends Shell and owns a Process, stdin/stdout/stderr
 * streams, startup status, a worker executor, synchronized task execution,
 * and process shutdown. The current app uses libsu's Shell implementation,
 * so this type records the missing lifecycle boundary without pretending the
 * public libsu API is identical to the original implementation.
 *
 * TODO(parity): port reference startup handshake/timeout, stream reset,
 * execTask synchronization, status transitions, waitAndClose and destroy
 * behavior before replacing libsu's internal lifecycle.
 */
internal class ShellProcessSession(
    val shell: Shell = ShellSelectionRegistry.getOrCreate()
) : Closeable {

    val isAlive: Boolean
        get() = runCatching { shell.status >= 0 }.getOrDefault(false)

    override fun close() {
        // The selected Shell may be shared through ShellSelectionRegistry.
        // TODO(parity): reference zd7 owns and destroys its Process directly;
        // do not close a shared shell until ownership semantics are explicit.
    }
}
