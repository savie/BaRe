package com.bareapps.sba.internal.archive

import androidx.annotation.Keep
import com.bareapps.sba.SbaLibaegisCryptoNative
import com.bareapps.sba.internal.progress.SbaNativeProgressListener
import com.github.luben.zstd.ZstdOutputStream
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.IOException
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.LinkOption
import java.nio.file.StandardCopyOption
import java.nio.file.StandardOpenOption
import java.nio.file.attribute.BasicFileAttributes
import java.nio.file.attribute.UserDefinedFileAttributeView
import java.util.Locale
import java.security.MessageDigest
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec
import java.util.zip.CRC32
import kotlin.io.path.isDirectory

/** Independent SBA v1/v2 writer for unencrypted and AEGIS-encrypted archives. */
@Keep
internal object SbaArchiveWriter {
    private const val FILE_HEADER_SIZE = 96
    private const val FILE_HEADER_SIZE_V2 = 144
    private const val ENTRY_HEADER_SIZE = 24
    private const val INDEX_HEADER_SIZE = 16
    private const val INDEX_RECORD_SIZE_V1 = 84
    private const val INDEX_RECORD_SIZE_V2 = 108
    private const val FOOTER_SIZE = 32
    private const val MAX_METADATA = 1 shl 20
    private const val MAX_ENTRIES = 1_000_000
    private const val MAX_INDEX_BYTES = 64 shl 20
    private const val TAR_BLOCK = 512
    private const val MAX_TAR_OCTAL = 0x1ffffffffL

    private data class EntryRecord(
        val name: ByteArray, val entryOffset: Long, val payloadOffset: Long,
        val storedSize: Long, val compressedSize: Long, val tarSize: Long, val flags: Int,
        val tarEntryCount: Long = 0, val regularFileCount: Long = 0, val directoryCount: Long = 0,
    )
    private data class TarCounts(val entries: Long, val regularFiles: Long, val directories: Long)

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
        val encrypted = mode == 2
        val version = if (option8 == 2) 2 else 1
        require(mode == 1 || encrypted) { "Unsupported SBA archive mode" }
        require(metadata.size <= MAX_METADATA) { "SBA archive metadata exceeds 1 MiB" }
        require(sourcePaths.size == entryNames.size && sourcePaths.size == entryModes.size &&
            sourcePaths.size == includePaths.size && sourcePaths.size == excludePaths.size) {
            "SBA entry arrays must have identical lengths"
        }
        require(sourcePaths.isNotEmpty() && sourcePaths.size <= MAX_ENTRIES) { "Invalid SBA entry count" }
        require(outputPath.isNotBlank() && sourcePaths.all { it.isNotBlank() }) { "SBA paths must not be blank" }
        require(option0 in 0..1) { "Unsupported SBA compression method: $option0" }
        require(if (option0 == 0) option1 == 0 else option1 in 1..22) { "Invalid SBA Zstandard compression level" }
        if (encrypted) {
            require(option2 in 4..5 && option3 == 1 && option4 == 3 &&
                option5 == 16384 && option6 == 1 && option7 in 4096..16777216 &&
                option8 in 1..2 && option9 == if (option2 == 4) 32 else 16) {
                "Invalid SBA AEGIS/KDF options"
            }
            require(key0?.size == option9 && key1?.size == 16 && key2?.size == 16 && key3?.size == 16) {
                "Invalid SBA AEGIS key material"
            }
            val keyCheck = MessageDigest.getInstance("SHA-256").run {
                update((if (option2 == 4) "SBA1-AEGIS256-key-check-v1" else
                    "SBA1-AEGIS128X2-key-check-v1").toByteArray(StandardCharsets.UTF_8))
                update(key2!!)
                update(key3!!)
                update(key0!!)
                digest().copyOf(16)
            }
            val validKeyCheck = MessageDigest.isEqual(keyCheck, key1!!)
            java.util.Arrays.fill(keyCheck, 0)
            require(validKeyCheck) { "SBA AEGIS key-check does not match the supplied key material" }
        } else {
            require(listOf(option2, option3, option4, option5, option6, option7, option9).all { it == 0 } &&
                option8 in 0..2) {
                "Unsupported encryption or format options for unencrypted SBA"
            }
            require(key0 == null && key1 == null && key2 == null && key3 == null) {
                "Key material must be absent for unencrypted SBA creation"
            }
        }
        require(entryNames.toSet().size == entryNames.size) { "Duplicate SBA entry name" }
        entryNames.forEach {
            validateEntryName(it)
            require(it.toByteArray(StandardCharsets.UTF_8).size <= 65535) { "SBA entry name is too long" }
        }

