package com.bareapps.sba.internal.archive

import androidx.annotation.Keep
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.attribute.PosixFilePermission

/**
 * Shared staging policy for archive creation and authenticated plaintext restore.
 * This object deliberately does not load the JNI library, so the pure Kotlin writer
 * remains usable from host-side unit tests.
 */
@Keep
internal object SbaArchiveStaging {
    @Volatile private var configuredDirectory: Path? = null

    @JvmStatic
    @Throws(IOException::class)
    fun setTemporaryDirectory(path: String) {
        if (path.isBlank()) throw IOException("SBA temporary directory path must not be blank")
        val directory = Path.of(path).toAbsolutePath().normalize()
        Files.createDirectories(directory)
        if (!Files.isDirectory(directory) || !Files.isWritable(directory)) {
            throw IOException("SBA temporary directory is not writable")
        }
        configuredDirectory = directory
    }

    /**
     * Shizuku UserService normally runs as UID 2000, which cannot traverse the app-private
     * cache directory. Prefer that cache only when this process is root or the app UID;
     * otherwise use shell-owned system temp storage. The files themselves are owner-only.
     */
    @JvmStatic
    @Throws(IOException::class)
    fun configureForService(
        preferredPath: String?,
        serviceUid: Int,
        appUid: Int,
        shellTempPath: String = "/data/local/tmp",
    ) {
        val canUseAppCache = serviceUid == 0 || (serviceUid != 2000 && appUid >= 0 && serviceUid == appUid)
        val candidates = buildList {
            if (canUseAppCache && !preferredPath.isNullOrBlank()) add(preferredPath)
            if (shellTempPath.isNotBlank()) add(shellTempPath)
            System.getProperty("java.io.tmpdir")?.takeIf { it.isNotBlank() }?.let { add(it) }
        }.distinct()
        var lastFailure: Exception? = null
        for (candidate in candidates) {
            try {
                setTemporaryDirectory(candidate)
                return
            } catch (failure: Exception) {
                lastFailure = failure
            }
        }
        configuredDirectory = null
        throw IOException("No writable SBA staging directory for service UID $serviceUid", lastFailure)
    }

    @JvmStatic
    fun clearTemporaryDirectory() {
        configuredDirectory = null
    }

    @JvmStatic
    @Throws(IOException::class)
    fun createTempFile(prefix: String, suffix: String): Path {
        val directory = configuredDirectory
        val file = if (directory != null) Files.createTempFile(directory, prefix, suffix)
            else Files.createTempFile(prefix, suffix)
        try {
            Files.setPosixFilePermissions(
                file,
                setOf(PosixFilePermission.OWNER_READ, PosixFilePermission.OWNER_WRITE),
            )
        } catch (_: UnsupportedOperationException) {
            // Non-POSIX host filesystems already apply their platform temp-file defaults.
        } catch (failure: IOException) {
            try { Files.deleteIfExists(file) } catch (_: IOException) {}
            throw failure
        }
        return file
    }
}
