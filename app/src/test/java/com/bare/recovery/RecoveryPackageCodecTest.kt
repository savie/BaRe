package com.bare.recovery

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Test

class RecoveryPackageCodecTest {
    private val payload = RecoveryPackageCodec.Payload(
        identityId = "9e2e1d7f-2d4d-4b6e-9f6e-9a0c4c1e4d11",
        type = "LOCAL",
        setupComplete = true,
        accessMethod = "NON_ROOT",
    )

    @Test
    fun roundTripRestoresPayload() {
        val password = "correct horse battery staple".toCharArray()
        val encoded = RecoveryPackageCodec.encode(payload, password)
        val decoded = RecoveryPackageCodec.decode(encoded, password)

        assertEquals(payload, decoded)
    }

    @Test
    fun wrongPasswordIsRejected() {
        val encoded = RecoveryPackageCodec.encode(payload, "correct".toCharArray())

        assertThrows(Exception::class.java) {
            RecoveryPackageCodec.decode(encoded, "wrong".toCharArray())
        }
    }

    @Test
    fun tamperingIsRejected() {
        val encoded = RecoveryPackageCodec.encode(payload, "correct".toCharArray())
        encoded[encoded.lastIndex] = (encoded.last() + 1).toByte()

        assertThrows(Exception::class.java) {
            RecoveryPackageCodec.decode(encoded, "correct".toCharArray())
        }
    }

    @Test
    fun cleartextHeaderDoesNotContainIdentity() {
        val encoded = RecoveryPackageCodec.encode(payload, "correct".toCharArray())
        val cleartext = encoded.copyOfRange(0, 4 + 1 + 1 + 4 + 1 + 1 + 16 + 12)
        val identity = payload.identityId.toByteArray(Charsets.UTF_8)

        assertFalse(cleartext.toString(Charsets.ISO_8859_1).contains(identity.toString(Charsets.ISO_8859_1)))
    }
}
