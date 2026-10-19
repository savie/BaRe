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
}
