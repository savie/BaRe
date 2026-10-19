package com.bareapps.barebackup.sba.internal.tar

import java.io.BufferedOutputStream
import java.io.IOException
import java.io.OutputStream
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardCopyOption
import java.nio.file.StandardOpenOption

/** Minimal POSIX ustar writer for regular-file payloads; this is not an SBA container writer. */
internal object UstarArchiveWriter {
    private const val BLOCK_SIZE = 512
    private const val MAX_OCTAL_SIZE = 0x1ffffffffL

    data class Entry(
        val name: String,
        val bytes: ByteArray,
        val mode: Int = 0x1a4,
        val modifiedTimeSeconds: Long = 0L
    )

    @Throws(IOException::class)
    fun write(destination: Path, entries: List<Entry>) {
        entries.forEach(::validateEntry)
        require(entries.map { it.name }.toSet().size == entries.size) {
            "TAR entry names must be unique"
        }
        val parent = destination.toAbsolutePath().parent
            ?: throw IOException("Destination must have a parent directory")
        Files.createDirectories(parent)
        val temporary = Files.createTempFile(parent, ".bare-ustar-", ".tmp")
        try {
            Files.newOutputStream(
                temporary, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE
            ).use { raw ->
                BufferedOutputStream(raw).use { output ->
                    entries.forEach { writeEntry(output, it) }
                    output.write(ByteArray(BLOCK_SIZE * 2))
                }
            }
            try {
                Files.move(
                    temporary, destination,
                    StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING
                )
            } catch (_: java.nio.file.AtomicMoveNotSupportedException) {
                Files.move(temporary, destination, StandardCopyOption.REPLACE_EXISTING)
            }
        } finally {
            Files.deleteIfExists(temporary)
        }
    }

    private fun validateEntry(entry: Entry) {
        require(entry.name.isNotBlank()) { "TAR entry name must not be blank" }
        require(!entry.name.startsWith("/") && '\\' !in entry.name) {
            "TAR entry path must be relative and use forward slashes"
        }
        require(entry.name.split('/').none { it == ".." || it == "." || it.isEmpty() }) {
            "TAR entry path contains an unsafe component"
        }
        val nameBytes = entry.name.toByteArray(StandardCharsets.UTF_8)
        require(nameBytes.size <= 100 || splitUstarPath(entry.name) != null) {
            "TAR entry name exceeds ustar path limits"
        }
        require(entry.bytes.size.toLong() <= MAX_OCTAL_SIZE) { "TAR entry is too large" }
        require(entry.mode in 0..0x1ff) { "TAR mode must be a permission bitmask" }
        require(entry.modifiedTimeSeconds in 0..MAX_OCTAL_SIZE) {
            "TAR timestamp is outside the supported ustar range"
        }
    }

    private fun writeEntry(output: OutputStream, entry: Entry) {
        val header = ByteArray(BLOCK_SIZE)
        val split = splitUstarPath(entry.name)
        putText(header, 0, 100, split?.second ?: entry.name)
        putOctal(header, 100, 8, entry.mode.toLong())
        putOctal(header, 108, 8, 0)
        putOctal(header, 116, 8, 0)
        putOctal(header, 124, 12, entry.bytes.size.toLong())
        putOctal(header, 136, 12, entry.modifiedTimeSeconds)
        for (i in 148 until 156) header[i] = 0x20
        header[156] = '0'.code.toByte()
        putText(header, 257, 6, "ustar")
        header[262] = 0
        putText(header, 263, 2, "00")
        putText(header, 265, 32, "user")
        putText(header, 297, 32, "group")
        putText(header, 345, 155, split?.first.orEmpty())
        val checksum = header.sumOf { it.toInt() and 0xff }
        putText(header, 148, 6, String.format(java.util.Locale.ROOT, "%06o", checksum))
        header[154] = 0
        header[155] = ' '.code.toByte()
        output.write(header)
        output.write(entry.bytes)
        val remainder = entry.bytes.size % BLOCK_SIZE
        if (remainder != 0) output.write(ByteArray(BLOCK_SIZE - remainder))
    }

    private fun splitUstarPath(name: String): Pair<String, String>? {
        if (name.toByteArray(StandardCharsets.UTF_8).size <= 100) return "" to name
        for (index in name.indices.reversed()) {
            if (name[index] != '/') continue
            val prefix = name.substring(0, index)
            val base = name.substring(index + 1)
            if (prefix.toByteArray(StandardCharsets.UTF_8).size <= 155 &&
                base.toByteArray(StandardCharsets.UTF_8).size <= 100 && base.isNotEmpty()
            ) return prefix to base
        }
        return null
    }

    private fun putText(target: ByteArray, offset: Int, length: Int, value: String) {
        val bytes = value.toByteArray(StandardCharsets.UTF_8)
        require(bytes.size <= length) { "TAR field exceeds its fixed width" }
        bytes.copyInto(target, offset)
    }

    private fun putOctal(target: ByteArray, offset: Int, length: Int, value: Long) {
        require(value >= 0)
        val encoded = String.format(java.util.Locale.ROOT, "%0" + (length - 1) + "o", value)
        require(encoded.length <= length - 1) { "TAR numeric field overflow" }
        putText(target, offset, length - 1, encoded)
        target[offset + length - 1] = 0
    }
}
