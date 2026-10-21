package com.bareapps.barebackup.home

/**
 * Kotlin port of the reference account row model (defpackage.q7).
 * IDs are retained as action identifiers for the account menu dispatcher.
 */
internal data class AccountItem(
    val actionId: Int,
    val titleRes: Int,
    val iconRes: Int
)
