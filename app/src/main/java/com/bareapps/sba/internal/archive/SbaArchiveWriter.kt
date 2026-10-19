package com.bareapps.sba.internal.archive

import androidx.annotation.Keep
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import com.github.luben.zstd.ZstdOutputStream
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardCopyOption
import java.nio.file.StandardOpenOption
import java.nio.file.attribute.BasicFileAttributes
import java.util.Locale
import java.util.zip.CRC32
import kotlin.io.path.isDirectory

/** Independent SBA v1 writer for unencrypted archives. */
@Keep
internal object SbaArchiveWriter {
    private const val FILE_HEADER_SIZE = 96
    private const val ENTRY_HEADER_SIZE = 24
    private const val INDEX_HEADER_SIZE = 16
    private const val INDEX_RECORD_SIZE_V1 = 84
    private const val FOOTER_SIZE = 32
    private const val MAX_METADATA = 1 shl 20
    private const val TAR_BLOCK = 512

    private data class EntryRecord(
        val name: ByteArray, val entryOffset: Long, val payloadOffset: Long,
        val storedSize: Long, val compressedSize: Long, val tarSize: Long, val flags: Int,
    )

    @JvmStatic
    @Keep
    @Throws(IOException::class)
    fun createArchive(
        mode: Int, outputPath: String, metadata: ByteArray, sourcePaths: Array<String>,
        entryNames: Array<String>, entryModes: IntArray, includePaths: Array<out Array<String>?>,
        excludePaths: Array<out Array<String>?>, option0: Int, option1: Int, option2: Int,
        option3: Int, option4: Int, option5: Int, option6: Int, option7: Int, option8: Int,
        option9: Int, key0: ByteArray?, key1: ByteArray?, key2: ByteArray?, key3: ByteArray?,
        progress: SbaNativeProgressListener?,
    ): LongArray {
        val started = System.nanoTime()
        require(mode == 1) { "Encrypted SBA creation is not enabled in this writer" }
        require(metadata.size <= MAX_METADATA) { "SBA archive metadata exceeds 1 MiB" }
        require(sourcePaths.size == entryNames.size && sourcePaths.size == entryModes.size &&
            sourcePaths.size == includePaths.size && sourcePaths.size == excludePaths.size) {
            "SBA entry arrays must have identical lengths"
        }
        require(sourcePaths.isNotEmpty()) { "SBA archive must contain at least one entry" }
        require(option0 in 0..1) { "Unsupported SBA compression method: $option0" }
        require(if (option0 == 0) option1 == 0 else option1 in 1..22) { "Invalid SBA Zstandard compression level" }
        require(listOf(option2, option3, option4, option5, option6, option7, option8, option9).all { it == 0 }) {
            "Unsupported encryption or format options for unencrypted SBA v1"
        }
        require(key0 == null && key1 == null && key2 == null && key3 == null) {
            "Key material must be absent for unencrypted SBA creation"
        }
        require(entryNames.toSet().size == entryNames.size) { "Duplicate SBA entry name" }
        entryNames.forEach(::validateEntryName)

        val output = Path.of(outputPath).toAbsolutePath().normalize()
        val parent = output.parent ?: throw IOException("SBA output path must have a parent")
        Files.createDirectories(parent)
        val temporary = Files.createTempFile(parent, ".bare-sba-", ".tmp")
        val tarTemps = ArrayList<Path>()
        val compressedTemps = ArrayList<Path>()
        var headerMillis = 0L
        var payloadMillis = 0L
        var producerMillis = 0L
        var indexFooterMillis = 0L
        var result = LongArray(9)
        try {
            val records = ArrayList<EntryRecord>(sourcePaths.size)
            Files.newOutputStream(temporary, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE).use { raw ->
                BufferedOutputStream(raw).use { out ->
                    val headerStart = System.nanoTime()
                    out.write(fileHeader(option0, option1))
                    out.flush()
                    headerMillis = elapsedMillis(headerStart)

                    for (i in sourcePaths.indices) {
                        checkCancelled(progress)
                        val source = Path.of(sourcePaths[i]).toAbsolutePath().normalize()
                        require(Files.exists(source)) { "SBA source does not exist: $source" }
                        val tarTemp = Files.createTempFile(parent, ".bare-sba-tar-", ".tmp")
                        tarTemps.add(tarTemp)
                        val producerStart = System.nanoTime()
                        writeTar(source, tarTemp, entryModes[i], includePaths[i] ?: emptyArray(), excludePaths[i] ?: emptyArray(), progress)
                        producerMillis += elapsedMillis(producerStart)
                        val tarSize = Files.size(tarTemp)
                        require(tarSize >= TAR_BLOCK * 2 && tarSize % TAR_BLOCK == 0L) { "Generated TAR payload is not block aligned" }

                        val payloadTemp = if (option0 == 0) tarTemp else {
                            val compressed = Files.createTempFile(parent, ".bare-sba-zstd-", ".tmp")
                            compressedTemps.add(compressed)
                            val compressStart = System.nanoTime()
                            BufferedInputStream(Files.newInputStream(tarTemp)).use { input ->
                                Files.newOutputStream(compressed).use { sink ->
                                    ZstdOutputStream(sink, option1).use { encoder -> input.copyTo(encoder) }
                                }
                            }
                            payloadMillis += elapsedMillis(compressStart)
                            compressed
                        }
                        val storedSize = Files.size(payloadTemp)
                        val name = entryNames[i].toByteArray(StandardCharsets.UTF_8)
                        out.flush()
                        val entryOffset = Files.size(temporary)
                        val flags = if (option0 == 1) 1 else 0
                        val header = entryHeader(flags, name)
                        out.write(header)
                        out.write(name)
                        val payloadOffset = entryOffset + header.size + name.size
                        Files.newInputStream(payloadTemp).use { it.copyTo(out) }
                        out.flush()
                        records.add(EntryRecord(name, entryOffset, payloadOffset, storedSize, storedSize, tarSize, flags))
                        progress?.onProgress(i + 1L, sourcePaths.size.toLong())
                    }

                    val indexStart = System.nanoTime()
                    val indexOffset = Files.size(temporary)
                    val index = indexBytes(metadata, records)
                    out.write(index)
                    out.write(footer(indexOffset, index.size.toLong(), crc32(index)))
                    out.flush()
                    indexFooterMillis = elapsedMillis(indexStart)
                    result = longArrayOf(
                        Files.size(temporary), indexOffset, index.size.toLong(), headerMillis,
                        payloadMillis, producerMillis, 0L, indexFooterMillis, elapsedMillis(started),
                    )
                }
            }
            checkCancelled(progress)
            try {
                Files.move(temporary, output, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING)
            } catch (_: java.nio.file.AtomicMoveNotSupportedException) {
                Files.move(temporary, output, StandardCopyOption.REPLACE_EXISTING)
            }
            return result
        } finally {
            Files.deleteIfExists(temporary)
            tarTemps.forEach { Files.deleteIfExists(it) }
            compressedTemps.forEach { Files.deleteIfExists(it) }
        }
    }

