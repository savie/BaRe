package com.bare.backup

import com.bare.core.domain.PrivilegeMode

data class CapabilityResolution(
    val mode: PrivilegeMode,
    val available: Boolean,
    val authorized: Boolean,
    val executable: Boolean,
    val reason: String,
)

class CapabilityResolver {
    fun resolve(mode: PrivilegeMode): CapabilityResolution = when (mode) {
        PrivilegeMode.NON_ROOT -> CapabilityResolution(
            mode = mode,
            available = true,
            authorized = true,
            executable = true,
            reason = "APK/package backup through app-visible Android APIs is available.",
        )
        PrivilegeMode.ADB -> unavailable(mode, "ADB transport/provider is not integrated yet.")
        PrivilegeMode.SHIZUKU -> unavailable(mode, "Shizuku provider is not integrated yet.")
        PrivilegeMode.ROOT -> unavailable(mode, "Root provider is not integrated yet.")
    }

    private fun unavailable(mode: PrivilegeMode, reason: String) = CapabilityResolution(
        mode = mode,
        available = false,
        authorized = false,
        executable = false,
        reason = reason,
    )
}
