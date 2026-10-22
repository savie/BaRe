package com.bareapps.barebackup.appslist.ui.list

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class ApkArchiveEntryValidatorTest {
    @Test
    fun acceptsBulkAndSplitArchiveEntries() {
        assertEquals(
            ApkArchiveEntryValidator.Entry(ApkArchiveEntryValidator.Kind.APK, "com.example.app", "base.apk"),
            ApkArchiveEntryValidator.validate("com.example.app/base.apk")
        )
        assertEquals(
            ApkArchiveEntryValidator.Entry(ApkArchiveEntryValidator.Kind.APK, "single", "split_2.apk"),
            ApkArchiveEntryValidator.validate("split_2.apk")
        )
        assertEquals(
            ApkArchiveEntryValidator.Entry(ApkArchiveEntryValidator.Kind.MANIFEST, "", "manifest.csv"),
            ApkArchiveEntryValidator.validate("manifest.csv")
        )
    }

    @Test
    fun rejectsTraversalAndAbsolutePaths() {
        listOf("../base.apk", "com.example.app/../../evil.apk", "/base.apk", "com.example.app\\\\base.apk", "C:/base.apk")
            .forEach { path -> assertThrows(IllegalArgumentException::class.java) {
                ApkArchiveEntryValidator.validate(path)
            } }
    }

    @Test
    fun rejectsUnexpectedNamesAndNestedEntries() {
        listOf("notes.txt", "com.example.app/payload.apk", "com.example.app/nested/base.apk",
            "not-a-package/base.apk", "manifest.csv/extra", "base.apk/extra")
            .forEach { path -> assertThrows(IllegalArgumentException::class.java) {
                ApkArchiveEntryValidator.validate(path)
            } }
    }

    @Test
    fun rejectsEmptySegmentsAndOverlongPaths() {
        assertThrows(IllegalArgumentException::class.java) { ApkArchiveEntryValidator.validate("com.example.app//base.apk") }
        assertThrows(IllegalArgumentException::class.java) { ApkArchiveEntryValidator.validate("a".repeat(4097)) }
    }
}
