package com.bareapps.sba.internal.archive

import androidx.annotation.Keep
import java.io.EOFException
import java.io.IOException
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.CodingErrorAction
import java.nio.charset.StandardCharsets
import java.util.zip.CRC32

/** Strict SBA v1/v2 container reader. Encrypted payloads are indexed but never exposed as plaintext. */
@Keep
internal object SbaArchiveReader {
    private const val HEADER_SIZE = 96
    private const val ENTRY_HEADER_SIZE = 24
    private const val INDEX_HEADER_SIZE = 16
    private const val INDEX_RECORD_SIZE_V1 = 84
    private const val INDEX_RECORD_SIZE_V2 = 108
    private const val FOOTER_SIZE = 32
    private const val MAX_METADATA = 1 shl 20
    private const val MAX_INDEX_BYTES = 256 shl 20
    private const val MAX_ENTRIES = 1_000_000
    private const val TAR_BLOCK = 512

    @JvmStatic
    @Keep
    @Throws(IOException::class)
    fun read(path: String): SbaArchiveInfo = RandomAccessFile(path, "r").use { file ->
        val fileSize = file.length()
        if (fileSize < HEADER_SIZE + INDEX_HEADER_SIZE + FOOTER_SIZE) throw EOFException("SBA file is truncated")
        val prefix = ByteArray(8)
        file.seek(0)
        file.readFully(prefix)
        val prefixBuffer = ByteBuffer.wrap(prefix).order(ByteOrder.BIG_ENDIAN)
        expectMagic(prefixBuffer, "SBA1", "file header")
        val version = prefixBuffer.short.toInt() and 0xffff
        val headerSize = prefixBuffer.short.toInt() and 0xffff
        if (version !in 1..2 || headerSize != (if (version == 1) HEADER_SIZE else 144)) {
            throw IOException("Unsupported SBA header version/size")
        }
        if (fileSize < headerSize.toLong() + INDEX_HEADER_SIZE + FOOTER_SIZE) {
            throw EOFException("SBA file is truncated")
        }
        val header = ByteArray(headerSize)
        file.seek(0)
        file.readFully(header)
        val h = ByteBuffer.wrap(header).order(ByteOrder.BIG_ENDIAN)
        expectMagic(h, "SBA1", "file header")
        if ((h.short.toInt() and 0xffff) != version || (h.short.toInt() and 0xffff) != headerSize) {
            throw IOException("SBA header changed while reading")
        }
        val flags = h.int
        if (flags and -4 != 0) throw IOException("Unsupported SBA archive flags")
        val createdAt = h.long
        if (createdAt < 0) throw IOException("Invalid SBA creation time")
        val compressionMethod = h.short.toInt() and 0xffff
        val compressionLevel = h.short.toInt() and 0xffff
        val encryptionMethod = h.short.toInt() and 0xffff
        val kdfMethod = h.short.toInt() and 0xffff
        val iterations = h.short.toInt() and 0xffff
        val keyCheckLength = h.short.toInt() and 0xffff
        val saltLength = h.short.toInt() and 0xffff
        val nonceSeedLength = h.short.toInt() and 0xffff
        val keyCheck = ByteArray(16).also { h.get(it) }
        val salt = ByteArray(16).also { h.get(it) }
        val nonceSeed = ByteArray(16).also { h.get(it) }
        val trailingMacMethod = h.short.toInt() and 0xffff
        val trailingMacLength = h.short.toInt() and 0xffff
        val chunkSize = h.int
        val extensionInt: Int
        val extensionShorts: IntArray
        val extensionBytes: ByteArray
        val reserved: ByteArray
        if (version == 1) {
            extensionInt = 0
            extensionShorts = IntArray(0)
            extensionBytes = ByteArray(0)
            reserved = ByteArray(4).also { h.get(it) }
        } else {
            extensionInt = h.int
            extensionShorts = IntArray(4) { h.short.toInt() and 0xffff }
            extensionBytes = ByteArray(32).also { h.get(it) }
            reserved = ByteArray(8).also { h.get(it) }
        }
        if (compressionMethod !in 0..1 ||
            (compressionMethod == 0 && compressionLevel != 0) ||
            (compressionMethod == 1 && compressionLevel !in 1..22) ||
            (flags and 1) != (if (compressionMethod == 1) 1 else 0) ||
            (flags and 2) != (if (encryptionMethod != 0) 2 else 0)) {
            throw IOException("Invalid SBA compression header")
        }
        if (reserved.any { it.toInt() != 0 }) throw IOException("Invalid SBA reserved header bytes")
        val encrypted = encryptionMethod != 0
        if (!encrypted) {
            if (kdfMethod != 0 || iterations != 0 || keyCheckLength != 0 ||
                saltLength != 0 || nonceSeedLength != 0 || chunkSize != 0 ||
                keyCheck.any { it.toInt() != 0 } || salt.any { it.toInt() != 0 } ||
                nonceSeed.any { it.toInt() != 0 } || extensionInt != 0 ||
                extensionShorts.any { it != 0 } || extensionBytes.any { it.toInt() != 0 }) {
                throw IOException("SBA encryption fields must be zero when encryption is disabled")
            }
        } else {
            if (encryptionMethod !in 1..5 || keyCheckLength != 16 || saltLength != 16 ||
                nonceSeedLength != 16) throw IOException("Invalid SBA encryption header lengths")
            if (encryptionMethod == 4 || encryptionMethod == 5) {
                val memoryKiB = if (version == 1) 16384 else extensionInt
                val parallelism = if (version == 1) 1 else extensionShorts[0]
                val kdfValid = kdfMethod == 1 && if (version == 1) {
                    iterations == 3 && memoryKiB == 16384 && parallelism == 1
                } else {
                    iterations in 1..100 && memoryKiB in 16384..65536 && parallelism in 1..8
                }
                val extensionValid = version == 1 ||
                    (extensionShorts[1] == 1 && extensionShorts[2] == 32 && extensionShorts[3] == 1)
                if (!kdfValid || !extensionValid || trailingMacMethod != 0 ||
                    trailingMacLength != 0 || chunkSize !in 4096..16777216) {
                    throw IOException("Invalid SBA AEGIS KDF/chunk header")
                }
            } else if (chunkSize < 0) {
                throw IOException("Invalid SBA encryption chunk size")
            }
        }

        file.seek(fileSize - FOOTER_SIZE)
        val footer = ByteArray(FOOTER_SIZE)
        file.readFully(footer)
        val f = ByteBuffer.wrap(footer).order(ByteOrder.BIG_ENDIAN)
        expectMagic(f, "SAF1", "footer")
        if ((f.short.toInt() and 0xffff) != FOOTER_SIZE || (f.short.toInt() and 0xffff) != version) {
            throw IOException("Invalid SBA footer version/size")
        }
        val indexOffset = f.long
        val indexSize = f.long
        val expectedIndexCrc = f.int
        val expectedFooterCrc = f.int
        if (crc32(footer, 0, 28) != expectedFooterCrc) throw IOException("SBA footer CRC mismatch")
        if (indexOffset < HEADER_SIZE || indexSize < INDEX_HEADER_SIZE ||
            indexSize > MAX_INDEX_BYTES || indexOffset > Long.MAX_VALUE - indexSize ||
            indexOffset + indexSize != fileSize - FOOTER_SIZE) {
            throw IOException("Invalid SBA index bounds")
        }
        val index = ByteArray(indexSize.toInt())
        file.seek(indexOffset)
        file.readFully(index)
        if (crc32(index) != expectedIndexCrc) throw IOException("SBA index CRC mismatch")

        val b = ByteBuffer.wrap(index).order(ByteOrder.BIG_ENDIAN)
        expectMagic(b, "SAI1", "index")
        if ((b.short.toInt() and 0xffff) != INDEX_HEADER_SIZE ||
            (b.short.toInt() and 0xffff) != version) throw IOException("Invalid SBA index version/size")
        val entryCount = b.int
        val metadataLength = b.int
        if (entryCount < 0 || entryCount > MAX_ENTRIES ||
            metadataLength < 0 || metadataLength > MAX_METADATA ||
            metadataLength > b.remaining()) throw IOException("Invalid SBA index counts")
        val recordSize = if (version == 1) INDEX_RECORD_SIZE_V1 else INDEX_RECORD_SIZE_V2
        val minimumRecords = entryCount.toLong() * recordSize
        if (minimumRecords > b.remaining().toLong() - metadataLength) throw IOException("SBA index records exceed bounds")
        val metadata = ByteArray(metadataLength).also { b.get(it) }
        decodeUtf8(metadata)
        val entries = ArrayList<SbaArchiveEntry>(entryCount)
        val names = HashSet<String>()
        var expectedEntryOffset = headerSize.toLong()
        repeat(entryCount) {
            if (b.remaining() < recordSize) throw EOFException("Truncated SBA index record")
            val entryOffset = b.long
            val payloadOffset = b.long
            val storedSize = b.long
            val compressedSize = b.long
            val tarSize = b.long
            val entryFlags = b.int
            val nameLength = b.short.toInt() and 0xffff
            val entryMetadataLength = b.int
            val reservedField = b.short.toInt() and 0xffff
            val hmac = ByteArray(32).also { b.get(it) }
            val tarEntryCount = if (version >= 2) b.long else null
            val regularFileCount = if (version >= 2) b.long else null
            val directoryCount = if (version >= 2) b.long else null
            if (nameLength == 0 || entryMetadataLength != 0 || reservedField != 0 ||
                hmac.any { it.toInt() != 0 } || b.remaining() < nameLength ||
                (tarEntryCount != null && (tarEntryCount < 0 || regularFileCount == null || regularFileCount < 0 ||
                    directoryCount == null || directoryCount < 0 || regularFileCount > tarEntryCount ||
                    directoryCount > tarEntryCount || regularFileCount > tarEntryCount - directoryCount))) {
                throw IOException("Invalid SBA index record fields")
            }
            val expectedEntryFlags = when (encryptionMethod) {
                0 -> if (compressionMethod == 1) 1 else 0
                1 -> if (compressionMethod == 1) 13 else 12
                2, 3 -> if (compressionMethod == 1) 15 else 14
                4, 5 -> if (compressionMethod == 1) 23 else 21
                else -> -1
            }
            val expectedStoredSize = when (encryptionMethod) {
                0 -> compressedSize
                4, 5 -> encryptedSize(chunkSize, compressedSize)
                else -> -1L
            }
            if (entryOffset != expectedEntryOffset || entryOffset < headerSize ||
                storedSize < 0 || compressedSize < 0 || tarSize < TAR_BLOCK * 2 ||
                tarSize % TAR_BLOCK != 0L || storedSize != expectedStoredSize ||
                (compressionMethod == 0 && compressedSize != tarSize) ||
                entryFlags != expectedEntryFlags) {
                throw IOException("Invalid SBA entry sizes or offsets")
            }
            val nameBytes = ByteArray(nameLength).also { b.get(it) }
            val name = decodeUtf8(nameBytes)
            validateName(name)
            if (!names.add(name)) throw IOException("Duplicate SBA entry name: $name")
            val expectedPayloadOffset = checkedAdd(checkedAdd(entryOffset, ENTRY_HEADER_SIZE.toLong()), nameLength.toLong())
            if (payloadOffset != expectedPayloadOffset || payloadOffset > indexOffset ||
                storedSize > indexOffset - payloadOffset) throw IOException("SBA entry payload is out of bounds")

            file.seek(entryOffset)
            val entryHeader = ByteArray(ENTRY_HEADER_SIZE)
            file.readFully(entryHeader)
            val eh = ByteBuffer.wrap(entryHeader).order(ByteOrder.BIG_ENDIAN)
            expectMagic(eh, "SAE1", "entry header")
            if ((eh.short.toInt() and 0xffff) != ENTRY_HEADER_SIZE ||
                (eh.short.toInt() and 0xffff) != 0 || eh.int != entryFlags ||
                (eh.short.toInt() and 0xffff) != nameLength || eh.int != 0 ||
                ByteArray(6).also { eh.get(it) }.any { it.toInt() != 0 }) {
                throw IOException("Invalid SBA entry header")
            }
            val actualName = ByteArray(nameLength)
            file.readFully(actualName)
            if (!actualName.contentEquals(nameBytes)) throw IOException("SBA entry header/index name mismatch")
            entries.add(SbaArchiveEntry(name, entryOffset, payloadOffset, storedSize, compressedSize, tarSize, entryFlags,
                tarEntryCount, regularFileCount, directoryCount))
            expectedEntryOffset = checkedAdd(payloadOffset, storedSize)
        }
        if (b.hasRemaining()) throw IOException("Trailing bytes in SBA index")
        if (expectedEntryOffset != indexOffset) throw IOException("SBA entries do not end at index offset")
        SbaArchiveInfo(version, createdAt, compressionMethod, compressionLevel, metadata, entries, fileSize, indexOffset, indexSize, expectedIndexCrc, expectedFooterCrc, encryptionMethod, kdfMethod, iterations, keyCheck, salt, nonceSeed, chunkSize, if (encrypted) { if (version == 1) 16384 else extensionInt } else 0, if (encrypted) { if (version == 1) 1 else extensionShorts[0] } else 0)
    }

