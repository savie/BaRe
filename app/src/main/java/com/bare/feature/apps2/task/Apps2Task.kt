package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2CapabilityRequirement
import com.bare.feature.apps2.ui.batch.Apps2BatchAction

/**
 * Reference-derived backup/restore parts. Capability is resolved per part,
 * not inferred from the existence of a batch action.
 */
enum class Apps2TaskPart {
    APP,
    DATA,
    EXTDATA,
    EXPANSION,
    MEDIA,
}

enum class Apps2TaskState {
    BLOCKED,
    QUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    CANCELLED,
}

data class Apps2TaskRequest(
    val action: Apps2BatchAction,
    val packageNames: Set<String>,
    val parts: Set<Apps2TaskPart> = setOf(Apps2TaskPart.APP),
)

data class Apps2TaskStatus(
    val state: Apps2TaskState,
    val message: String,
)

object Apps2TaskPolicy {
    fun requirementForPart(part: Apps2TaskPart): Apps2CapabilityRequirement =
        when (part) {
            Apps2TaskPart.APP -> Apps2CapabilityRequirement.NONE
            Apps2TaskPart.DATA -> Apps2CapabilityRequirement.ROOT
            Apps2TaskPart.EXTDATA -> Apps2CapabilityRequirement.ROOT_OR_SHIZUKU
            Apps2TaskPart.EXPANSION -> Apps2CapabilityRequirement.ROOT_OR_SHIZUKU
            Apps2TaskPart.MEDIA -> Apps2CapabilityRequirement.NONE
        }

    /**
     * A batch action can span multiple parts. The executor must resolve every
     * selected part before execution; this contract intentionally does not do so.
     */
    fun requirementsFor(parts: Set<Apps2TaskPart>): Map<Apps2TaskPart, Apps2CapabilityRequirement> =
        parts.associateWith(::requirementForPart)

    /**
     * Task execution remains blocked until executor, artifact, and precondition
     * contracts are implemented.
     */
    fun initialStatus(request: Apps2TaskRequest): Apps2TaskStatus =
        Apps2TaskStatus(
            state = Apps2TaskState.BLOCKED,
            message = "Task executor is not implemented.",
        )
}
