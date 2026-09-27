package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2CapabilityRequirement
import com.bare.feature.apps2.ui.batch.Apps2BatchAction
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2TaskPolicyTest {

    @Test
    fun capabilityRequirementsFollowReferencePartBoundaries() {
        assertEquals(
            Apps2CapabilityRequirement.NONE,
            Apps2TaskPolicy.requirementForPart(Apps2TaskPart.APP),
        )
        assertEquals(
            Apps2CapabilityRequirement.ROOT,
            Apps2TaskPolicy.requirementForPart(Apps2TaskPart.DATA),
        )
        assertEquals(
            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU,
            Apps2TaskPolicy.requirementForPart(Apps2TaskPart.EXTDATA),
        )
        assertEquals(
            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU,
            Apps2TaskPolicy.requirementForPart(Apps2TaskPart.EXPANSION),
        )
        assertEquals(
            Apps2CapabilityRequirement.NONE,
            Apps2TaskPolicy.requirementForPart(Apps2TaskPart.MEDIA),
        )
    }

    @Test
    fun taskCreationDoesNotImplyExecution() {
        val request = Apps2TaskRequest(
            action = Apps2BatchAction.BACKUP,
            packageNames = setOf("com.example.app"),
        )

        val status = Apps2TaskPolicy.initialStatus(request)

        assertEquals(Apps2TaskState.BLOCKED, status.state)
        assertTrue(status.message.contains("not implemented"))
    }

    @Test
    fun multiplePartsResolveIndependently() {
        val requirements = Apps2TaskPolicy.requirementsFor(
            setOf(Apps2TaskPart.APP, Apps2TaskPart.DATA, Apps2TaskPart.EXPANSION),
        )

        assertEquals(Apps2CapabilityRequirement.NONE, requirements[Apps2TaskPart.APP])
        assertEquals(Apps2CapabilityRequirement.ROOT, requirements[Apps2TaskPart.DATA])
        assertEquals(
            Apps2CapabilityRequirement.ROOT_OR_SHIZUKU,
            requirements[Apps2TaskPart.EXPANSION],
        )
    }
}
