package com.bare.domain.backup

import android.content.Context
import com.bare.backup.BackupResult
import com.bare.backup.PackageBackupCoordinator
import java.io.File

/**
 * Product-level application backup facade.
 *
 * This is the first vertical integration point above the existing package/APK
 * engine. It keeps component state explicit so unsupported private-data work
 * cannot be reported as a full application backup.
 */
class ApplicationBackupUseCaseImpl(
    context: Context,
    private val dataSource: ApplicationDataSource = RootApplicationDataSource(),
) : ApplicationBackupUseCase {
    private val packageBackup = PackageBackupCoordinator(context)

    override suspend fun execute(request: ApplicationBackupRequest): ApplicationBackupResult {
        val apk = if (request.includeApk) {
            when (val result = packageBackup.backup(request.packageName, request.executionMode)) {
                is BackupResult.Success -> BackupComponentResult(
                    component = BackupComponent.PACKAGE_APK,
                    state = BackupComponentState.SUCCESS,
                    artifacts = listOf(result.artifact.archive),
                )
                is BackupResult.Rejected -> BackupComponentResult(
                    component = BackupComponent.PACKAGE_APK,
                    state = BackupComponentState.BLOCKED,
                    reason = result.reason,
                )
                is BackupResult.Failed -> BackupComponentResult(
                    component = BackupComponent.PACKAGE_APK,
                    state = BackupComponentState.FAILED,
                    reason = result.reason,
                )
            }
        } else {
            BackupComponentResult(
                component = BackupComponent.PACKAGE_APK,
                state = BackupComponentState.NOT_REQUESTED,
            )
        }

        val data = if (request.includeAppData) {
            val staging = File(request.destination, ".data-${request.packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")}")
            try {
                dataSource.copyApplicationData(request.packageName, staging)
                    .let { result ->
                        BackupComponentResult(
                            component = BackupComponent.APPLICATION_DATA,
                            state = result.state,
                            artifacts = result.files,
                            reason = result.reason,
                        )
                    }
            } finally {
                staging.deleteRecursively()
            }
        } else {
            BackupComponentResult(
                component = BackupComponent.APPLICATION_DATA,
                state = BackupComponentState.NOT_REQUESTED,
            )
        }

        val archive = apk.artifacts.firstOrNull()
        val verified = apk.state == BackupComponentState.SUCCESS &&
            (!request.includeAppData || data.state == BackupComponentState.SUCCESS)

        return ApplicationBackupResult(
            packageName = request.packageName,
            executionMode = request.executionMode,
            components = listOf(apk, data),
            archive = archive,
            verified = verified,
        )
    }
}
