package com.bare.backup

import com.bare.core.domain.PrivilegeMode
import java.io.File

data class BackupPlan(
    val packageName: String,
    val privilegeMode: PrivilegeMode,
    val includeSplits: Boolean = true,
    val includeAppData: Boolean = false,
)

sealed interface BackupResult {
    data class Success(val artifact: BackupArtifact) : BackupResult
    data class Rejected(val reason: String) : BackupResult
    data class Failed(val reason: String, val cause: Throwable? = null) : BackupResult
}

data class BackupArtifact(
    val archive: File,
    val packageName: String,
    val sha256: String,
    val sizeBytes: Long,
    val verified: Boolean,
)
