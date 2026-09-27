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

/**
 * Aggregates target and capability conditions without performing execution.
 */
data class Apps2TaskPreconditions(
    val installedApp: Apps2InstalledAppPrecondition,
    val uid: Apps2UidPrecondition?,
    val apk: Apps2ApkPrecondition?,
    val downgrade: Apps2DowngradePrecondition?,
    val capabilityByPart: Map<Apps2TaskPart, Apps2CapabilityResolution>,
    val permission: Apps2PermissionPrecondition?,
) {
    fun isSatisfied(): Boolean =
        installedApp.state == Apps2PreconditionState.SATISFIED &&
            (uid == null || uid.state == Apps2PreconditionState.SATISFIED) &&
            (apk == null || apk.state == Apps2PreconditionState.SATISFIED) &&
            (downgrade == null || downgrade.decision != Apps2DowngradeDecision.BLOCKED) &&
            capabilityByPart.values.all { it.available } &&
            (permission == null || permission.state == Apps2PreconditionState.SATISFIED)
}
