package com.bare.domain.backup

import com.bare.core.domain.PrivilegeMode
import java.io.File

data class ApplicationBackupRequest(
    val packageName: String,
    val executionMode: PrivilegeMode,
    val includeApk: Boolean = true,
    val includeSplits: Boolean = true,
    val includeAppData: Boolean = true,
    val destination: File,
)

data class BackupComponentResult(
    val component: BackupComponent,
    val state: BackupComponentState,
    val artifacts: List<File> = emptyList(),
    val reason: String? = null,
)

enum class BackupComponent {
    PACKAGE_APK,
    APPLICATION_DATA,
}

enum class BackupComponentState {
    NOT_REQUESTED,
    SUCCESS,
    FAILED,
    BLOCKED,
    UNSUPPORTED,
}

data class ApplicationBackupResult(
    val packageName: String,
    val executionMode: PrivilegeMode,
    val components: List<BackupComponentResult>,
    val archive: File? = null,
    val verified: Boolean = false,
)

interface ApplicationBackupUseCase {
    suspend fun execute(request: ApplicationBackupRequest): ApplicationBackupResult
}

interface PackageArtifactSource {
    fun copyApkArtifacts(packageName: String, destinationDir: File): PackageArtifactResult
}

data class PackageArtifactResult(
    val success: Boolean,
    val files: List<File> = emptyList(),
    val reason: String? = null,
)

interface ApplicationDataSource {
    fun copyApplicationData(packageName: String, destinationDir: File): ApplicationDataResult
}

data class ApplicationDataResult(
    val state: BackupComponentState,
    val files: List<File> = emptyList(),
    val reason: String? = null,
)
