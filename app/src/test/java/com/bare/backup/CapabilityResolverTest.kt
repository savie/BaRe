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
    fun adbProbeFailureIsRepresentedAsUnavailable() {
        val result = CapabilityResolution(
            mode = PrivilegeMode.ADB,
            available = false,
            authorized = false,
            executable = false,
            reason = "ADB server unavailable or unauthorized",
        )
        assertFalse(result.available)
        assertFalse(result.authorized)
        assertFalse(result.executable)
    }

    @Test
    fun rootProbeFailureIsRepresentedAsUnavailable() {
        val result = CapabilityResolution(
            mode = PrivilegeMode.ROOT,
            available = false,
            authorized = false,
            executable = false,
            reason = "Root unavailable or unauthorized",
        )
        assertFalse(result.available)
        assertFalse(result.authorized)
        assertFalse(result.executable)
    }
}