        val output = Path.of(outputPath).toAbsolutePath().normalize()
        val parent = output.parent ?: throw IOException("SBA output path must have a parent")
        Files.createDirectories(parent)
        val temporary = Files.createTempFile(parent, ".bare-sba-", ".tmp")
        val tarTemps = ArrayList<Path>()
        val compressedTemps = ArrayList<Path>()
        val encryptedTemps = ArrayList<Path>()
        var headerMillis = 0L
        var payloadMillis = 0L
        var producerMillis = 0L
        var indexFooterMillis = 0L
        var result = LongArray(9)
        var headerBytes = ByteArray(0)
        var indexMacToWrite: ByteArray? = null
        try {
            val records = ArrayList<EntryRecord>(sourcePaths.size)
            Files.newOutputStream(temporary, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE).use { raw ->
                BufferedOutputStream(raw).use { out ->
                    val headerStart = System.nanoTime()
                    headerBytes = fileHeader(
                        version, option0, option1,
                        if (encrypted) option2 else 0, if (encrypted) option3 else 0,
                        if (encrypted) option4 else 0, if (encrypted) option7 else 0,
                        if (encrypted) option5 else 0, if (encrypted) option6 else 0,
                        if (encrypted) key1 else null, if (encrypted) key2 else null,
                        if (encrypted) key3 else null,
                    )
                    out.write(headerBytes)
                    out.flush()
                    headerMillis = elapsedMillis(headerStart)

                    for (i in sourcePaths.indices) {
                        checkCancelled(progress)
                        val source = Path.of(sourcePaths[i]).toAbsolutePath().normalize()
                        val sourceExists = Files.exists(source, LinkOption.NOFOLLOW_LINKS)
                        require(sourceExists || entryModes[i] and 16 != 0) { "SBA source does not exist: $source" }
                        val tarTemp = SbaArchiveStaging.createTempFile(".bare-sba-tar-", ".tmp")
                        tarTemps.add(tarTemp)
                        val producerStart = System.nanoTime()
                        val tarCounts = if (sourceExists) {
                            writeTar(source, tarTemp, entryModes[i], includePaths[i] ?: emptyArray(), excludePaths[i] ?: emptyArray(), progress)
                        } else {
                            Files.newOutputStream(tarTemp).use { it.write(ByteArray(TAR_BLOCK * 2)) }
                            TarCounts(0L, 0L, 0L)
                        }
                        producerMillis += elapsedMillis(producerStart)
                        val tarSize = Files.size(tarTemp)
                        require(tarSize >= TAR_BLOCK * 2 && tarSize % TAR_BLOCK == 0L) { "Generated TAR payload is not block aligned" }

                        val payloadTemp = if (option0 == 0) tarTemp else {
                            val compressed = SbaArchiveStaging.createTempFile(".bare-sba-zstd-", ".tmp")
                            compressedTemps.add(compressed)
                            val compressStart = System.nanoTime()
                            BufferedInputStream(Files.newInputStream(tarTemp)).use { input ->
                                Files.newOutputStream(compressed).use { sink ->
                                    ZstdOutputStream(sink, option1).use { encoder ->
                                        val buffer = ByteArray(64 * 1024)
                                        while (true) {
                                            checkCancelled(progress)
                                            val count = input.read(buffer)
                                            if (count < 0) break
                                            if (count > 0) encoder.write(buffer, 0, count)
                                        }
                                    }
                                }
                            }
                            payloadMillis += elapsedMillis(compressStart)
                            compressed
                        }
                        val compressedSize = Files.size(payloadTemp)
                        val storedPayload = if (!encrypted) payloadTemp else {
                            val encryptedTemp = SbaArchiveStaging.createTempFile(".bare-sba-aegis-", ".tmp")
                            encryptedTemps.add(encryptedTemp)
                            FileInputStream(payloadTemp.toFile()).use { input ->
                                FileOutputStream(encryptedTemp.toFile()).use { output ->
                                    val encryptedCounts = if (option2 == 4) {
                                        SbaLibaegisCryptoNative.a.encryptAegis256ChunkedEntryFdRaw(
                                            input.fd, compressedSize, output.fd, key0!!, key3!!,
                                            entryNames[i].toByteArray(StandardCharsets.UTF_8), i.toLong(),
                                            option7, progress,
                                        )
                                    } else {
                                        SbaLibaegisCryptoNative.a.encryptAegis128X2ChunkedEntryFdRaw(
                                            input.fd, compressedSize, output.fd, key0!!, key3!!,
                                            entryNames[i].toByteArray(StandardCharsets.UTF_8), i.toLong(),
                                            option7, progress,
                                        )
                                    }
                                    output.flush()
                                    val expectedChunks = if (compressedSize == 0L) 0L else
                                        (compressedSize - 1L) / option7.toLong() + 1L
                                    val expectedStored = compressedSize + expectedChunks * 16L
                                    if (encryptedCounts.size < 2 || encryptedCounts[0] != expectedStored ||
                                        encryptedCounts[1] != compressedSize) {
                                        throw IOException("native SBA AEGIS encrypted byte count mismatch")
                                    }
                                }
                            }
                            encryptedTemp
                        }
                        val storedSize = Files.size(storedPayload)
                        val name = entryNames[i].toByteArray(StandardCharsets.UTF_8)
                        out.flush()
                        val entryOffset = Files.size(temporary)
                        val baseFlags = if (option0 == 1) 3 else 1
                        val flags = if (encrypted) baseFlags or 20 else baseFlags
                        val header = entryHeader(flags, name)
                        out.write(header)
                        out.write(name)
                        val payloadOffset = entryOffset + header.size + name.size
                        Files.newInputStream(storedPayload).use { input ->
                            val buffer = ByteArray(64 * 1024)
                            while (true) {
                                checkCancelled(progress)
                                val count = input.read(buffer)
                                if (count < 0) break
                                if (count > 0) out.write(buffer, 0, count)
                            }
                        }
                        out.flush()
                        records.add(EntryRecord(
                            name, entryOffset, payloadOffset, storedSize, compressedSize, tarSize, flags,
                            if (version == 2) tarCounts.entries else 0L,
                            if (version == 2) tarCounts.regularFiles else 0L,
                            if (version == 2) tarCounts.directories else 0L,
                        ))
                        progress?.onProgress(i + 1L, sourcePaths.size.toLong())
                    }

                    val indexStart = System.nanoTime()
                    val indexOffset = Files.size(temporary)
                    val index = indexBytes(metadata, records, version)
                    val indexCrc = crc32(index)
                    out.write(index)
                    out.write(footer(indexOffset, index.size.toLong(), indexCrc, version))
                    if (encrypted && version == 2) {
                        indexMacToWrite = computeV2IndexMac(
                            headerBytes, indexOffset, index.size.toLong(), indexCrc, index,
                            key0!!, key2!!, key3!!,
                        )
                    }
                    out.flush()
                    indexFooterMillis = elapsedMillis(indexStart)
                    result = longArrayOf(
                        Files.size(temporary), indexOffset, index.size.toLong(), headerMillis,
                        payloadMillis, producerMillis, 0L, indexFooterMillis, elapsedMillis(started),
                    )
                }
            }
            checkCancelled(progress)
            indexMacToWrite?.let { indexMac ->
                RandomAccessFile(temporary.toFile(), "rw").use { file ->
                    file.seek(104L)
                    file.write(indexMac)
                    file.fd.sync()
                }
                try {
                    val parsed = SbaArchiveReader.read(temporary.toString())
                    SbaArchiveKeyCheck.verifyProvidedKey(parsed, key0!!, temporary.toString())
                } finally {
                    java.util.Arrays.fill(indexMac, 0)
                    indexMacToWrite = null
                }
            }
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
            encryptedTemps.forEach { Files.deleteIfExists(it) }
        }
    }

    private fun fileHeader(
        version: Int, compression: Int, level: Int, encryptionMethod: Int, kdfMethod: Int,
        iterations: Int, chunkSize: Int, memoryKiB: Int, parallelism: Int,
        keyCheck: ByteArray?, salt: ByteArray?, nonceSeed: ByteArray?,
    ): ByteArray {
        val encrypted = encryptionMethod != 0
        val headerSize = if (version == 1) FILE_HEADER_SIZE else FILE_HEADER_SIZE_V2
        val b = ByteBuffer.allocate(headerSize).order(ByteOrder.BIG_ENDIAN)
        b.put("SBA1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(version.toShort()); b.putShort(headerSize.toShort())
        b.putInt((if (compression == 1) 1 else 0) or (if (encrypted) 2 else 0))
        b.putLong(System.currentTimeMillis())
        b.putShort(compression.toShort()); b.putShort(level.toShort())
        b.putShort(encryptionMethod.toShort()); b.putShort(kdfMethod.toShort())
        b.putShort(iterations.toShort())
        b.putShort(if (encrypted) 16 else 0)
        b.putShort(if (encrypted) 16 else 0)
        b.putShort(if (encrypted) 16 else 0)
        b.put(keyCheck ?: ByteArray(16))
        b.put(salt ?: ByteArray(16))
        b.put(nonceSeed ?: ByteArray(16))
        b.putShort(0); b.putShort(0); b.putInt(if (encrypted) chunkSize else 0)
        if (version == 1) {
            b.putInt(0)
        } else {
            b.putInt(if (encrypted) memoryKiB else 0)
            b.putShort(if (encrypted) parallelism.toShort() else 0)
            b.putShort(if (encrypted) 1 else 0)
            b.putShort(if (encrypted) 32 else 0)
            b.putShort(if (encrypted) 1 else 0)
            b.put(ByteArray(32)) // Index MAC is patched after the index/footer are finalized.
            b.put(ByteArray(8))
        }
        check(b.position() == headerSize)
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

    private fun indexBytes(metadata: ByteArray, records: List<EntryRecord>, version: Int): ByteArray {
        val recordSize = if (version == 1) INDEX_RECORD_SIZE_V1 else INDEX_RECORD_SIZE_V2
        val size = INDEX_HEADER_SIZE.toLong() + metadata.size + records.sumOf { recordSize.toLong() + it.name.size }
        require(size <= MAX_INDEX_BYTES && size <= Int.MAX_VALUE) { "SBA index is too large" }
        val b = ByteBuffer.allocate(size.toInt()).order(ByteOrder.BIG_ENDIAN)
        b.put("SAI1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(INDEX_HEADER_SIZE.toShort()); b.putShort(version.toShort()); b.putInt(records.size); b.putInt(metadata.size)
        b.put(metadata)
        records.forEach { r ->
            b.putLong(r.entryOffset); b.putLong(r.payloadOffset); b.putLong(r.storedSize)
            b.putLong(r.compressedSize); b.putLong(r.tarSize); b.putInt(r.flags)
            b.putShort(r.name.size.toShort()); b.putInt(0); b.putShort(0); b.put(ByteArray(32))
            if (version >= 2) {
                b.putLong(r.tarEntryCount); b.putLong(r.regularFileCount); b.putLong(r.directoryCount)
            }
            b.put(r.name)
        }
        return b.array()
    }

    private fun footer(indexOffset: Long, indexSize: Long, indexCrc: Int, version: Int): ByteArray {
        val b = ByteBuffer.allocate(FOOTER_SIZE).order(ByteOrder.BIG_ENDIAN)
        b.put("SAF1".toByteArray(StandardCharsets.US_ASCII))
        b.putShort(FOOTER_SIZE.toShort()); b.putShort(version.toShort())
        b.putLong(indexOffset); b.putLong(indexSize); b.putInt(indexCrc)
        b.putInt(CRC32().apply { update(b.array(), 0, 28) }.value.toInt())
        return b.array()
    }

    private fun computeV2IndexMac(
        headerWithZeroMac: ByteArray, indexOffset: Long, indexSize: Long, indexCrc: Int,
        indexBytes: ByteArray, key: ByteArray, salt: ByteArray, nonceSeed: ByteArray,
    ): ByteArray {
        val secondaryKey = MessageDigest.getInstance("SHA-256").run {
            update("SBA2-index-mac-key-v1".toByteArray(StandardCharsets.UTF_8))
            update(salt); update(nonceSeed); update(key); digest()
        }
        try {
            val mac = Mac.getInstance("HmacSHA256")
            mac.init(SecretKeySpec(secondaryKey, "HmacSHA256"))
            mac.update("SBA2-index-metadata-mac-v1".toByteArray(StandardCharsets.UTF_8))
            mac.update(headerWithZeroMac)
            mac.update(ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(indexOffset).array())
            mac.update(ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(indexSize).array())
            mac.update(ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(indexCrc).array())
            mac.update(indexBytes)
            return mac.doFinal()
        } finally {
            java.util.Arrays.fill(secondaryKey, 0)
        }
    }

    private fun writeTar(source: Path, destination: Path, flags: Int, includes: Array<String>, excludes: Array<String>, progress: SbaNativeProgressListener?): TarCounts {
        val includeRoot = flags and 8 != 0
        val includeSet = includes.filter { it.isNotBlank() }.toSet()
        val excludeSet = excludes.filter { it.isNotBlank() }.toSet()
        val effectiveIncludes = if (flags and 1 != 0) includeSet else emptySet()
        val effectiveExcludes = if (flags and 4 != 0) excludeSet else emptySet()
        val paths = if (source.isDirectory()) Files.walk(source).use { it.sorted().iterator().asSequence().toList() } else listOf(source)
        var emitted = 0
        var regularFileCount = 0L
        var directoryCount = 0L
        val firstHardLinkByInode = HashMap<Pair<Long, Long>, String>()
        Files.newOutputStream(destination).use { raw ->
            BufferedOutputStream(raw).use { out ->
                for (path in paths) {
                    checkCancelled(progress)
                    val relative = if (path == source) { if (source.isDirectory()) Path.of("") else source.fileName } else source.relativize(path)
                    val relText = relative.toString().replace('\\', '/')
                    if (relText.isEmpty() && source.isDirectory() && !includeRoot) continue
                    val attrs = Files.readAttributes(path, BasicFileAttributes::class.java, LinkOption.NOFOLLOW_LINKS)
                    if (relText.isNotEmpty() && !selected(relText, effectiveIncludes, effectiveExcludes, attrs.isDirectory)) continue
                    val archiveName = if (includeRoot && source.isDirectory()) source.fileName.toString() + if (relText.isEmpty()) "" else "/$relText" else relText
                    if (archiveName.isEmpty()) continue
                    val special = if (attrs.isOther) readSpecialTarType(path) else null
                    if (!attrs.isSymbolicLink && !attrs.isDirectory && !attrs.isRegularFile && special == null) {
                        throw IOException("Unsupported TAR source type: $path")
                    }
                    val inode = if (attrs.isRegularFile) readHardLinkIdentity(path) else null
                    val priorHardLink = if (inode != null) firstHardLinkByInode.putIfAbsent(inode, archiveName) else null
                    val isHardLink = priorHardLink != null
                    val sparse = if (attrs.isRegularFile && !isHardLink && attrs.size() >= (1L shl 20)) {
                        discoverSparseSource(path, attrs.size())
                    } else null
                    val tarPayloadSize = when {
                        isHardLink || attrs.isSymbolicLink || special != null || attrs.isDirectory -> 0L
                        sparse != null -> sparse.storedSize
                        else -> attrs.size()
                    }
                    val linkTarget = when {
                        isHardLink -> priorHardLink
                        attrs.isSymbolicLink -> Files.readSymbolicLink(path).toString()
                        else -> null
                    }
                    val paxMetadata = linkedMapOf<String, String>()
                    if (!isHardLink && !attrs.isSymbolicLink) paxMetadata.putAll(readUserXattrs(path))
                    sparse?.paxEntries?.let {
                        paxMetadata.putAll(it)
                        paxMetadata["GNU.sparse.name"] = archiveName
                    }
                    writeTarHeader(
                        out, archiveName, attrs.isDirectory, tarPayloadSize,
                        attrs.lastModifiedTime().toMillis(),
                        readMode(path, attrs.isDirectory, attrs.isSymbolicLink),
                        linkTarget, if (isHardLink) '1' else special?.typeFlag,
                        special?.major ?: 0L, special?.minor ?: 0L,
                        paxMetadata, readUnixId(path, "unix:uid"), readUnixId(path, "unix:gid"),
                    )
                    if (attrs.isRegularFile && !isHardLink) {
                        if (sparse != null) {
                            writeSparsePayload(out, path, sparse, progress)
                        } else {
                            Files.newInputStream(path).use { input ->
                                val buffer = ByteArray(64 * 1024)
                                while (true) {
                                    checkCancelled(progress)
                                    val n = input.read(buffer)
                                    if (n < 0) break
                                    if (n > 0) out.write(buffer, 0, n)
                                }
                            }
                        }
                        val pad = ((TAR_BLOCK - tarPayloadSize % TAR_BLOCK) % TAR_BLOCK).toInt()
                        if (pad > 0) out.write(ByteArray(pad))
                    }
                    emitted++
                    if (attrs.isRegularFile && !isHardLink) regularFileCount++
                    if (attrs.isDirectory) directoryCount++
                }
                if (emitted == 0) throw IOException("SBA entry selection produced an empty TAR payload")
                out.write(ByteArray(TAR_BLOCK * 2))
            }
        }
        return TarCounts(emitted.toLong(), regularFileCount, directoryCount)
    }

    private fun selected(
        path: String,
        includes: Set<String>,
        excludes: Set<String>,
        isDirectory: Boolean,
    ): Boolean {
        fun matches(pattern: String): Boolean {
            if (path == pattern || path.startsWith("$pattern/")) return true
            return try { java.nio.file.FileSystems.getDefault().getPathMatcher("glob:$pattern").matches(Path.of(path)) }
            catch (_: Exception) { false }
        }
        if (excludes.any(::matches)) return false
        if (includes.isEmpty() || includes.any(::matches)) return true
        return isDirectory && includes.any { it.startsWith("$path/") }
    }

    private fun writeTarHeader(
        out: java.io.OutputStream,
        name: String,
        directory: Boolean,
        size: Long,
        mtimeMillis: Long,
        mode: Int,
        linkTarget: String? = null,
        specialTypeFlag: Char? = null,
        devMajor: Long = 0L,
        devMinor: Long = 0L,
        extraPax: Map<String, String> = emptyMap(),
        uid: Long = 0L,
        gid: Long = 0L,
    ) {
        val split = splitName(name)
        val linkTooLong = linkTarget != null && linkTarget.toByteArray(StandardCharsets.UTF_8).size > 100
        val mtimeSeconds = Math.floorDiv(mtimeMillis, 1000L)
        val mtimeNeedsPax = mtimeMillis < 0L || mtimeSeconds > MAX_TAR_OCTAL || mtimeMillis % 1000L != 0L
        val sizeNeedsPax = size > MAX_TAR_OCTAL
        val pax = linkedMapOf<String, String>()
        if (split == null) pax["path"] = name
        if (linkTooLong && linkTarget != null) pax["linkpath"] = linkTarget
        if (sizeNeedsPax) pax["size"] = size.toString()
        if (uidNeedsPax) pax["uid"] = uid.toString()
        if (gidNeedsPax) pax["gid"] = gid.toString()
        if (mtimeNeedsPax) pax["mtime"] = java.math.BigDecimal.valueOf(mtimeMillis, 3).stripTrailingZeros().toPlainString()
        pax.putAll(extraPax)

        if (pax.isNotEmpty()) {
            val payload = encodePaxRecords(pax)
            if (payload.size > (16 shl 20)) throw IOException("TAR PAX metadata exceeds 16 MiB")
            writeRawTarHeader(out, "PaxHeaders/entry", false, payload.size.toLong(),
                mtimeSeconds.coerceIn(0L, MAX_TAR_OCTAL), 0x1a4, null, 'x')
            out.write(payload)
            val padding = (TAR_BLOCK - payload.size % TAR_BLOCK) % TAR_BLOCK
            if (padding > 0) out.write(ByteArray(padding))
        }

        val headerName = if (split == null) "PaxEntry" else name
        val headerLink = if (linkTooLong) null else linkTarget
        val headerSize = if (sizeNeedsPax) 0L else size
        val headerMtime = if (mtimeNeedsPax) 0L else mtimeSeconds
        val type = specialTypeFlag ?: if (linkTarget != null) '2' else if (directory) '5' else '0'
        writeRawTarHeader(
            out, headerName, directory, headerSize, headerMtime, mode, headerLink, type,
            devMajor, devMinor, if (uidNeedsPax) 0L else uid, if (gidNeedsPax) 0L else gid,
        )
    }

    private fun writeRawTarHeader(
        out: java.io.OutputStream,
        name: String,
        directory: Boolean,
        size: Long,
        mtimeSeconds: Long,
        mode: Int,
        linkTarget: String?,
        typeFlag: Char,
        devMajor: Long = 0L,
        devMinor: Long = 0L,
        uid: Long = 0L,
        gid: Long = 0L,
    ) {
        val split = splitName(name) ?: throw IOException("Internal TAR header name exceeds ustar limits")
        val header = ByteArray(TAR_BLOCK)
        putText(header, 0, 100, split.second)
        putOctal(header, 100, 8, mode.toLong())
        putOctal(header, 108, 8, uid.coerceAtLeast(0L))
        putOctal(header, 116, 8, gid.coerceAtLeast(0L))
        putOctal(header, 124, 12, if (directory && typeFlag == '5') 0 else size)
        putOctal(header, 136, 12, mtimeSeconds.coerceIn(0L, MAX_TAR_OCTAL))
        putOctal(header, 329, 8, devMajor)
        putOctal(header, 337, 8, devMinor)
        for (i in 148 until 156) header[i] = 0x20
        header[156] = typeFlag.code.toByte()
        if (linkTarget != null) {
            val linkBytes = linkTarget.toByteArray(StandardCharsets.UTF_8)
            require(linkBytes.size <= 100) { "TAR symbolic-link target exceeds ustar limits: $name" }
            putText(header, 157, 100, linkTarget)
        }
        putText(header, 257, 6, "ustar"); header[262] = 0; putText(header, 263, 2, "00")
        putText(header, 265, 32, "user"); putText(header, 297, 32, "group"); putText(header, 345, 155, split.first)
        val sum = header.sumOf { it.toInt() and 0xff }
        putText(header, 148, 6, String.format(Locale.ROOT, "%06o", sum))
        header[154] = 0; header[155] = ' '.code.toByte()
        out.write(header)
    }

    private fun encodePaxRecords(values: Map<String, String>): ByteArray {
        val out = java.io.ByteArrayOutputStream()
        values.forEach { (key, value) ->
            require(key.isNotBlank() && '=' !in key && '\n' !in key && '\u0000' !in key)
            require('\n' !in value && '\u0000' !in value)
            val body = "$key=$value\n".toByteArray(StandardCharsets.UTF_8)
            var recordLength = body.size + 2
            while (true) {
                val updated = body.size + recordLength.toString().length + 1
                if (updated == recordLength) break
                recordLength = updated
            }
            out.write("$recordLength ".toByteArray(StandardCharsets.US_ASCII))
            out.write(body)
        }
        return out.toByteArray()
    }

    private fun readUserXattrs(path: Path): Map<String, String> {
        val view = try {
            Files.getFileAttributeView(path, UserDefinedFileAttributeView::class.java, LinkOption.NOFOLLOW_LINKS)
        } catch (_: Exception) {
            null
        }
        val result = linkedMapOf<String, String>()
        if (view != null) {
            for (name in view.list().sorted()) {
                if (name.isBlank() || '=' in name || '\n' in name || '\u0000' in name) continue
                val size = view.size(name)
                if (size < 0 || size > (1 shl 20)) throw IOException("TAR xattr exceeds supported size: $name")
                val buffer = java.nio.ByteBuffer.allocate(size)
                view.read(name, buffer)
                buffer.flip()
                val value = try {
                    StandardCharsets.UTF_8.newDecoder()
                        .onMalformedInput(java.nio.charset.CodingErrorAction.REPORT)
                        .onUnmappableCharacter(java.nio.charset.CodingErrorAction.REPORT)
                        .decode(buffer).toString()
                } catch (failure: Exception) {
                    // The reference's PAX xattr reader applies value bytes directly;
                    // a non-UTF-8 value cannot be represented safely by this text PAX writer.
                    throw IOException("Cannot safely encode non-UTF-8 user xattr in TAR: $name", failure)
                }
                if ('\n' in value || '\u0000' in value) {
                    throw IOException("Cannot safely encode control bytes in TAR xattr: $name")
                }
                val paxName = if (name.startsWith("user.")) name else "user.$name"
                result["SCHILY.xattr.$paxName"] = value
            }
        }
        SbaSparseNative.getSelinuxLabel(path.toString())?.let { label ->
            if ('\n' !in label && '\u0000' !in label) {
                result["SCHILY.xattr.security.selinux"] = label
            }
        }
        return result
    }

    private fun readUnixId(path: Path, attribute: String): Long = try {
        (Files.getAttribute(path, attribute, LinkOption.NOFOLLOW_LINKS) as Number).toLong().coerceAtLeast(0L)
    } catch (_: Exception) {
        0L
    }

    private fun readHardLinkIdentity(path: Path): Pair<Long, Long>? {
        return try {
            val linkCount = (Files.getAttribute(path, "unix:nlink", LinkOption.NOFOLLOW_LINKS) as Number).toLong()
            if (linkCount < 2L) return null
            val device = (Files.getAttribute(path, "unix:dev", LinkOption.NOFOLLOW_LINKS) as Number).toLong()
            val inode = (Files.getAttribute(path, "unix:ino", LinkOption.NOFOLLOW_LINKS) as Number).toLong()
            device to inode
        } catch (_: Exception) {
            // Filesystems without stable inode metadata remain correct, but are emitted as independent files.
            null
        }
    }

    private data class SparseSource(
        val logicalSize: Long,
        val extents: List<Pair<Long, Long>>,
        val mapBytes: ByteArray,
        val mapPaddedSize: Long,
        val packedSize: Long,
        val storedSize: Long,
        val paxEntries: Map<String, String>,
    )

    private fun discoverSparseSource(path: Path, expectedSize: Long): SparseSource? {
        val encoded = SbaSparseNative.getSparseExtents(path.toString())
        if (encoded.isEmpty()) return null
        if (encoded.size < 2 || encoded[0] != expectedSize || encoded[1] < 0 ||
            encoded[1] > 1_000_000L || encoded.size.toLong() != 2L + encoded[1] * 2L) return null
        val extents = ArrayList<Pair<Long, Long>>(encoded[1].toInt())
        var packed = 0L
        var previousEnd = 0L
        for (i in 0 until encoded[1].toInt()) {
            val start = encoded[2 + i * 2]
            val length = encoded[3 + i * 2]
            if (start < previousEnd || length <= 0L || start < 0L ||
                start > expectedSize || length > expectedSize - start ||
                packed > Long.MAX_VALUE - length) return null
            extents.add(start to length)
            packed += length
            previousEnd = start + length
        }
        val map = buildString {
            append(extents.size).append('\n')
            extents.forEach { (start, length) ->
                append(start).append('\n')
                append(length).append('\n')
            }
        }.toByteArray(StandardCharsets.US_ASCII)
        val padded = ((map.size.toLong() + TAR_BLOCK - 1L) / TAR_BLOCK) * TAR_BLOCK
        if (padded > Long.MAX_VALUE - packed) return null
        val stored = padded + packed
        // Emit sparse framing only when it actually saves payload bytes.
        if (stored >= expectedSize) return null
        return SparseSource(
            expectedSize, extents, map, padded, packed, stored,
            mapOf("GNU.sparse.major" to "1", "GNU.sparse.minor" to "0",
                "GNU.sparse.realsize" to expectedSize.toString()),
        )
    }

    private fun writeSparsePayload(
        out: java.io.OutputStream,
        path: Path,
        sparse: SparseSource,
        progress: SbaNativeProgressListener?,
    ) {
        out.write(sparse.mapBytes)
        val mapPadding = sparse.mapPaddedSize - sparse.mapBytes.size
        if (mapPadding > 0) out.write(ByteArray(mapPadding.toInt()))
        java.nio.channels.FileChannel.open(path, StandardOpenOption.READ).use { channel ->
            if (channel.size() != sparse.logicalSize) throw IOException("Sparse source changed while creating TAR: $path")
            val buffer = java.nio.ByteBuffer.allocate(64 * 1024)
            for ((start, length) in sparse.extents) {
                var copied = 0L
                while (copied < length) {
                    checkCancelled(progress)
                    buffer.clear()
                    buffer.limit(minOf(buffer.capacity().toLong(), length - copied).toInt())
                    val n = channel.read(buffer, start + copied)
                    if (n <= 0) throw IOException("Unable to read sparse source extent: $path")
                    out.write(buffer.array(), 0, n)
                    copied += n
                }
            }
            if (sparse.packedSize != sparse.extents.sumOf { it.second }) {
                throw IOException("Sparse source extent size changed while creating TAR: $path")
            }
        }
    }

    private data class SpecialTarType(val typeFlag: Char, val major: Long = 0L, val minor: Long = 0L)

    private fun readSpecialTarType(path: Path): SpecialTarType {
        val mode = try {
            (Files.getAttribute(path, "unix:mode", LinkOption.NOFOLLOW_LINKS) as Number).toLong()
        } catch (failure: Exception) {
            throw IOException("Unable to inspect special filesystem object type: $path", failure)
        }
        return when ((mode.toInt() and 0xF000)) {
            0x1000 -> SpecialTarType('6') // FIFO
            0x2000, 0x6000 -> {
                val device = try {
                    (Files.getAttribute(path, "unix:rdev", LinkOption.NOFOLLOW_LINKS) as Number).toLong()
                } catch (failure: Exception) {
                    throw IOException("Unable to read device number for TAR source: $path", failure)
                }
                // Linux glibc-compatible major/minor extraction from dev_t.
                val major = ((device ushr 8) and 0xFFF) or ((device ushr 32) and 0xFFFFF000L)
                val minor = (device and 0xFF) or ((device ushr 12) and 0xFFFFFF00L)
                SpecialTarType(if ((mode.toInt() and 0xF000) == 0x2000) '3' else '4', major, minor)
            }
            else -> throw IOException("Unsupported TAR special source type (socket/unknown): $path")
        }
    }

    private fun readMode(path: Path, directory: Boolean, symbolicLink: Boolean): Int {
        if (symbolicLink) return 0x1ff
        return try {
            val permissions = Files.getPosixFilePermissions(path, LinkOption.NOFOLLOW_LINKS)
            var mode = 0
            if (java.nio.file.attribute.PosixFilePermission.OWNER_READ in permissions) mode = mode or 0x100
            if (java.nio.file.attribute.PosixFilePermission.OWNER_WRITE in permissions) mode = mode or 0x80
            if (java.nio.file.attribute.PosixFilePermission.OWNER_EXECUTE in permissions) mode = mode or 0x40
            if (java.nio.file.attribute.PosixFilePermission.GROUP_READ in permissions) mode = mode or 0x20
            if (java.nio.file.attribute.PosixFilePermission.GROUP_WRITE in permissions) mode = mode or 0x10
            if (java.nio.file.attribute.PosixFilePermission.GROUP_EXECUTE in permissions) mode = mode or 0x8
            if (java.nio.file.attribute.PosixFilePermission.OTHERS_READ in permissions) mode = mode or 0x4
            if (java.nio.file.attribute.PosixFilePermission.OTHERS_WRITE in permissions) mode = mode or 0x2
            if (java.nio.file.attribute.PosixFilePermission.OTHERS_EXECUTE in permissions) mode = mode or 0x1
            mode
        } catch (_: UnsupportedOperationException) {
            if (directory) 0x1ed else 0x1a4
        }
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
        require(name.isNotEmpty() && '\u0000' !in name && !name.startsWith("/") && '\\' !in name &&
            name.split('/').none { it.isEmpty() || it == "." || it == ".." }) { "Unsafe SBA entry name: $name" }
    }

    private fun crc32(bytes: ByteArray): Int = CRC32().apply { update(bytes) }.value.toInt()
    private fun checkCancelled(progress: SbaNativeProgressListener?) {
        if (progress?.isCancellationRequested() == true) throw java.io.InterruptedIOException("SBA archive creation cancelled")
    }
    private fun elapsedMillis(startNanos: Long): Long = (System.nanoTime() - startNanos) / 1_000_000L
}