    private fun fileHeader(compression: Int, level: Int): ByteArray {
        val b = ByteBuffer.allocate(FILE_HEADER_SIZE).order(ByteOrder.BIG_ENDIAN)
        b.put("SBA1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(1); b.putShort(FILE_HEADER_SIZE.toShort())
        b.putInt(if (compression == 1) 1 else 0)
        b.putLong(System.currentTimeMillis())
        b.putShort(compression.toShort()); b.putShort(level.toShort())
        repeat(8) { b.putShort(0) }
        b.put(ByteArray(48))
        b.putShort(0); b.putShort(0); b.putInt(0); b.putInt(0)
        check(b.position() == FILE_HEADER_SIZE)
        return b.array()
    }

    private fun entryHeader(flags: Int, name: ByteArray): ByteArray {
        require(name.isNotEmpty() && name.size <= 65535)
        val b = ByteBuffer.allocate(ENTRY_HEADER_SIZE).order(ByteOrder.BIG_ENDIAN)
        b.put("SAE1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(ENTRY_HEADER_SIZE.toShort()); b.putShort(0); b.putInt(flags)
        b.putShort(name.size.toShort()); b.putInt(0); b.put(ByteArray(6))
        return b.array()
    }

    private fun indexBytes(metadata: ByteArray, records: List<EntryRecord>): ByteArray {
        val size = INDEX_HEADER_SIZE.toLong() + metadata.size + records.sumOf { INDEX_RECORD_SIZE_V1.toLong() + it.name.size }
        require(size <= Int.MAX_VALUE) { "SBA index is too large" }
        val b = ByteBuffer.allocate(size.toInt()).order(ByteOrder.BIG_ENDIAN)
        b.put("SAI1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(INDEX_HEADER_SIZE.toShort()); b.putShort(1); b.putInt(records.size); b.putInt(metadata.size)
        b.put(metadata)
        records.forEach { r ->
            b.putLong(r.entryOffset); b.putLong(r.payloadOffset); b.putLong(r.storedSize)
            b.putLong(r.compressedSize); b.putLong(r.tarSize); b.putInt(r.flags)
            b.putShort(r.name.size.toShort()); b.putInt(0); b.putShort(0); b.put(ByteArray(32)); b.put(r.name)
        }
        return b.array()
    }

    private fun footer(indexOffset: Long, indexSize: Long, indexCrc: Int): ByteArray {
        val b = ByteBuffer.allocate(FOOTER_SIZE).order(ByteOrder.BIG_ENDIAN)
        b.put("SAF1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(FOOTER_SIZE.toShort()); b.putShort(1); b.putLong(indexOffset); b.putLong(indexSize); b.putInt(indexCrc)
        b.putInt(CRC32().apply { update(b.array(), 0, 28) }.value.toInt())
        return b.array()
    }

    private fun writeTar(source: Path, destination: Path, flags: Int, includes: Array<String>, excludes: Array<String>, progress: SbaNativeProgressListener?) {
        val includeRoot = flags and 8 != 0
        val includeSet = includes.filter { it.isNotBlank() }.toSet()
        val excludeSet = excludes.filter { it.isNotBlank() }.toSet()
        val paths = if (source.isDirectory()) Files.walk(source).use { it.sorted().iterator().asSequence().toList() } else listOf(source)
        var emitted = 0
        Files.newOutputStream(destination).use { raw ->
            BufferedOutputStream(raw).use { out ->
                for (path in paths) {
                    checkCancelled(progress)
                    val relative = if (path == source) { if (source.isDirectory()) Path.of("") else source.fileName } else source.relativize(path)
                    val relText = relative.toString().replace('\\', '/')
                    if (relText.isEmpty() && source.isDirectory() && !includeRoot) continue
                    if (relText.isNotEmpty() && !selected(relText, includeSet, excludeSet)) continue
                    val archiveName = if (includeRoot && source.isDirectory()) source.fileName.toString() + if (relText.isEmpty()) "" else "/$relText" else relText
                    if (archiveName.isEmpty()) continue
                    val attrs = Files.readAttributes(path, BasicFileAttributes::class.java)
                    if (attrs.isSymbolicLink || (!attrs.isDirectory && !attrs.isRegularFile)) continue
                    writeTarHeader(out, archiveName, attrs.isDirectory, attrs.size(), attrs.lastModifiedTime().toMillis() / 1000)
                    if (attrs.isRegularFile) {
                        Files.newInputStream(path).use { input ->
                            val buffer = ByteArray(64 * 1024)
                            while (true) {
                                checkCancelled(progress)
                                val n = input.read(buffer)
                                if (n < 0) break
                                if (n > 0) out.write(buffer, 0, n)
                            }
                        }
                        val pad = ((TAR_BLOCK - attrs.size() % TAR_BLOCK) % TAR_BLOCK).toInt()
                        if (pad > 0) out.write(ByteArray(pad))
                    }
                    emitted++
                }
                if (emitted == 0) throw IOException("SBA entry selection produced an empty TAR payload")
                out.write(ByteArray(TAR_BLOCK * 2))
            }
        }
    }

    private fun selected(path: String, includes: Set<String>, excludes: Set<String>): Boolean {
        fun matches(pattern: String): Boolean {
            if (path == pattern || path.startsWith("$pattern/")) return true
            return try { java.nio.file.FileSystems.getDefault().getPathMatcher("glob:$pattern").matches(Path.of(path)) }
            catch (_: Exception) { false }
        }
        if (excludes.any(::matches)) return false
        return includes.isEmpty() || includes.any(::matches)
    }

    private fun writeTarHeader(out: java.io.OutputStream, name: String, directory: Boolean, size: Long, mtime: Long) {
        val split = splitName(name) ?: throw IOException("TAR path exceeds ustar limits: $name")
        val header = ByteArray(TAR_BLOCK)
        putText(header, 0, 100, split.second)
        putOctal(header, 100, 8, if (directory) 0x1ed else 0x1a4)
        putOctal(header, 108, 8, 0); putOctal(header, 116, 8, 0)
        putOctal(header, 124, 12, if (directory) 0 else size)
        putOctal(header, 136, 12, mtime.coerceAtLeast(0))
        for (i in 148 until 156) header[i] = 0x20
        header[156] = (if (directory) '5' else '0').code.toByte()
        putText(header, 257, 6, "ustar"); header[262] = 0; putText(header, 263, 2, "00")
        putText(header, 265, 32, "user"); putText(header, 297, 32, "group"); putText(header, 345, 155, split.first)
        val sum = header.sumOf { it.toInt() and 0xff }
        putText(header, 148, 6, String.format(Locale.ROOT, "%06o", sum))
        header[154] = 0; header[155] = ' '.code.toByte()
        out.write(header)
    }

    private fun splitName(name: String): Pair<String, String>? {
        if (name.toByteArray(StandardCharsets.UTF_8).size <= 100) return "" to name
        for (i in name.indices.reversed()) {
            if (name[i] != '/') continue
            val prefix = name.substring(0, i); val base = name.substring(i + 1)
            if (prefix.toByteArray(StandardCharsets.UTF_8).size <= 155 && base.toByteArray(StandardCharsets.UTF_8).size <= 100 && base.isNotEmpty()) return prefix to base
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
        val encoded = String.format(Locale.ROOT, "%0" + (length - 1) + "o", value)
        require(encoded.length <= length - 1) { "TAR numeric field overflow" }
        putText(target, offset, length - 1, encoded)
        target[offset + length - 1] = 0
    }

    private fun validateEntryName(name: String) {
        require(name.isNotBlank() && '\u0000' !in name && !name.startsWith("/") && '\\' !in name &&
            name.split('/').none { it.isEmpty() || it == "." || it == ".." }) { "Unsafe SBA entry name: $name" }
    }

    private fun crc32(bytes: ByteArray): Int = CRC32().apply { update(bytes) }.value.toInt()
    private fun checkCancelled(progress: SbaNativeProgressListener?) {
        if (progress?.isCancellationRequested() == true) throw java.io.InterruptedIOException("SBA archive creation cancelled")
    }
    private fun elapsedMillis(startNanos: Long): Long = (System.nanoTime() - startNanos) / 1_000_000L
}
