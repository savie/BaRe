package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2CapabilityRequirement
import com.bare.feature.apps2.ui.batch.Apps2BatchAction
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2TaskPolicyTest {

    @Test
    fun clearDataRequiresRootCapability() {
        assertEquals(
            Apps2CapabilityRequirement.ROOT,
            Apps2TaskPolicy.requirementFor(Apps2BatchAction.CLEAR_DATA),
        )
    }

    @Test
    fun taskCreationDoesNotImplyExecution() {
        val request = Apps2TaskRequest(
            action = Apps2BatchAction.BACKUP,
            packageNames = setOf("com.example.app"),
            capabilityRequirement = Apps2TaskPolicy.requirementFor(Apps2BatchAction.BACKUP),
        )

        val status = Apps2TaskPolicy.initialStatus(request)

        assertEquals(Apps2TaskState.BLOCKED, status.state)
        assertTrue(status.message.contains("not implemented"))
    }
}
