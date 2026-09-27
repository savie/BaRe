package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2CapabilityResolution

/**
 * Restore-target preconditions reconstructed from the Reference restore path.
 *
 * This is a decision contract only. It does not inspect, install, mutate, or
 * grant anything on the device.
 */
enum class Apps2PreconditionState {
    SATISFIED,
    BLOCKED,
    UNKNOWN,
}

data class Apps2InstalledAppPrecondition(
    val state: Apps2PreconditionState,
    val packageName: String,
)

data class Apps2UidPrecondition(
    val state: Apps2PreconditionState,
    val uid: Int?,
)

data class Apps2ApkPrecondition(
    val state: Apps2PreconditionState,
    val baseApkAvailable: Boolean,
    val baseApkValid: Boolean,
)

enum class Apps2DowngradeDecision {
    NOT_REQUIRED,
    ALLOWED,
    BLOCKED,
    REQUIRES_PLATFORM_WORKAROUND,
    UNKNOWN,
}

data class Apps2DowngradePrecondition(
    val decision: Apps2DowngradeDecision,
)

data class Apps2PermissionPrecondition(
    val required: Boolean,
    val state: Apps2PreconditionState,
)

data class Apps2ArtifactPrecondition(
    val state: Apps2PreconditionState,
)

/**
 * Aggregates target, artifact, permission, and capability conditions without
 * performing execution.
 *
 * Installed-app/UID requirements are evaluated only for parts whose Reference
 * restore path requires an installed target.
 */
data class Apps2TaskPreconditions(
    val installedApp: Apps2InstalledAppPrecondition,
    val uid: Apps2UidPrecondition?,
    val apk: Apps2ApkPrecondition?,
    val downgrade: Apps2DowngradePrecondition?,
    val artifactByPart: Map<Apps2TaskPart, Apps2ArtifactPrecondition>,
    val capabilityByPart: Map<Apps2TaskPart, Apps2CapabilityResolution>,
    val permission: Apps2PermissionPrecondition?,
) {
    fun isSatisfied(parts: Set<Apps2TaskPart>): Boolean {
        val requiresInstalledTarget = parts.any {
            it == Apps2TaskPart.DATA ||
                it == Apps2TaskPart.EXTDATA ||
                it == Apps2TaskPart.EXPANSION ||
                it == Apps2TaskPart.MEDIA
        }

        if (requiresInstalledTarget &&
            installedApp.state != Apps2PreconditionState.SATISFIED
        ) {
            return false
        }

        if (Apps2TaskPart.DATA in parts &&
            uid?.state != Apps2PreconditionState.SATISFIED
        ) {
            return false
        }

        if (Apps2TaskPart.APP in parts &&
            (apk?.state != Apps2PreconditionState.SATISFIED ||
                downgrade?.decision == Apps2DowngradeDecision.BLOCKED)
        ) {
            return false
        }

        if (parts.any { artifactByPart[it]?.state != Apps2PreconditionState.SATISFIED }) {
            return false
        }

        if (parts.any {
                val resolution = capabilityByPart[it]
                resolution == null || !resolution.available
            }
        ) {
            return false
        }

        if (permission?.required == true &&
            permission.state != Apps2PreconditionState.SATISFIED
        ) {
            return false
        }

        return true
    }
}
