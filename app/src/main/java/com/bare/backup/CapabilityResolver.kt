package com.bare.backup

import android.content.Context
import com.bare.capability.AdbCapabilityProvider
import com.bare.capability.RootCapabilityProvider
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
    private val adb = AdbCapabilityProvider()
    private val root = RootCapabilityProvider()
    private val shizuku = context?.let(::ShizukuCapabilityProvider)

    fun resolve(mode: PrivilegeMode): CapabilityResolution = when (mode) {
        PrivilegeMode.NON_ROOT -> CapabilityResolution(
            mode = mode,
            available = true,
            authorized = true,
            executable = true,
            reason = "APK/package backup through app-visible Android APIs is available.",
        )
        PrivilegeMode.ADB -> {
            when (val probe = adb.probe()) {
                is com.bare.capability.AdbProbeResult.Success -> CapabilityResolution(
                    mode = mode,
                    available = true,
                    authorized = true,
                    executable = true,
                    reason = "ADB server connected on 127.0.0.1:5037 as ${probe.identity}.",
                )
                is com.bare.capability.AdbProbeResult.Failed -> unavailable(
                    mode,
                    "ADB server unavailable or unauthorized: ${probe.reason}",
                )
            }
        }
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
        PrivilegeMode.ROOT -> {
            when (val probe = root.probe()) {
                is com.bare.capability.RootProbeResult.Success -> CapabilityResolution(
                    mode = mode,
                    available = true,
                    authorized = true,
                    executable = true,
                    reason = "Root shell authorized as ${probe.identity.trim()}.",
                )
                is com.bare.capability.RootProbeResult.Failed -> unavailable(
                    mode,
                    "Root unavailable or unauthorized: ${probe.reason}",
                )
            }
        }
    }

    private fun unavailable(mode: PrivilegeMode, reason: String) = CapabilityResolution(
        mode = mode,
        available = false,
        authorized = false,
        executable = false,
        reason = reason,
    )
}
