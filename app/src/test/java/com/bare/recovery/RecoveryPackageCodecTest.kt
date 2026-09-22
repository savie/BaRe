package com.bare.recovery

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class RecoveryPackageCodecTest {
    private val payload = RecoveryPackageCodec.Payload(
        identityId = "9e2e1d7f-2d4d-4b6e-9f6e-9a0c4c1e4d11",
        type = "LOCAL",
        setupComplete = true,
        accessMethod = "NON_ROOT",
    )

    private val masterKey = ByteArray(32) { it.toByte() }

    @Test
    fun encodedPackageUsesCurrentVersion() {
        val encoded = RecoveryPackageCodec.encode(
            payload,
            masterKey,
            "correct horse battery staple".toCharArray(),
        )

        assertEquals(3, encoded[4].toInt())
    }

    @Test
    fun roundTripRestoresPayloadAndMasterKey() {
        val password = "correct horse battery staple".toCharArray()
        val encoded = RecoveryPackageCodec.encode(payload, masterKey, password)
        val decoded = RecoveryPackageCodec.decode(encoded, password)

        assertEquals(payload, decoded.payload)
        assertArrayEquals(masterKey, decoded.masterKey)
    }

    @Test
    fun wrongPasswordIsRejected() {
        val encoded = RecoveryPackageCodec.encode(payload, masterKey, "correct".toCharArray())

        assertThrows(Exception::class.java) {
            RecoveryPackageCodec.decode(encoded, "wrong".toCharArray())
        }
    }

    @Test
    fun tamperingIsRejected() {
        val encoded = RecoveryPackageCodec.encode(payload, masterKey, "correct".toCharArray())
        encoded[encoded.lastIndex] = (encoded.last() + 1).toByte()

        assertThrows(Exception::class.java) {
            RecoveryPackageCodec.decode(encoded, "correct".toCharArray())
        }
    }

    @Test
    fun identityIsNotReadableWithoutPassword() {
        val encoded = RecoveryPackageCodec.encode(payload, masterKey, "correct".toCharArray())
        val identityBytes = payload.identityId.toByteArray(Charsets.UTF_8)

        for (offset in 5 until encoded.size - identityBytes.size) {
            if (encoded.copyOfRange(offset, offset + identityBytes.size).contentEquals(identityBytes)) {
                throw AssertionError("identityId leaked into recovery envelope")
            }
        }
    }

    @Test
    fun legacyV2IsRejectedForPortableRecovery() {
        val legacy = byteArrayOf(
            'B'.code.toByte(), 'R'.code.toByte(), 'E'.code.toByte(), 'C'.code.toByte(),
            2, 1, 0, 4, 187.toByte(), 0, 0, 0, 16,
        )

        assertThrows(Exception::class.java) {
            RecoveryPackageCodec.decode(legacy, "password".toCharArray())
        }
    }
}
