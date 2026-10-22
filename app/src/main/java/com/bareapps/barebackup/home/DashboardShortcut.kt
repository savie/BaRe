package com.bareapps.barebackup.home

/**
 * Kotlin port of the dashboard shortcut model (BareBackup defpackage.d71).
 * actionId values follow the original click dispatcher: apps=1, messages=2,
 * calls=3, wallpapers=4, Wi-Fi=5, folders=6.
 */
internal data class DashboardShortcut(
    val actionId: Int,
    val labelRes: Int,
    val iconRes: Int,
    val colorRes: Int
)
