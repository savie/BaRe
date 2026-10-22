package com.bareapps.barebackup.folders.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class FolderIncrementalPlanTest {
    private val hashA = "a".repeat(64)
    private val hashB = "b".repeat(64)

    @Test
    fun unchangedSnapshotProducesEmptyPlan() {
        val files = listOf(
            FolderFileFingerprint("docs/readme.txt", 10, hashA),
            FolderFileFingerprint("photo.jpg", 200, hashB)
        )

        val plan = FolderIncrementalPlan.compare(files, files.reversed())

        assertTrue(plan.isEmpty)
        assertTrue(plan.changedOrAdded.isEmpty())
        assertTrue(plan.deletedPaths.isEmpty())
    }

    @Test
    fun identifiesAddedChangedAndDeletedFilesDeterministically() {
        val previous = listOf(
            FolderFileFingerprint("keep.txt", 1, hashA),
            FolderFileFingerprint("change.txt", 1, hashA),
            FolderFileFingerprint("delete.txt", 1, hashB)
        )
        val current = listOf(
            FolderFileFingerprint("z-added.txt", 3, hashA),
            FolderFileFingerprint("change.txt", 1, hashB),
            FolderFileFingerprint("keep.txt", 1, hashA),
            FolderFileFingerprint("a-added.txt", 2, hashA)
        )

        val plan = FolderIncrementalPlan.compare(previous, current)

        assertEquals(listOf("a-added.txt", "change.txt", "z-added.txt"), plan.changedOrAdded.map { it.path })
        assertEquals(listOf("delete.txt"), plan.deletedPaths)
        assertFalse(plan.isEmpty)
    }

    @Test
    fun sizeChangeIsDetectedEvenWhenDigestMatches() {
        val previous = listOf(FolderFileFingerprint("data.bin", 4, hashA))
        val current = listOf(FolderFileFingerprint("data.bin", 5, hashA))

        assertEquals(
            listOf("data.bin"),
            FolderIncrementalPlan.compare(previous, current).changedOrAdded.map { it.path }
        )
    }

    @Test
    fun rejectsUnsafePathsAndInvalidFingerprints() {
        listOf("../escape", "/absolute", "a/../b", "a\\b").forEach { path ->
            try {
                FolderFileFingerprint(path, 1, hashA)
                throw AssertionError("Expected invalid path to be rejected: $path")
            } catch (_: IllegalArgumentException) {
                // Expected.
            }
        }
        try {
            FolderFileFingerprint("file", -1, hashA)
            throw AssertionError("Expected negative size to be rejected")
        } catch (_: IllegalArgumentException) {
            // Expected.
        }
        try {
            FolderFileFingerprint("file", 1, "not-a-digest")
            throw AssertionError("Expected malformed digest to be rejected")
        } catch (_: IllegalArgumentException) {
            // Expected.
        }
    }

    @Test
    fun rejectsDuplicatePathsInEitherSnapshot() {
        val duplicate = listOf(
            FolderFileFingerprint("same.txt", 1, hashA),
            FolderFileFingerprint("same.txt", 1, hashB)
        )
        try {
            FolderIncrementalPlan.compare(emptyList(), duplicate)
            throw AssertionError("Expected duplicate paths to be rejected")
        } catch (_: IllegalArgumentException) {
            // Expected.
        }
    }
}
