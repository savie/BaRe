package com.bare.restore

import java.io.File

sealed interface RestoreResult {
    data class Success(
        val packageName: String,
        val status: String,
    ) : RestoreResult

    data class Rejected(val reason: String) : RestoreResult
    data class Failed(val reason: String, val cause: Throwable? = null) : RestoreResult
}

data class RestorePayload(
    val packageName: String,
    val versionCode: Long,
    val files: List<File>,
    val stagingDir: File,
)
