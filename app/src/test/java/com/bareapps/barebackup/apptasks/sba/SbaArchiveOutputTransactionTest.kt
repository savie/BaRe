package com.bareapps.barebackup.apptasks.sba

import java.nio.file.Files
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveOutputTransactionTest {
    @Test
    fun existingDestinationIsUntouchedUntilVerifiedStageIsCommitted() {
        val root = Files.createTempDirectory("sba-output-transaction")
        val destination = root.resolve("backup.sba")
        val original = byteArrayOf(7, 6, 5, 4)
        val replacement = byteArrayOf(1, 2, 3, 4, 5, 6)
        Files.write(destination, original)
        var staged: java.nio.file.Path? = null
        try {
            val (finalOutput, stage) = SbaArchiveOutputTransaction.createStagingFile(destination.toString())
            staged = stage
            assertTrue(finalOutput == destination.toAbsolutePath().normalize())
            Files.write(stage, replacement)

            // A failed verification leaves the previous user backup intact.
            assertArrayEquals(original, Files.readAllBytes(destination))
            assertTrue(Files.exists(stage))

            SbaArchiveOutputTransaction.commit(stage, finalOutput)
            staged = null
            assertArrayEquals(replacement, Files.readAllBytes(destination))
            assertFalse(Files.exists(root.resolve(stage.fileName)))
        } finally {
            staged?.let { Files.deleteIfExists(it) }
            Files.walk(root).sorted(Comparator.reverseOrder<java.nio.file.Path>()).forEach { Files.deleteIfExists(it) }
        }
    }

    @Test
    fun invalidOutputPathDoesNotCreateStagingFile() {
        org.junit.Assert.assertThrows(java.io.IOException::class.java) {
            SbaArchiveOutputTransaction.createStagingFile("")
        }
    }
}
