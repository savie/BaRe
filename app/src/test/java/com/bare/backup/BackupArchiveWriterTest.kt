package com.bare.backup

import com.bare.core.domain.PrivilegeMode
import java.io.File
import java.nio.file.Files
import java.util.zip.ZipFile
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

class BackupArchiveWriterTest {
    @Test
    fun writeProducesVerifiableArchive() {
        val root = Files.createTempDirectory("bare-archive-test").toFile()
        try {
            val source = File(root, "base.apk").apply { writeBytes(ByteArray(131_072) { (it % 251).toByte() }) }
            val destination = File(root, "backup.bare.zip")
            val discovered = DiscoveredPackage(
                packageName = "com.example.app",
                label = "Example",
                versionName = "1.0",
                versionCode = 1,
                sourceApk = source.absolutePath,
                splitApks = emptyList(),
                debuggable = false,
            )

            val result = BackupArchiveWriter().write(
                destination,
                discovered,
                BackupPlan("com.example.app", PrivilegeMode.NON_ROOT),
            )
            requireSuccess(result, "ARCHIVE_WRITE_DIAGNOSTIC")
            val artifact = (result as BackupResult.Success).artifact

            assertTrue("Archive was not marked verified: $result", artifact.verified)
            assertTrue("Archive failed post-write verification", BackupArchiveWriter().verifyArchive(destination))
        } finally {
            root.deleteRecursively()
        }
    }

    @Test
    fun tamperedArchiveFailsIntegrityVerification() {
        val root = Files.createTempDirectory("bare-archive-tamper-test").toFile()
        try {
            val source = File(root, "base.apk").apply { writeText("original") }
            val destination = File(root, "backup.bare.zip")
            val discovered = DiscoveredPackage(
                packageName = "com.example.app",
                label = "Example",
                versionName = "1.0",
                versionCode = 1,
                sourceApk = source.absolutePath,
                splitApks = emptyList(),
                debuggable = false,
            )

            val result = BackupArchiveWriter().write(
                destination,
                discovered,
                BackupPlan("com.example.app", PrivilegeMode.NON_ROOT),
            )
            requireSuccess(result, "ARCHIVE_TAMPER_SETUP_DIAGNOSTIC")

            val tampered = File(root, "tampered.zip")
            ZipFile(destination).use { input ->
                java.util.zip.ZipOutputStream(tampered.outputStream()).use { output ->
                    val entries = input.entries()
                    while (entries.hasMoreElements()) {
                        val entry = entries.nextElement()
                        output.putNextEntry(java.util.zip.ZipEntry(entry.name))
                        val bytes = input.getInputStream(entry).use { it.readBytes() }
                        if (entry.name == "apk/base.apk") {
                            bytes[0] = (bytes[0].toInt() xor 0x01).toByte()
                        }
                        output.write(bytes)
                        output.closeEntry()
                    }
                }
            }

            assertFalse("Tampered archive unexpectedly verified", BackupArchiveWriter().verifyArchive(tampered))
        } finally {
            root.deleteRecursively()
        }
    }

    private fun requireSuccess(result: BackupResult, diagnosticTag: String) {
        when (result) {
            is BackupResult.Success -> Unit
            is BackupResult.Rejected -> fail("$diagnosticTag rejected: ${result.reason}")
            is BackupResult.Failed -> fail(
                buildString {
                    append("$diagnosticTag failed: ${result.reason}")
                    result.cause?.let {
                        append("\\nCause: ${it::class.qualifiedName}: ${it.message}")
                    }
                },
            )
        }
    }
}
