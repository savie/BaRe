package com.bareapps.rootservice

/**
 * Process-backed equivalent of the shell cache slice mapped from defpackage.k55.
 * Separate from ShellSelectionRegistry because this cache owns Process instances,
 * not libsu Shell objects.
 */
internal object ProcessShellRegistry {
    @Volatile private var current: ProcessShellBackend? = null

    @Synchronized
    fun getOrCreate(): ProcessShellBackend {
        current?.let { if (it.isAlive) return it }
        current?.close()
        return ProcessShellFactory.create().also { current = it }
    }

    @Synchronized
    fun invalidate(candidate: ProcessShellBackend) {
        if (current === candidate) {
            current = null
            candidate.close()
        }
    }

    @Synchronized
    fun clear() {
        current?.close()
        current = null
    }
}
