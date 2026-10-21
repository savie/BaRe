package com.bareapps.barebackup.folders.ui

/**
 * Validates ZIP entry names before they are mapped into a user-selected destination tree.
 * This is intentionally independent of Android APIs so path safety can be unit-tested.
 */
internal object FolderArchivePathValidator {
    private const val MAX_PATH_DEPTH = 64
    private const val MAX_SEGMENT_LENGTH = 255

    fun validate(entryName: String): List<String> {
        require(entryName.isNotEmpty()) { "Archive contains an empty path" }
        require(!entryName.startsWith("/") && '\\' !in entryName && '\u0000' !in entryName) {
            "Archive contains an absolute or invalid path"
        }

        val path = if (entryName.endsWith("/")) entryName.dropLast(1) else entryName
        require(path.isNotEmpty()) { "Archive contains an empty path" }
        val segments = path.split('/')
        require(
            segments.size <= MAX_PATH_DEPTH &&
                segments.all { it.isNotEmpty() && it != "." && it != ".." && it.length <= MAX_SEGMENT_LENGTH }
        ) { "Archive contains an unsafe path" }
        return segments
    }

    /** Reject duplicate paths and file/directory collisions before restoring any archive entry. */
    fun validateArchiveStructure(entries: List<Pair<String, Boolean>>) {
        val paths = linkedMapOf<String, Boolean>()
        entries.forEach { (path, isDirectory) ->
            require(!paths.containsKey(path)) { "Archive contains a duplicate path: $path" }
            var parentPath = ""
            path.split('/').dropLast(1).forEach { segment ->
                parentPath = if (parentPath.isEmpty()) segment else "$parentPath/$segment"
                require(paths[parentPath] != false) {
                    "Archive contains a file used as a folder: $parentPath"
                }
            }
            if (!isDirectory) {
                require(paths.keys.none { it.startsWith("$path/") }) {
                    "Archive contains a file/folder path conflict: $path"
                }
            }
            paths[path] = isDirectory
        }
    }
}
