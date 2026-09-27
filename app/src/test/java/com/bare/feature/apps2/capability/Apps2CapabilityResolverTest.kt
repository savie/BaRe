package com.bare.feature.apps2.capability

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2CapabilityResolverTest {

    @Test
    fun noneRequirementIsAlwaysAvailable() {
        val result = Apps2CapabilityResolver.resolve(
            Apps2CapabilityRequirement.NONE,
            Apps2CapabilitySnapshot(rootAvailable = false, shizukuAvailable = false),
        )

        assertTrue(result.available)
        assertEquals(Apps2AccessMethod.NONE, result.method)
    }

    @Test
    fun rootRequirementRequiresRoot() {
        val unavailable = Apps2CapabilityResolver.resolve(
            Apps2CapabilityRequirement.ROOT,
            Apps2CapabilitySnapshot(rootAvailable = false, shizukuAvailable = true),
        )
        assertFalse(unavailable.available)

        val available = Apps2CapabilityResolver.resolve(
            Apps2CapabilityRequirement.ROOT,
            Apps2CapabilitySnapshot(rootAvailable = true, shizukuAvailable = false),
        )
        assertTrue(available.available)
        assertEquals(Apps2AccessMethod.ROOT, available.method)
    }

    @Test
    fun rootOrShizukuPrefersRootThenShizuku() {
        val root = Apps2CapabilityResolver.resolve(
            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU,
            Apps2CapabilitySnapshot(rootAvailable = true, shizukuAvailable = true),
        )
        assertEquals(Apps2AccessMethod.ROOT, root.method)

        val shizuku = Apps2CapabilityResolver.resolve(
            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU,
            Apps2CapabilitySnapshot(rootAvailable = false, shizukuAvailable = true),
        )
        assertTrue(shizuku.available)
        assertEquals(Apps2AccessMethod.SHIZUKU, shizuku.method)
    }

    @Test
    fun rootOrShizukuBlocksWithoutEitherCapability() {
        val result = Apps2CapabilityResolver.resolve(
            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU,
            Apps2CapabilitySnapshot(rootAvailable = false, shizukuAvailable = false),
        )

        assertFalse(result.available)
        assertEquals(Apps2AccessMethod.NONE, result.method)
    }
}
