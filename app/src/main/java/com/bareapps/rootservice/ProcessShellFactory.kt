package com.bareapps.rootservice

/**
 * ProcessBuilder-based selection policy derived from defpackage.ex0.
 *
 * The reference only attempts mount-master when root is allowed and the
 * mount-master flag is enabled; it then tries ordinary su, validates root,
 * and finally falls back to sh. This factory is intentionally separate from
 * RootShellFactory, which continues to provide libsu Shell instances.
 */
internal object ProcessShellFactory {

    fun create(
        allowRoot: Boolean = true,
        preferMountMaster: Boolean = false,
        startupTimeoutSeconds: Long = 20
    ): ProcessShellBackend {
        if (allowRoot && preferMountMaster) {
            tryCandidate(listOf("su", "--mount-master"), startupTimeoutSeconds)
                ?.let { candidate ->
                    if (candidate.isRoot) return candidate
                    candidate.close()
                }
        }

        if (allowRoot) {
            tryCandidate(listOf("su"), startupTimeoutSeconds)
                ?.let { candidate ->
                    if (candidate.isRoot) return candidate
                    candidate.close()
                }
        }

        return ProcessShellBackend.start(listOf("sh"), startupTimeoutSeconds)
    }

    private fun tryCandidate(
        command: List<String>,
        timeoutSeconds: Long
    ): ProcessShellBackend? = runCatching {
        ProcessShellBackend.start(command, timeoutSeconds)
    }.getOrNull()
}
