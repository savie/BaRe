package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell
import java.io.Closeable

/**
 * Rewrite mapping for SwiftBackup 5.1.0 (620) defpackage.zd7.
 *
 * Exposes the observable status/aliveness of a libsu shell and makes ownership
 * explicit. The reference zd7 owns a Process and its streams; a shell obtained
 * from ShellSelectionRegistry is shared and must not be destroyed by this
 * wrapper.
 *
 * TODO(parity): direct Process ownership, startup handshake/timeout, stream
 * reset, synchronized execTask, status transitions, waitAndClose and destroy
 * remain unported. Do not use this wrapper as a replacement for zd7 yet.
 */
internal class ShellProcessSession(
    val shell: Shell = ShellSelectionRegistry.getOrCreate(),
    private val ownsShell: Boolean = false
) : Closeable {

    val status: Int
        get() = runCatching { shell.status }.getOrDefault(-1)

    val isAlive: Boolean
        get() = runCatching { shell.isAlive }.getOrDefault(false)

    override fun close() {
        if (ownsShell) {
            runCatching { shell.close() }
        }
    }
}
