package com.bareapps.barebackup.folders.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class FolderArchivePathValidatorTest {
    @Test
    fun acceptsNestedFilesAndExplicitParentDirectories() {
        val validator = FolderArchivePathValidator()
        assertEquals("photos", validator.register("photos/", isDirectory = true))
        assertEquals("photos/2026", validator.register("photos/2026/", isDirectory = true))
        assertEquals("photos/2026/image.jpg", validator.register("photos/2026/image.jpg", isDirectory = false))
    }

    @Test
    fun rejectsTraversalAbsoluteAndMalformedPaths() {
        val validator = FolderArchivePathValidator()
        listOf("../escape.txt", "photos/../../escape.txt", "/absolute.txt", "C:/drive.txt",
            "photos\\escape.jpg", "photos//image.jpg", "./image.jpg", "photos/./image.jpg"
        ).forEach { path ->
            assertThrows(IllegalArgumentException::class.java) {
                validator.register(path, isDirectory = false)
            }
        }
    }

    @Test
    fun rejectsBlankAndOverlongPaths() {
        val validator = FolderArchivePathValidator(maxPathLength = 8)
        assertThrows(IllegalArgumentException::class.java) {
            validator.register(" ", isDirectory = false)
        }
        assertThrows(IllegalArgumentException::class.java) {
            validator.register("123456789", isDirectory = false)
        }
    }

    @Test
    fun rejectsDuplicateEntries() {
        val validator = FolderArchivePathValidator()
        validator.register("report.txt", isDirectory = false)
        assertThrows(IllegalArgumentException::class.java) {
            validator.register("report.txt", isDirectory = false)
        }
    }

    @Test
    fun rejectsFileThenChildPathConflict() {
        val validator = FolderArchivePathValidator()
        validator.register("photos", isDirectory = false)
        assertThrows(IllegalArgumentException::class.java) {
            validator.register("photos/image.jpg", isDirectory = false)
        }
    }

    @Test
    fun rejectsChildThenFileParentConflict() {
        val validator = FolderArchivePathValidator()
        validator.register("photos/image.jpg", isDirectory = false)
        assertThrows(IllegalArgumentException::class.java) {
            validator.register("photos", isDirectory = false)
        }
    }

    @Test
    fun allowsImplicitParentToBeDeclaredAsDirectoryOnce() {
        val validator = FolderArchivePathValidator()
        validator.register("photos/image.jpg", isDirectory = false)
        assertEquals("photos", validator.register("photos/", isDirectory = true))
    }

    @Test
    fun rejectsFileDirectoryConflictAtSamePath() {
        val validator = FolderArchivePathValidator()
        validator.register("photos/", isDirectory = true)
        assertThrows(IllegalArgumentException::class.java) {
            validator.register("photos", isDirectory = false)
        }
    }
}
