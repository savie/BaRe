package com.bareapps.sba.internal.archive

import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.security.MessageDigest

/**
 * Byte framing recovered from the reference ARM64 JNI chunk path.
 * This currently exposes the verified AAD encoding only; nonce derivation remains separate
 * because its two-string SHA-256 serialization still needs complete field-boundary confirmation.
 */
internal object SbaAegisChunkProtocol {
    fun nonce(
        encryptionMethod: Int,
        nonceSeed: ByteArray,
        entryNameUtf8: ByteArray,
        entryOrder: Long,
        chunkIndex: Long,
    ): ByteArray {
        if (encryptionMethod != 4 && encryptionMethod != 5) {
            throw IOException("Unsupported SBA AEGIS method: $encryptionMethod")
        }
        if (nonceSeed.size != 16) throw IOException("SBA AEGIS nonce seed must be 16 bytes")
        if (entryOrder < 0 || chunkIndex < 0) {
            throw IOException("SBA AEGIS entry order/chunk index must be non-negative")
        }
        val domain = (if (encryptionMethod == 4) {
            "SBA1-AEGIS256-entry-chunk-nonce-v1"
        } else {
            "SBA1-AEGIS128X2-entry-chunk-nonce-v1"
        }).toByteArray(StandardCharsets.US_ASCII)
        val entryOrderBytes = ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(entryOrder).array()
        val chunkIndexBytes = ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(chunkIndex).array()
        return try {
            MessageDigest.getInstance("SHA-256").run {
                update(domain)
                update(nonceSeed)
                update(entryOrderBytes)
                update(entryNameUtf8)
                update(chunkIndexBytes)
                digest().let { full ->
                    if (encryptionMethod == 4) full else full.copyOf(16).also { full.fill(0) }
                }
            }
        } finally {
            entryOrderBytes.fill(0)
            chunkIndexBytes.fill(0)
        }
    }

    fun aad(
        encryptionMethod: Int,
        entryNameUtf8: ByteArray,
        entryOrder: Long,
        chunkIndex: Long,
        chunkOffset: Long,
    ): ByteArray {
        if (encryptionMethod != 4 && encryptionMethod != 5) {
            throw IOException("Unsupported SBA AEGIS method: $encryptionMethod")
        }
        if (entryOrder < 0 || chunkIndex < 0 || chunkOffset < 0) {
            throw IOException("SBA AEGIS entry order/chunk position must be non-negative")
        }
        val domain = (if (encryptionMethod == 4) {
            "SBA1-AEGIS256-entry-chunk-aad-v1"
        } else {
            "SBA1-AEGIS128X2-entry-chunk-aad-v1"
        }).toByteArray(StandardCharsets.US_ASCII)
        val scalarBytes = ByteBuffer.allocate(8 * 3).order(ByteOrder.BIG_ENDIAN)
            .putLong(entryOrder)
            .putLong(chunkIndex)
            .putLong(chunkOffset)
            .array()
        // Reference AAD serializer reserves four zero bytes after the entry-order field.
        return ByteArray(domain.size + 8 + 4 + entryNameUtf8.size + 16).also { output ->
            var offset = 0
            domain.copyInto(output, offset); offset += domain.size
            scalarBytes.copyOfRange(0, 8).copyInto(output, offset); offset += 8
            offset += 4 // zero-filled reserved field
            entryNameUtf8.copyInto(output, offset); offset += entryNameUtf8.size
            scalarBytes.copyOfRange(8, 24).copyInto(output, offset)
            scalarBytes.fill(0)
        }
    }
}
