package com.bare.backup

import com.bare.core.domain.PrivilegeMode
import java.io.File
import java.nio.file.Files
import java.util.zip.ZipFile
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
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

            assertTrue("Unexpected backup result: $result", result is BackupResult.Success)
            assertTrue("Archive was not marked verified: $result", (result as BackupResult.Success).artifact.verified)
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
            assertTrue("Unexpected backup result: $result", result is BackupResult.Success)

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
}
