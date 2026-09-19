package com.bare.recovery

import android.os.Build

enum class RecoveryStorageMode {
    DOCUMENT_TREE,
    DIRECT_PUBLIC_PATH_UNAVAILABLE,
}

data class RecoveryStorageBoundary(
    val mode: RecoveryStorageMode,
    val reason: String,
)

object RecoveryStorageBoundaryResolver {
    fun resolve(): RecoveryStorageBoundary =
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            RecoveryStorageBoundary(
                mode = RecoveryStorageMode.DOCUMENT_TREE,
                reason = "Android 10+ requires a user-granted document-tree boundary for portable public recovery storage.",
            )
        } else {
            RecoveryStorageBoundary(
                mode = RecoveryStorageMode.DOCUMENT_TREE,
                reason = "Portable recovery storage still uses a user-granted document-tree boundary so the path remains explicit and testable.",
            )
        }
}
