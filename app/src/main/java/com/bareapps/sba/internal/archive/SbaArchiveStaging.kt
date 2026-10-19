package com.bareapps.sba.internal.archive

import androidx.annotation.Keep
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path

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

    @JvmStatic
    @Throws(IOException::class)
    fun createTempFile(prefix: String, suffix: String): Path {
        configuredDirectory?.let { return Files.createTempFile(it, prefix, suffix) }
        // If callers did not configure an app-private cache, use the platform temp
        // directory. Fail closed rather than spilling plaintext beside a shared archive.
        return Files.createTempFile(prefix, suffix)
    }
}
