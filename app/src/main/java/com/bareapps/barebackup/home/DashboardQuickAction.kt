package com.bareapps.barebackup.home

/**
 * UI model ported from SwiftBackup defpackage.zc6 quick-action rows.
 */
internal data class DashboardQuickAction(
    val referenceId: String,
    val titleRes: Int,
    val summaryRes: Int,
    val restores: Boolean,
    val category: Int,
    val requiresRoot: Boolean = false,
    val cloudOnly: Boolean = false
) {
    companion object {
        const val APPS = 1
        const val MESSAGES = 2
        const val CALLS = 3
        const val FOLDERS = 4
    }
}
