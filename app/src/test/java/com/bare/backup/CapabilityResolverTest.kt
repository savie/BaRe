package com.bare.backup

import com.bare.core.domain.PrivilegeMode
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class CapabilityResolverTest {
    @Test
    fun nonRootIsExecutableForPackageApkSlice() {
        val result = CapabilityResolver().resolve(PrivilegeMode.NON_ROOT)
        assertTrue(result.available)
        assertTrue(result.authorized)
        assertTrue(result.executable)
    }

    @Test
    fun privilegedModesRemainExplicitlyUnintegrated() {
        PrivilegeMode.entries.filter { it != PrivilegeMode.NON_ROOT }.forEach { mode ->
            val result = CapabilityResolver().resolve(mode)
            assertFalse(result.available)
            assertFalse(result.authorized)
            assertFalse(result.executable)
        }
    }
}
