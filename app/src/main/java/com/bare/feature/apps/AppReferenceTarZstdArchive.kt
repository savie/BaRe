package com.bare.feature.apps

import com.bare.capability.RootArchiveSource
import com.bare.capability.RootCapabilityProvider
import com.github.luben.zstd.ZstdOutputStream
import org.apache.commons.compress.archivers.tar.TarArchiveEntry
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.InputStream
import java.io.OutputStream

/**
 * BaRe archive payload implementation aligned with the audited Swift SBA mechanism:
 * TAR container + Zstandard compression.
 *
 * Encryption remains outside this class and is intentionally owned by BaRe.
 */
internal class AppReferenceTarZstdArchive {
    private val root = RootCapabilityProvider()

    fun writeLocal(
        output: OutputStream,
        sources: List<AppBackupArchiveSource>,
        onProgress: ((Long, Long) -> Unit)? = null,
    ): Int {
        val total = sources.sumOf { sourceSize(it.file) }
        val progress = Progress(total, onProgress)
        TarArchiveOutputStream(ZstdOutputStream(output, REFERENCE_FASTEST_LEVEL)).use { tar ->
            configure(tar)
            var count = 0
            for (source in sources) {
                count += addLocalSource(tar, source, progress)
            }
            tar.finish()
            progress.finish()
            return count
        }
    }

    fun writeRoot(
        output: OutputStream,
        sources: List<RootArchiveSource>,
        onProgress: ((Long, Long) -> Unit)? = null,
        isCancelled: () -> Boolean = { false },
    ): Int {
        val total = sources.sumOf { it.byteSize.coerceAtLeast(0L) }
        val progress = Progress(total, onProgress)
        TarArchiveOutputStream(ZstdOutputStream(output, REFERENCE_FASTEST_LEVEL)).use { tar ->
            configure(tar)
            var count = 0
            for (source in sources) {
                if (isCancelled()) throw AppBackupEngine.BackupCancelledException()
                count += addRootSource(tar, source, progress, isCancelled)
            }
            tar.finish()
            progress.finish()
            return count
        }
    }

    private fun configure(tar: TarArchiveOutputStream) {
        tar.setLongFileMode(TarArchiveOutputStream.LONGFILE_POSIX)
        tar.setBigNumberMode(TarArchiveOutputStream.BIGNUMBER_POSIX)
        tar.setAddPaxHeadersForNonAsciiNames(true)
    }

    private fun addLocalSource(
        tar: TarArchiveOutputStream,
        source: AppBackupArchiveSource,
        progress: Progress,
    ): Int {
        if (!source.file.exists()) return 0
        if (source.file.isFile) {
            addLocalEntry(tar, source.file, source.entryName, progress)
            return 1
        }

        var count = 0
        source.file.walkTopDown().forEach { file ->
            val relative = file.relativeTo(source.file).invariantSeparatorsPath
            val name = if (relative.isBlank()) {
                source.entryName.trimEnd('/') + "/"
            } else {
                source.entryName.trimEnd('/') + "/" + relative
            }
            if (file.isDirectory) {
                val entry = TarArchiveEntry(name)
                entry.modTime = java.util.Date(file.lastModified())
                tar.putArchiveEntry(entry)
                tar.closeArchiveEntry()
            } else if (file.isFile) {
                addLocalEntry(tar, file, name, progress)
                count++
            }
        }
        return count
    }

    private fun addLocalEntry(
        tar: TarArchiveOutputStream,
        file: File,
        name: String,
        progress: Progress,
    ) {
        val entry = TarArchiveEntry(name.replace('\\', '/'))
        entry.size = file.length().coerceAtLeast(0L)
        entry.modTime = java.util.Date(file.lastModified())
        tar.putArchiveEntry(entry)
        FileInputStream(file).use { input ->
            copy(input, tar, entry.size, progress)
        }
        tar.closeArchiveEntry()
    }

