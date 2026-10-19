package com.bareapps.sba.internal.archive

import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class SbaAegisChunkProtocolTest {
    @Test
    fun derivesAegis256ChunkNonceFromReferenceDomainSeparatedFields() {
        val nonce = SbaAegisChunkProtocol.nonce(
            4, ByteArray(16) { it.toByte() }, "apps".toByteArray(StandardCharsets.UTF_8), 2L, 3L,
        )
        assertArrayEquals(hex("3a5523ba3b42b916073019d043dffb4834452b8442d4d12d1443accce10aaa82"), nonce)
    }

    @Test
    fun derivesAegis128X2ChunkNonceFromReferenceDomainSeparatedFields() {
        val nonce = SbaAegisChunkProtocol.nonce(
            5, ByteArray(16) { it.toByte() }, "apps".toByteArray(StandardCharsets.UTF_8), 2L, 3L,
        )
        assertArrayEquals(hex("23dc3317d45eb74abf5c3b04bc451c20b463b5b1f8dd188abe655c1f4bc92dd8"), nonce)
    }

    @Test
    fun serializesAegis256AadWithReferenceDomainAndBigEndianFields() {
        val actual = SbaAegisChunkProtocol.aad(
            4, "apps".toByteArray(StandardCharsets.UTF_8), 2L, 3L, 4096L,
        )
        val expected = ByteBuffer.allocate(
            "SBA1-AEGIS256-entry-chunk-aad-v1".length + 8 + 4 + 4 + 16
        ).order(ByteOrder.BIG_ENDIAN)
        expected.put("SBA1-AEGIS256-entry-chunk-aad-v1".toByteArray(StandardCharsets.US_ASCII))
        expected.putLong(2L)
        expected.putInt(0)
        expected.put("apps".toByteArray(StandardCharsets.UTF_8))
        expected.putLong(3L)
        expected.putLong(4096L)
        assertArrayEquals(expected.array(), actual)
    }

    @Test
    fun serializesAegis128X2DomainAndRejectsNegativeEntryOrder() {
        val actual = SbaAegisChunkProtocol.aad(
            5, "apps/db".toByteArray(StandardCharsets.UTF_8), 1L, 0L, 0L,
        )
        assertArrayEquals(
            "SBA1-AEGIS128X2-entry-chunk-aad-v1".toByteArray(StandardCharsets.US_ASCII),
            actual.copyOfRange(0, "SBA1-AEGIS128X2-entry-chunk-aad-v1".length),
        )
        assertThrows(IOException::class.java) {
            SbaAegisChunkProtocol.aad(4, byteArrayOf(), -1L, 0L, 0L)
        }
    }

    private fun hex(value: String): ByteArray =
        value.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
}
