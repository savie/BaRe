package com.bare.feature.apps2.capability

/**
 * Capability requirements reconstructed from the Reference Apps restore/backup
 * boundary. This is a contract; it does not probe or grant device access.
 */
enum class Apps2CapabilityRequirement {
    NONE,
    ROOT,
    ROOT_OR_SHIZUKU,
}

enum class Apps2AccessMethod {
    NONE,
    ROOT,
    SHIZUKU,
}

data class Apps2CapabilitySnapshot(
    val rootAvailable: Boolean,
    val shizukuAvailable: Boolean,
)

data class Apps2CapabilityResolution(
    val requirement: Apps2CapabilityRequirement,
    val available: Boolean,
    val method: Apps2AccessMethod,
    val reason: String,
)

object Apps2CapabilityResolver {
    fun resolve(
        requirement: Apps2CapabilityRequirement,
        snapshot: Apps2CapabilitySnapshot,
    ): Apps2CapabilityResolution =
        when (requirement) {
            Apps2CapabilityRequirement.NONE ->
                Apps2CapabilityResolution(
                    requirement = requirement,
                    available = true,
                    method = Apps2AccessMethod.NONE,
                    reason = "No privileged capability is required.",
                )

            Apps2CapabilityRequirement.ROOT ->
                if (snapshot.rootAvailable) {
                    Apps2CapabilityResolution(
                        requirement = requirement,
                        available = true,
                        method = Apps2AccessMethod.ROOT,
                        reason = "Root capability is available.",
                    )
                } else {
                    Apps2CapabilityResolution(
                        requirement = requirement,
                        available = false,
                        method = Apps2AccessMethod.NONE,
                        reason = "Root capability is unavailable.",
                    )
                }

            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU ->
                when {
                    snapshot.rootAvailable ->
                        Apps2CapabilityResolution(
                            requirement = requirement,
                            available = true,
                            method = Apps2AccessMethod.ROOT,
                            reason = "Root capability is available.",
                        )

                    snapshot.shizukuAvailable ->
                        Apps2CapabilityResolution(
                            requirement = requirement,
                            available = true,
                            method = Apps2AccessMethod.SHIZUKU,
                            reason = "Shizuku capability is available.",
                        )

                    else ->
                        Apps2CapabilityResolution(
                            requirement = requirement,
                            available = false,
                            method = Apps2AccessMethod.NONE,
                            reason = "Neither root nor Shizuku capability is available.",
                        )
                }
        }
}
