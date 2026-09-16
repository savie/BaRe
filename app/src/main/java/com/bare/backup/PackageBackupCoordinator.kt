package com.bare.backup

import android.content.Context
import com.bare.core.domain.PrivilegeMode
import java.io.File

class PackageBackupCoordinator(private val context: Context) {
    private val discovery = PackageDiscovery(context)
    private val resolver = CapabilityResolver()
    private val writer = BackupArchiveWriter()

    fun backup(packageName: String, mode: PrivilegeMode = PrivilegeMode.NON_ROOT): BackupResult {
        val capability = resolver.resolve(mode)
        if (!capability.executable) return BackupResult.Rejected(capability.reason)
        val target = discovery.discover().firstOrNull { it.packageName == packageName }
            ?: return BackupResult.Rejected("Package is not visible/discoverable: $packageName")

        val backupDir = File(context.filesDir, "backups")
        if (!backupDir.exists() && !backupDir.mkdirs()) return BackupResult.Failed("Unable to create backup directory.")
        val safeName = packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")
        val archive = File(backupDir, "$safeName-${target.versionCode}.bare.zip")
        return writer.write(archive, target, BackupPlan(packageName, mode))
    }
}
