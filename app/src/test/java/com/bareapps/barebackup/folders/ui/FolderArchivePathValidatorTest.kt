package com.bareapps.barebackup.folders.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class FolderArchivePathValidatorTest {
    @Test
    fun acceptsNestedFileAndDirectoryEntries() {
        assertEquals(listOf("photos", "2026", "image.jpg"), FolderArchivePathValidator.validate("photos/2026/image.jpg"))
        assertEquals(listOf("empty", "folder"), FolderArchivePathValidator.validate("empty/folder/"))
    }

    @Test
    fun rejectsAbsoluteAndTraversalPaths() {
        listOf("/etc/passwd", "../escape.txt", "folder/../../escape.txt", "folder\\escape.txt").forEach { path ->
            assertThrows(IllegalArgumentException::class.java) {
                FolderArchivePathValidator.validate(path)
            }
        }
    }

    @Test
    fun rejectsEmptySegmentsAndInvalidCharacters() {
        listOf("", "/", "folder//file.txt", "folder/\u0000file.txt").forEach { path ->
            assertThrows(IllegalArgumentException::class.java) {
                FolderArchivePathValidator.validate(path)
            }
        }
    }

    @Test
    fun rejectsExcessiveDepthAndLongSegments() {
        val tooDeep = (1..65).joinToString("/") { "d" }
        val tooLong = "a".repeat(256)
        listOf(tooDeep, tooLong).forEach { path ->
            assertThrows(IllegalArgumentException::class.java) {
                FolderArchivePathValidator.validate(path)
            }
        }
    }
}
