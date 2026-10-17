package com.bareapps.rootservice

import com.topjohnwu.superuser.Shell

/**
 * Rewrite mapping for SwiftBackup 5.1.0 (620) `defpackage.ex0`.
 *
 * Reference behavior: try `su --mount-master` when the relevant option flags
 * allow it, then `su`, accept only a shell that reports root, and fall back
 * to `sh`. The source also owns process startup timeout/flags.
 *
 * This is a semantic port through libsu, not a byte-for-byte port of ex0/zd7.
 */
internal object RootShellFactory {

    fun create(
        allowRoot: Boolean = true,
        preferMountMaster: Boolean = false,
        timeoutSeconds: Int = 20
    ): Shell {
        if (allowRoot && preferMountMaster) {
            createCandidate(arrayOf("su", "--mount-master"), timeoutSeconds)
                ?.let { if (it.isRoot) return it else it.close() }
        }
        if (allowRoot) {
            createCandidate(arrayOf("su"), timeoutSeconds)
                ?.let { if (it.isRoot) return it else it.close() }
        }
        return Shell.Builder.create()
            .setFlags(Shell.FLAG_NON_ROOT_SHELL or Shell.FLAG_REDIRECT_STDERR)
            .setTimeout(10)
            .build()
    }

    private fun createCandidate(command: Array<String>, timeoutSeconds: Int): Shell? =
        runCatching {
            Shell.Builder.create(*command)
                .setTimeout(timeoutSeconds)
                .build()
        }.getOrNull()
}
