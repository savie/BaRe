package com.bareapps.sba.internal.archive

import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class SbaAegisChunkProtocolTest {
    @Test
    fun derivesAegis256ChunkNonceFromReferenceDomainSeparatedFields() {
        val nonce = SbaAegisChunkProtocol.nonce(
            4, ByteArray(16) { it.toByte() }, "apps".toByteArray(StandardCharsets.UTF_8), 2L, 3L,
        )
        assertArrayEquals(hex("40192d2b333b7352a7842299fc17a537675cbffeeb9d5b8aad32f53f9e8ba3c5"), nonce)
    }

    @Test
    fun derivesAegis128X2ChunkNonceFromReferenceDomainSeparatedFields() {
        val nonce = SbaAegisChunkProtocol.nonce(
            5, ByteArray(16) { it.toByte() }, "apps".toByteArray(StandardCharsets.UTF_8), 2L, 3L,
        )
        assertArrayEquals(hex("d828f60de94474604cda740cb9d6dd44"), nonce)
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
        expected.putInt(4)
        expected.put("apps".toByteArray(StandardCharsets.UTF_8))
        expected.putLong(3L)
        expected.putLong(4096L)
        assertArrayEquals(expected.array(), actual)
    }

    @Test
    fun aadUsesCurrentPartialChunkLengthRatherThanRunningOffset() {
        val name = "data_de".toByteArray(StandardCharsets.UTF_8)
        val actual = SbaAegisChunkProtocol.aad(4, name, 1L, 2L, 17L)
        val domainLength = "SBA1-AEGIS256-entry-chunk-aad-v1".length
        val fields = ByteBuffer.wrap(actual, domainLength, actual.size - domainLength)
            .order(ByteOrder.BIG_ENDIAN)
        assertEquals(1L, fields.long)
        assertEquals(name.size, fields.int)
        assertArrayEquals(name, ByteArray(name.size).also { fields.get(it) })
        assertEquals(2L, fields.long)
        assertEquals(17L, fields.long)
    }

    @Test
    fun serializesAegis128X2AllAadFieldsAndRejectsNegativeEntryOrder() {
        val name = "apps/db".toByteArray(StandardCharsets.UTF_8)
        val actual = SbaAegisChunkProtocol.aad(5, name, 1L, 0L, 0L)
        val domain = "SBA1-AEGIS128X2-entry-chunk-aad-v1".toByteArray(StandardCharsets.US_ASCII)
        val expected = ByteBuffer.allocate(domain.size + 8 + 4 + name.size + 16)
            .order(ByteOrder.BIG_ENDIAN)
        expected.put(domain)
        expected.putLong(1L)
        expected.putInt(name.size)
        expected.put(name)
        expected.putLong(0L)
        expected.putLong(0L)
        assertArrayEquals(expected.array(), actual)
        assertThrows(IOException::class.java) {
            SbaAegisChunkProtocol.aad(4, byteArrayOf(), -1L, 0L, 0L)
        }
    }

    private fun hex(value: String): ByteArray =
        value.chunked(2).map { it.toInt(16).toByte() }.toByteArray()
}
