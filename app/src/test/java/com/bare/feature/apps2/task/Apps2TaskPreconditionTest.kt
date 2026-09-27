package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2AccessMethod
import com.bare.feature.apps2.capability.Apps2CapabilityRequirement
import com.bare.feature.apps2.capability.Apps2CapabilityResolution
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2TaskPreconditionTest {

    private fun availablePart(part: Apps2TaskPart) =
        part to Apps2ArtifactPrecondition(Apps2PreconditionState.SATISFIED)

    private fun availableCapability(part: Apps2TaskPart) =
        part to Apps2CapabilityResolution(
            requirement = Apps2CapabilityRequirement.NONE,
            available = true,
            method = Apps2AccessMethod.NONE,
            reason = "No privileged capability is required.",
        )

    @Test
    fun appRestoreDoesNotRequireAnAlreadyInstalledTarget() {
        val preconditions = Apps2TaskPreconditions(
            installedApp = Apps2InstalledAppPrecondition(
                Apps2PreconditionState.BLOCKED,
                "com.example.app",
            ),
            uid = null,
            apk = Apps2ApkPrecondition(
                state = Apps2PreconditionState.SATISFIED,
                baseApkAvailable = true,
                baseApkValid = true,
            ),
            downgrade = Apps2DowngradePrecondition(
                Apps2DowngradeDecision.NOT_REQUIRED,
            ),
            artifactByPart = mapOf(availablePart(Apps2TaskPart.APP)),
            capabilityByPart = mapOf(availableCapability(Apps2TaskPart.APP)),
            permission = null,
        )

        assertTrue(preconditions.isSatisfied(setOf(Apps2TaskPart.APP)))
    }

    @Test
    fun missingUidBlocksDataRestore() {
        val preconditions = Apps2TaskPreconditions(
            installedApp = Apps2InstalledAppPrecondition(
                Apps2PreconditionState.SATISFIED,
                "com.example.app",
            ),
            uid = Apps2UidPrecondition(Apps2PreconditionState.BLOCKED, null),
            apk = null,
            downgrade = null,
            artifactByPart = mapOf(availablePart(Apps2TaskPart.DATA)),
            capabilityByPart = mapOf(availableCapability(Apps2TaskPart.DATA)),
            permission = null,
        )

        assertFalse(preconditions.isSatisfied(setOf(Apps2TaskPart.DATA)))
    }

    @Test
    fun blockedCapabilityBlocksTask() {
        val preconditions = Apps2TaskPreconditions(
            installedApp = Apps2InstalledAppPrecondition(
                Apps2PreconditionState.SATISFIED,
                "com.example.app",
            ),
            uid = null,
            apk = null,
            downgrade = null,
            artifactByPart = mapOf(availablePart(Apps2TaskPart.DATA)),
            capabilityByPart = mapOf(
                Apps2TaskPart.DATA to Apps2CapabilityResolution(
                    requirement = Apps2CapabilityRequirement.ROOT,
                    available = false,
                    method = Apps2AccessMethod.NONE,
                    reason = "Root capability is unavailable.",
                ),
            ),
            permission = null,
        )

        assertFalse(preconditions.isSatisfied(setOf(Apps2TaskPart.DATA)))
    }

    @Test
    fun uninstalledTargetBlocksDataRestoreEvenWithArtifact() {
        val preconditions = Apps2TaskPreconditions(
            installedApp = Apps2InstalledAppPrecondition(
                Apps2PreconditionState.BLOCKED,
                "com.example.app",
            ),
            uid = Apps2UidPrecondition(Apps2PreconditionState.BLOCKED, null),
            apk = null,
            downgrade = null,
            artifactByPart = mapOf(availablePart(Apps2TaskPart.DATA)),
            capabilityByPart = mapOf(availableCapability(Apps2TaskPart.DATA)),
            permission = null,
        )

        assertFalse(preconditions.isSatisfied(setOf(Apps2TaskPart.DATA)))
    }
}
