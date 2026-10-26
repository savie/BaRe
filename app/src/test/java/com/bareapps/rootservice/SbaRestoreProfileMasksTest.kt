package com.bareapps.rootservice

import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test

class SbaRestoreProfileMasksTest {
    @Test
    fun mapsProfilesToReferenceModeMasks() {
        assertEquals(511, SbaRestoreProfileMasks.fromProfile(0))
        assertEquals(468, SbaRestoreProfileMasks.fromProfile(1))
        assertEquals(384, SbaRestoreProfileMasks.fromProfile(2))
    }

    @Test
    fun rejectsUnknownProfiles() {
        assertThrows(IllegalArgumentException::class.java) {
            SbaRestoreProfileMasks.fromProfile(3)
        }
    }
}
