package com.bare.backup

import android.content.Context
import com.bare.capability.ShizukuCapabilityProvider
import com.bare.core.domain.PrivilegeMode

data class CapabilityResolution(
    val mode: PrivilegeMode,
    val available: Boolean,
    val authorized: Boolean,
    val executable: Boolean,
    val reason: String,
)

class CapabilityResolver(context: Context? = null) {
    private val shizuku = context?.let(::ShizukuCapabilityProvider)

    fun resolve(mode: PrivilegeMode): CapabilityResolution = when (mode) {
        PrivilegeMode.NON_ROOT -> CapabilityResolution(
            mode = mode,
            available = true,
            authorized = true,
            executable = true,
            reason = "APK/package backup through app-visible Android APIs is available.",
        )
        PrivilegeMode.ADB -> unavailable(mode, "ADB transport/provider is not integrated yet.")
        PrivilegeMode.SHIZUKU -> {
            val provider = shizuku
                ?: return unavailable(mode, "Shizuku runtime context is unavailable.")
            val available = provider.isAvailable()
            val authorized = provider.isAuthorized()
            CapabilityResolution(
                mode = mode,
                available = available,
                authorized = authorized,
                executable = available && authorized,
                reason = when {
                    !available -> "Shizuku binder is not available."
                    !authorized -> "Shizuku permission is not granted."
                    else -> "Shizuku privileged execution is available; operation-level verification is required."
                },
            )
        }
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
