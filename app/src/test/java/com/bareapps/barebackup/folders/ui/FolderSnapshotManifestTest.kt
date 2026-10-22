package com.bareapps.barebackup.folders.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class FolderSnapshotManifestTest {
    private val digestA = "a".repeat(64)
    private val digestB = "b".repeat(64)

    @Test
    fun roundTripPreservesParentFilesAndDeletions() {
        val manifest = FolderSnapshotManifest(
            snapshotId = "snapshot_2",
            parentSnapshotId = "snapshot_1",
            files = listOf(
                FolderFileFingerprint("nested/a file.txt", 12, digestA),
                FolderFileFingerprint("unicodé/你好.txt", 7, digestB)
            ),
            deletedPaths = listOf("old/removed.txt"),
            directories = listOf("empty", "nested"),
            deletedDirectories = listOf("old", "old/deeper")
        )

        assertEquals(manifest, FolderSnapshotManifest.decode(manifest.encode()))
    }

    @Test
    fun encodingIsDeterministicRegardlessOfInputOrdering() {
        val first = FolderSnapshotManifest(
            "s2", "s1",
            listOf(FolderFileFingerprint("z.txt", 1, digestA), FolderFileFingerprint("a.txt", 2, digestB)),
            listOf("z-old.txt", "a-old.txt")
        )
        val second = FolderSnapshotManifest(
            "s2", "s1",
            listOf(FolderFileFingerprint("a.txt", 2, digestB), FolderFileFingerprint("z.txt", 1, digestA)),
            listOf("a-old.txt", "z-old.txt")
        )

        assertEquals(first.encode(), second.encode())
    }

    @Test
    fun rejectsMalformedHeadersAndUnknownRecords() {
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest.decode("NOT-A-MANIFEST")
        }
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest.decode("BARE-FOLDER-SNAPSHOT\t2\nsnapshot\ts1\nparent\t-\nwat\tx\n")
        }
    }

    @Test
    fun rejectsUnsafeDeletedPathsAndConflictingFileDeletion() {
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("s1", null, emptyList(), listOf("../escape"))
        }
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("s1", null, listOf(FolderFileFingerprint("same.txt", 1, digestA)), listOf("same.txt"))
        }
    }

    @Test
    fun rejectsDuplicateOrConflictingDirectoryMetadata() {
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("s1", null, emptyList(), emptyList(),
                directories = listOf("empty", "empty"))
        }
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("s1", null, emptyList(), emptyList(),
                directories = listOf("gone"), deletedDirectories = listOf("gone"))
        }
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("s1", null, emptyList(), emptyList(),
                directories = listOf("../escape"))
        }
        // A directory-to-file transition removes the old directory and introduces a file at that path.
        FolderSnapshotManifest("s2", "s1",
            listOf(FolderFileFingerprint("gone", 1, digestA)), emptyList(),
            deletedDirectories = listOf("gone"))
    }

    @Test
    fun rejectsInvalidIdsDuplicatePathsAndSelfParent() {
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("../bad", null, emptyList(), emptyList())
        }
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest("s1", "s1", emptyList(), emptyList())
        }
        assertThrows(IllegalArgumentException::class.java) {
            FolderSnapshotManifest(
                "s2", "s1",
                listOf(FolderFileFingerprint("dup.txt", 1, digestA), FolderFileFingerprint("dup.txt", 1, digestA)),
                emptyList()
            )
        }
    }
}
