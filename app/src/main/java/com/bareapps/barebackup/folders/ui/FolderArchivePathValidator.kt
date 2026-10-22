package com.bareapps.barebackup.folders.ui

/**
 * Validates ZIP entry names and archive file/directory structure before restore.
 * This class has no Android dependencies so its behavior can be covered by local unit tests.
 */
internal class FolderArchivePathValidator(
    private val maxPathLength: Int = DEFAULT_MAX_PATH_LENGTH
) {
    private val pathKinds = linkedMapOf<String, Boolean>()
    private val explicitEntries = hashSetOf<String>()

    init {
        require(maxPathLength > 0) { "Maximum path length must be positive" }
    }

    /** Returns a normalized relative path or throws if the entry is unsafe or conflicts. */
    fun register(rawName: String, isDirectory: Boolean): String {
        require(rawName.isNotBlank() && rawName.length <= maxPathLength) {
            "Archive contains an invalid path"
        }
        require(
            !rawName.startsWith("/") &&
                '\\' !in rawName &&
                !rawName.matches(Regex("^[A-Za-z]:.*"))
        ) {
            "Archive contains an absolute path"
        }

        val normalized = if (isDirectory) rawName.removeSuffix("/") else rawName
        val segments = normalized.split('/')
        require(segments.isNotEmpty() && segments.all {
            it.isNotEmpty() && it != "." && it != ".."
        }) {
            "Archive contains an unsafe path"
        }
        val path = segments.joinToString("/")
        require(explicitEntries.add(path)) { "Archive contains a duplicate path: $path" }

        // Register implicit parents too, catching conflicts regardless of entry order.
        for (index in 1 until segments.size) {
            val parentPath = segments.take(index).joinToString("/")
            val existingKind = pathKinds[parentPath]
            require(existingKind != false) { "Archive path conflicts with a file: $parentPath" }
            pathKinds[parentPath] = true
        }
        val previousKind = pathKinds[path]
        require(previousKind == null || previousKind == isDirectory) {
            "Archive contains a file/directory path conflict: $path"
        }
        pathKinds[path] = isDirectory
        return path
    }

    private companion object {
        const val DEFAULT_MAX_PATH_LENGTH = 4096
    }
}
