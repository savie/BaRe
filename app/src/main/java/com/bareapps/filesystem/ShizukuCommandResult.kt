package com.bareapps.filesystem

/**
 * Normalized Kotlin name for reference `defpackage.ne7`.
 *
 * The reference stores the collected process output list and the exit status
 * without transforming either value.
 */
internal data class ShizukuCommandResult(
    val output: ArrayList<String>,
    val exitCode: Int
)
