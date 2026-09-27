package com.bare.feature.apps2.ui.batch

/**
 * Batch actions derived from the Reference Apps batch boundary.
 *
 * This type is a contract only. It does not execute an action.
 */
enum class Apps2BatchAction {
    BACKUP,
    RESTORE,
    APP_BACKUP_SETTINGS,
    UNINSTALL,
    FORCE_STOP,
    CLEAR_DATA,
    ENABLE_DISABLE,
    SHARE_APK,
}

sealed interface Apps2BatchActionAvailability {
    data class Blocked(val reason: String) : Apps2BatchActionAvailability
}

/**
 * Apps2 batch actions remain blocked until their task/capability contracts exist.
 */
object Apps2BatchActionPolicy {
    fun availability(action: Apps2BatchAction): Apps2BatchActionAvailability =
        Apps2BatchActionAvailability.Blocked(
            reason = when (action) {
                Apps2BatchAction.BACKUP -> "Backup task is not implemented."
                Apps2BatchAction.RESTORE -> "Restore task is not implemented."
                Apps2BatchAction.APP_BACKUP_SETTINGS -> "Backup settings task boundary is not implemented."
                Apps2BatchAction.UNINSTALL -> "Privileged/destructive batch execution is not implemented."
                Apps2BatchAction.FORCE_STOP -> "Privileged batch execution is not implemented."
                Apps2BatchAction.CLEAR_DATA -> "Privileged/destructive batch execution is not implemented."
                Apps2BatchAction.ENABLE_DISABLE -> "Privileged batch execution is not implemented."
                Apps2BatchAction.SHARE_APK -> "APK artifact sharing is not implemented."
            },
        )
}
