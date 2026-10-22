package com.bareapps.barebackup.folders.ui

import java.nio.charset.StandardCharsets
import java.util.Base64

/**
 * Versioned metadata stored inside an incremental folder archive.
 *
 * Paths are Base64 URL encoded so separators and newlines cannot change the record structure.
 * This type is intentionally platform-independent and can be validated with JVM unit tests.
 */
internal data class FolderSnapshotManifest(
    val snapshotId: String,
    val parentSnapshotId: String?,
    val files: List<FolderFileFingerprint>,
    val deletedPaths: List<String>,
    val directories: List<String> = emptyList(),
    val deletedDirectories: List<String> = emptyList()
) {
    init {
        require(snapshotId.matches(Regex("^[A-Za-z0-9_-]{1,80}$"))) { "Invalid snapshot id" }
        require(parentSnapshotId == null || parentSnapshotId.matches(Regex("^[A-Za-z0-9_-]{1,80}$"))) {
            "Invalid parent snapshot id"
        }
        require(parentSnapshotId != snapshotId) { "A snapshot cannot be its own parent" }
        require(files.map { it.path }.toSet().size == files.size) { "Snapshot contains duplicate file paths" }
        require(deletedPaths.toSet().size == deletedPaths.size) { "Snapshot contains duplicate deleted paths" }
        require(directories.toSet().size == directories.size) { "Snapshot contains duplicate directory paths" }
        require(deletedDirectories.toSet().size == deletedDirectories.size) { "Snapshot contains duplicate deleted directory paths" }
        directories.forEach(::validateRelativePath)
        deletedDirectories.forEach(::validateRelativePath)
        require(directories.none { it in deletedDirectories }) { "A directory cannot be both present and deleted" }
        require(files.none { file -> file.path in directories }) { "File and directory paths conflict" }
        deletedPaths.forEach(::validateRelativePath)
        require(files.none { it.path in deletedPaths }) { "A path cannot be both present and deleted" }

        // A current file cannot be an ancestor of another current file or directory.
        // Directory ancestors must be represented explicitly so the manifest inventory
        // can be checked exactly during restore.
        val currentFilePaths = files.map { it.path }.toSet()
        val currentDirectoryPaths = directories.toSet()
        files.forEach { file ->
            val segments = file.path.split('/')
            for (end in 1 until segments.size) {
                val ancestor = segments.take(end).joinToString("/")
                require(ancestor !in currentFilePaths) {
                    "A file path cannot contain another current path: $ancestor"
                }
                require(ancestor in currentDirectoryPaths) {
                    "Snapshot is missing parent directory metadata: $ancestor"
                }
            }
        }
        directories.forEach { directory ->
            val segments = directory.split('/')
            for (end in 1 until segments.size) {
                val ancestor = segments.take(end).joinToString("/")
                require(ancestor !in currentFilePaths) {
                    "A file path cannot contain a directory: $ancestor"
                }
                require(ancestor in currentDirectoryPaths) {
                    "Snapshot is missing parent directory metadata: $ancestor"
                }
            }
        }
    }

    fun encode(): String = buildString {
        append(HEADER).append('\n')
        append("snapshot\t").append(snapshotId).append('\n')
        append("parent\t").append(parentSnapshotId ?: "-").append('\n')
        files.sortedBy { it.path }.forEach { file ->
            append("file\t")
                .append(encodePath(file.path)).append('\t')
                .append(file.size).append('\t')
                .append(file.sha256.lowercase()).append('\n')
        }
        deletedPaths.sorted().forEach { path ->
            append("deleted\t").append(encodePath(path)).append('\n')
        }
        directories.sorted().forEach { path ->
            append("directory\t").append(encodePath(path)).append('\n')
        }
        deletedDirectories.sorted().forEach { path ->
            append("deleted-directory\t").append(encodePath(path)).append('\n')
        }
    }

    companion object {
        const val ARCHIVE_ENTRY = "META-INF/bare-folder-snapshot.v2"
        private const val HEADER = "BARE-FOLDER-SNAPSHOT\t2"

        fun decode(text: String): FolderSnapshotManifest {
            val lines = text.lineSequence().filter { it.isNotEmpty() }.toList()
            require(lines.firstOrNull() == HEADER) { "Unsupported folder snapshot manifest" }
            var snapshotId: String? = null
            var parentId: String? = null
            var parentSeen = false
            val files = mutableListOf<FolderFileFingerprint>()
            val deleted = mutableListOf<String>()
            val directories = mutableListOf<String>()
            val deletedDirectories = mutableListOf<String>()

            lines.drop(1).forEach { line ->
                val fields = line.split('\t')
                when (fields.firstOrNull()) {
                    "snapshot" -> {
                        require(fields.size == 2 && snapshotId == null) { "Malformed snapshot id record" }
                        snapshotId = fields[1]
                    }
                    "parent" -> {
                        require(fields.size == 2 && !parentSeen) { "Malformed parent record" }
                        parentSeen = true
                        parentId = fields[1].takeUnless { it == "-" }
                    }
                    "file" -> {
                        require(fields.size == 4) { "Malformed file record" }
                        val path = decodePath(fields[1])
                        val size = fields[2].toLongOrNull()
                            ?: throw IllegalArgumentException("Invalid file size in snapshot manifest")
                        files += FolderFileFingerprint(path, size, fields[3])
                    }
                    "deleted" -> {
                        require(fields.size == 2) { "Malformed deleted-path record" }
                        deleted += decodePath(fields[1]).also(::validateRelativePath)
                    }
                    "directory" -> {
                        require(fields.size == 2) { "Malformed directory record" }
                        directories += decodePath(fields[1]).also(::validateRelativePath)
                    }
                    "deleted-directory" -> {
                        require(fields.size == 2) { "Malformed deleted-directory record" }
                        deletedDirectories += decodePath(fields[1]).also(::validateRelativePath)
                    }
                    else -> throw IllegalArgumentException("Unknown folder snapshot manifest record")
                }
            }
            require(snapshotId != null && parentSeen) { "Snapshot manifest is missing required records" }
            return FolderSnapshotManifest(snapshotId!!, parentId, files, deleted, directories, deletedDirectories)
        }

        private fun encodePath(path: String): String =
            Base64.getUrlEncoder().withoutPadding().encodeToString(path.toByteArray(StandardCharsets.UTF_8))

        private fun decodePath(path: String): String = try {
            String(Base64.getUrlDecoder().decode(path), StandardCharsets.UTF_8)
        } catch (_: IllegalArgumentException) {
            throw IllegalArgumentException("Invalid encoded path in snapshot manifest")
        }

        private fun validateRelativePath(path: String) {
            require(path.isNotBlank() && !path.startsWith("/") &&
                path.indexOf(92.toChar()) < 0 && !path.matches(Regex("^[A-Za-z]:.*")) &&
                path.split('/').all { it.isNotEmpty() && it != "." && it != ".." }
            ) { "Snapshot contains an invalid relative path" }
        }
    }
}
