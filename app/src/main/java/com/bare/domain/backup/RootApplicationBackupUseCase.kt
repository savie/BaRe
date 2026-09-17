package com.bare.domain.backup

import android.content.Context
import com.bare.backup.BackupArchiveWriter
import com.bare.backup.BackupPlan
import com.bare.backup.PackageDiscovery
import com.bare.capability.RootCapabilityProvider
import com.bare.core.domain.PrivilegeMode
import java.io.File

class RootApplicationBackupUseCase(
    context: Context,
    private val root: RootCapabilityProvider = RootCapabilityProvider(),
    private val dataSource: ApplicationDataSource = RootApplicationDataSource(root),
    private val writer: BackupArchiveWriter = BackupArchiveWriter(),
) : ApplicationBackupUseCase {
    private val discovery = PackageDiscovery(context)
    private val appContext = context

    override suspend fun execute(request: ApplicationBackupRequest): ApplicationBackupResult {
        if (request.executionMode != PrivilegeMode.ROOT) {
            return ApplicationBackupResult(
                request.packageName,
                request.executionMode,
                listOf(BackupComponentResult(BackupComponent.APPLICATION_DATA, BackupComponentState.BLOCKED, reason = "This first slice requires ROOT.")),
            )
        }
        val capability = root.probe()
        if (capability !is com.bare.capability.RootProbeResult.Success) {
            return ApplicationBackupResult(
                request.packageName,
                request.executionMode,
                listOf(BackupComponentResult(BackupComponent.APPLICATION_DATA, BackupComponentState.BLOCKED, reason = (capability as com.bare.capability.RootProbeResult.Failed).reason)),
            )
        }
        val target = discovery.discover().firstOrNull { it.packageName == request.packageName }
            ?: return ApplicationBackupResult(request.packageName, request.executionMode, emptyList())

        val components = mutableListOf<BackupComponentResult>()
        val staging = File(appContext.cacheDir, "application-data-${request.packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")}")
        val data = if (request.includeAppData) dataSource.copyApplicationData(request.packageName, staging)
            else ApplicationDataResult(BackupComponentState.NOT_REQUESTED)
        components += BackupComponentResult(BackupComponent.APPLICATION_DATA, data.state, data.files, data.reason)

        if (request.includeApk) {
            val apkState = if (target.sourceApk.isNotBlank()) BackupComponentState.SUCCESS else BackupComponentState.FAILED
            components += BackupComponentResult(BackupComponent.PACKAGE_APK, apkState, reason = if (apkState == BackupComponentState.SUCCESS) null else "Source APK unavailable")
        } else {
            components += BackupComponentResult(BackupComponent.PACKAGE_APK, BackupComponentState.NOT_REQUESTED)
        }

        // Archive integration is deliberately not claimed yet: the current archive
        // contract only accepts DiscoveredPackage APK components. The data tar is kept
        // as a verified transport artifact until the archive schema is expanded.
        staging.deleteRecursively()
        return ApplicationBackupResult(request.packageName, request.executionMode, components, archive = null, verified = false)
    }
}