    private fun encryptedSize(chunkSize: Int, plaintextSize: Long): Long {
        if (plaintextSize == 0L) return 0L
        if (chunkSize <= 0 || plaintextSize < 0) throw IOException("Invalid encrypted SBA payload size")
        val chunks = (plaintextSize - 1L) / chunkSize.toLong() + 1L
        if (chunks > (Long.MAX_VALUE - plaintextSize) / 16L) throw IOException("Encrypted SBA payload size overflow")
        return plaintextSize + chunks * 16L
    }

    private fun expectMagic(buffer: ByteBuffer, expected: String, part: String) {
        if (buffer.remaining() < 4) throw EOFException("Truncated SBA $part")
        val actualBytes = ByteArray(4).also { buffer.get(it) }
        val actual = String(actualBytes, StandardCharsets.US_ASCII)
        if (actual != expected) throw IOException("Invalid SBA $part magic")
    }

    private fun decodeUtf8(bytes: ByteArray): String = try {
        StandardCharsets.UTF_8.newDecoder()
            .onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT)
            .decode(ByteBuffer.wrap(bytes)).toString()
    } catch (failure: Exception) {
        throw IOException("Invalid UTF-8 in SBA entry name", failure)
    }

    private fun validateName(name: String) {
        if (name.isBlank() || '\u0000' in name || name.startsWith("/") || '\\' in name ||
            name.split('/').any { it.isEmpty() || it == "." || it == ".." }) {
            throw IOException("Unsafe SBA entry name")
        }
    }

    private fun checkedAdd(a: Long, b: Long): Long {
        if (a < 0 || b < 0 || a > Long.MAX_VALUE - b) throw IOException("SBA offset overflow")
        return a + b
    }

    private fun crc32(bytes: ByteArray, offset: Int = 0, length: Int = bytes.size): Int =
        CRC32().apply { update(bytes, offset, length) }.value.toInt()
}
