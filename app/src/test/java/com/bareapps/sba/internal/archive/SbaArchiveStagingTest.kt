package com.bareapps.sba.internal.archive

import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.attribute.PosixFilePermission
import java.util.Comparator
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class SbaArchiveStagingTest {
    @Test
    fun shellUidUsesWritableSystemTempAndCreatesOwnerOnlyFiles() {
        val root = Files.createTempDirectory("sba-staging-uid")
        val appCache = Files.createDirectories(root.resolve("app-cache"))
        val shellTemp = root.resolve("shell-temp")
        try {
            SbaArchiveStaging.configureForService(appCache.toString(), 2000, 10123, shellTemp.toString())
            val shellFile = SbaArchiveStaging.createTempFile("bare-sba-shell-", ".tmp")
            assertEquals(shellTemp.toAbsolutePath().normalize(), shellFile.parent)
            assertTrue(Files.exists(shellFile))
            if ("posix" in java.nio.file.FileSystems.getDefault().supportedFileAttributeViews()) {
                assertEquals(
                    setOf(PosixFilePermission.OWNER_READ, PosixFilePermission.OWNER_WRITE),
                    Files.getPosixFilePermissions(shellFile),
                )
            }

            SbaArchiveStaging.configureForService(appCache.toString(), 10123, 10123, shellTemp.toString())
            val appFile = SbaArchiveStaging.createTempFile("bare-sba-app-", ".tmp")
            assertEquals(appCache.toAbsolutePath().normalize(), appFile.parent)
        } finally {
            SbaArchiveStaging.clearTemporaryDirectory()
            Files.walk(root).use { stream ->
                stream.sorted(Comparator.reverseOrder<Path>()).forEach { Files.deleteIfExists(it) }
            }
        }
    }
}
