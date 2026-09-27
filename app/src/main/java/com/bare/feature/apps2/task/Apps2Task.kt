package com.bare.feature.apps2.task

import com.bare.feature.apps2.capability.Apps2CapabilityRequirement
import com.bare.feature.apps2.ui.batch.Apps2BatchAction

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
    val capabilityRequirement: Apps2CapabilityRequirement,
)

data class Apps2TaskStatus(
    val state: Apps2TaskState,
    val message: String,
)

object Apps2TaskPolicy {
    fun requirementFor(action: Apps2BatchAction): Apps2CapabilityRequirement =
        when (action) {
            Apps2BatchAction.BACKUP -> Apps2CapabilityRequirement.NONE
            Apps2BatchAction.RESTORE -> Apps2CapabilityRequirement.NONE
            Apps2BatchAction.APP_BACKUP_SETTINGS -> Apps2CapabilityRequirement.NONE
            Apps2BatchAction.UNINSTALL -> Apps2CapabilityRequirement.NONE
            Apps2BatchAction.FORCE_STOP -> Apps2CapabilityRequirement.NONE
            Apps2BatchAction.CLEAR_DATA -> Apps2CapabilityRequirement.ROOT
            Apps2BatchAction.ENABLE_DISABLE -> Apps2CapabilityRequirement.NONE
            Apps2BatchAction.SHARE_APK -> Apps2CapabilityRequirement.NONE
        }

    /**
     * Task execution remains blocked until an executor and artifact/precondition
     * contracts are implemented.
     */
    fun initialStatus(request: Apps2TaskRequest): Apps2TaskStatus =
        Apps2TaskStatus(
            state = Apps2TaskState.BLOCKED,
            message = "Task executor is not implemented.",
        )
}
