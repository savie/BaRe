package com.bareapps.barebackup.folders.ui

/**
 * Deterministic comparison model for incremental folder snapshots.
 *
 * The caller is responsible for hashing source files and persisting the snapshot manifest.
 * Paths are normalized relative paths; absolute paths and traversal are rejected here so
 * a malformed persisted manifest cannot turn a comparison into an unsafe restore plan.
 */
internal data class FolderFileFingerprint(
    val path: String,
    val size: Long,
    val sha256: String
) {
    init {
        require(path.isNotBlank() && !path.startsWith("/") && '\\' !in path) {
            "Snapshot contains an invalid relative path"
        }
        require(path.split('/').all { it.isNotEmpty() && it != "." && it != ".." }) {
            "Snapshot contains an unsafe relative path"
        }
        require(size >= 0) { "Snapshot contains a negative file size" }
        require(sha256.matches(Regex("^[a-fA-F0-9]{64}$"))) {
            "Snapshot contains an invalid SHA-256 digest"
        }
    }
}

internal data class FolderIncrementalPlan(
    val changedOrAdded: List<FolderFileFingerprint>,
    val deletedPaths: List<String>
) {
    val isEmpty: Boolean
        get() = changedOrAdded.isEmpty() && deletedPaths.isEmpty()

    companion object {
        fun compare(
            previous: Collection<FolderFileFingerprint>,
            current: Collection<FolderFileFingerprint>
        ): FolderIncrementalPlan {
            val previousByPath = previous.associateBy { it.path }
            val currentByPath = current.associateBy { it.path }
            require(previousByPath.size == previous.size) { "Previous snapshot contains duplicate paths" }
            require(currentByPath.size == current.size) { "Current snapshot contains duplicate paths" }

            val changed = currentByPath.values
                .filter { currentFile ->
                    val oldFile = previousByPath[currentFile.path]
                    oldFile == null ||
                        oldFile.size != currentFile.size ||
                        !oldFile.sha256.equals(currentFile.sha256, ignoreCase = true)
                }
                .sortedBy { it.path }

            val deleted = previousByPath.keys
                .filterNot(currentByPath::containsKey)
                .sorted()

            return FolderIncrementalPlan(changed, deleted)
        }
    }
}
