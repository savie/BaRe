package com.bareapps.sba.internal.archive

import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.security.MessageDigest

/**
 * Per-chunk nonce and AAD framing recovered from the reference ARM64 JNI chunk path.
 * Nonces are SHA-256 over the reference domain-separated field sequence; AAD uses the
 * reference big-endian fields and its four-byte zero reserved field.
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
        if (entryNameUtf8.size < 0) throw IOException("Invalid SBA AEGIS entry name length")
        val entryOrderBytes = ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(entryOrder).array()
        val nameLengthBytes = ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(entryNameUtf8.size).array()
        val chunkIndexBytes = ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putLong(chunkIndex).array()
        return try {
            MessageDigest.getInstance("SHA-256").run {
                update(domain)
                update(nonceSeed)
                update(entryOrderBytes)
                update(nameLengthBytes)
                update(entryNameUtf8)
                update(chunkIndexBytes)
                digest().let { full ->
                    if (encryptionMethod == 4) full else full.copyOf(16).also { full.fill(0) }
                }
            }
        } finally {
            entryOrderBytes.fill(0)
            nameLengthBytes.fill(0)
            chunkIndexBytes.fill(0)
        }
    }

    fun aad(
        encryptionMethod: Int,
        entryNameUtf8: ByteArray,
        entryOrder: Long,
        chunkIndex: Long,
        chunkLength: Long,
    ): ByteArray {
        if (encryptionMethod != 4 && encryptionMethod != 5) {
            throw IOException("Unsupported SBA AEGIS method: $encryptionMethod")
        }
        if (entryOrder < 0 || chunkIndex < 0 || chunkLength < 0) {
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
            .putLong(chunkLength)
            .array()
        // Reference AAD layout: domain || BE64(entryOrder) || BE32(nameLength) ||
        // entryName || BE64(chunkIndex) || BE64(chunkLength).
        val nameLengthBytes = ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN)
            .putInt(entryNameUtf8.size).array()
        return ByteArray(domain.size + 8 + 4 + entryNameUtf8.size + 16).also { output ->
            var offset = 0
            domain.copyInto(output, offset); offset += domain.size
            scalarBytes.copyOfRange(0, 8).copyInto(output, offset); offset += 8
            nameLengthBytes.copyInto(output, offset); offset += 4
            entryNameUtf8.copyInto(output, offset); offset += entryNameUtf8.size
            scalarBytes.copyOfRange(8, 24).copyInto(output, offset)
            scalarBytes.fill(0)
            nameLengthBytes.fill(0)
        }
    }
}
