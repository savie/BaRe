package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2AccessMethod
import com.bare.feature.apps2.capability.Apps2CapabilityRequirement
import com.bare.feature.apps2.capability.Apps2CapabilityResolution
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2TaskPreconditionTest {

    @Test
    fun satisfiedPreconditionsRequireInstalledTargetUidWhenPresent() {
        val preconditions = Apps2TaskPreconditions(
            installedApp = Apps2InstalledAppPrecondition(
                Apps2PreconditionState.SATISFIED,
                "com.example.app",
            ),
            uid = Apps2UidPrecondition(Apps2PreconditionState.SATISFIED, 10001),
            apk = null,
            downgrade = null,
            capabilityByPart = emptyMap(),
            permission = null,
        )

        assertTrue(preconditions.isSatisfied())
    }

    @Test
    fun missingUidBlocksDataRestoreContract() {
        val preconditions = Apps2TaskPreconditions(
            installedApp = Apps2InstalledAppPrecondition(
                Apps2PreconditionState.SATISFIED,
                "com.example.app",
            ),
            uid = Apps2UidPrecondition(Apps2PreconditionState.BLOCKED, null),
            apk = null,
            downgrade = null,
            capabilityByPart = emptyMap(),
            permission = null,
        )

        assertFalse(preconditions.isSatisfied())
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

        assertFalse(preconditions.isSatisfied())
    }
}