    private fun addRootSource(
        tar: TarArchiveOutputStream,
        source: RootArchiveSource,
        progress: Progress,
        isCancelled: () -> Boolean,
    ): Int {
        var count = 0
        root.openTarStream(source.sourcePath).use { rootTar ->
            TarArchiveInputStream(rootTar.input).use { input ->
                while (true) {
                    if (isCancelled()) throw AppBackupEngine.BackupCancelledException()
                    val entry = input.nextTarEntry ?: break
                    val outputName = rootEntryName(source, entry.name)
                    if (outputName.isBlank()) {
                        continue
                    }

                    val outputEntry = TarArchiveEntry(outputName, entry.linkFlag)
                    outputEntry.size = entry.size
                    outputEntry.mode = entry.mode
                    outputEntry.userId = entry.longUserId
                    outputEntry.groupId = entry.longGroupId
                    outputEntry.userName = entry.userName
                    outputEntry.groupName = entry.groupName
                    outputEntry.modTime = entry.modTime
                    if (entry.isLink) {
                        outputEntry.linkName = entry.linkName
                    }
                    entry.extraPaxHeaders.forEach { (key, value) ->
                        outputEntry.addPaxHeader(key, value)
                    }
                    tar.putArchiveEntry(outputEntry)

                    if (!entry.isDirectory && !entry.isSymbolicLink && !entry.isLink) {
                        copy(input, tar, entry.size, progress, isCancelled)
                        count++
                    }
                    tar.closeArchiveEntry()
                }
            }
            rootTar.awaitSuccess()
        }
        return count
    }

    private fun rootEntryName(source: RootArchiveSource, tarName: String): String {
        var name = tarName.replace('\\', '/').removePrefix("./").trim('/')
        if (name.isBlank()) return ""
        if (!source.directory) return source.entryName.trim('/')

        val sourceNormalized = source.sourcePath.replace('\\', '/').trim('/')
        if (name == sourceNormalized) return ""
        if (name.startsWith(sourceNormalized + "/")) {
            name = name.removePrefix(sourceNormalized + "/")
        } else {
            val slash = name.indexOf('/')
            if (slash >= 0) name = name.substring(slash + 1)
        }

        val parts = name.split('/').filter { it.isNotBlank() && it != "." }
        require(parts.none { it == ".." }) { "Unsafe root archive path: $tarName" }
        if (parts.isEmpty()) return ""
        return source.entryName.trimEnd('/') + "/" + parts.joinToString("/")
    }

    private fun copy(
        input: InputStream,
        output: OutputStream,
        expected: Long,
        progress: Progress,
        isCancelled: (() -> Boolean)? = null,
    ) {
        var remaining = expected
        val buffer = ByteArray(BUFFER_BYTES)
        while (remaining > 0L) {
            if (isCancelled?.invoke() == true) throw AppBackupEngine.BackupCancelledException()
            val wanted = minOf(buffer.size.toLong(), remaining).toInt()
            val read = input.read(buffer, 0, wanted)
            if (read < 0) throw IllegalStateException("Unexpected end of archive entry")
            output.write(buffer, 0, read)
            progress.add(read.toLong())
            remaining -= read.toLong()
        }
    }

    private fun sourceSize(file: File): Long =
        if (!file.exists()) 0L
        else if (file.isFile) file.length().coerceAtLeast(0L)
        else file.walkTopDown().filter { it.isFile }.sumOf { it.length().coerceAtLeast(0L) }

    private class Progress(
        private val total: Long,
        private val callback: ((Long, Long) -> Unit)?,
    ) {
        private var processed = 0L
        private var lastNanos = 0L
        private var lastBytes = -1L

        fun add(bytes: Long) {
            processed += bytes
            emit(false)
        }

        fun finish() {
            emit(true)
        }

        private fun emit(force: Boolean) {
            val cb = callback ?: return
            val now = System.nanoTime()
            if (!force &&
                lastNanos != 0L &&
                now - lastNanos < 500_000_000L &&
                processed - lastBytes < 1_048_576L
            ) return
            cb(processed, total)
            lastNanos = now
            lastBytes = processed
        }
    }

    companion object {
        private const val REFERENCE_FASTEST_LEVEL = 1
        private const val BUFFER_BYTES = 1024 * 1024
    }
}
