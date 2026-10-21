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
}
