package com.bare.backup

import android.content.Context
import com.bare.capability.ShizukuCapabilityProvider
import com.bare.core.domain.PrivilegeMode
import java.io.File

class PackageBackupCoordinator(private val context: Context) {
    private val discovery = PackageDiscovery(context)
    private val resolver = CapabilityResolver(context)
    private val shizuku = ShizukuCapabilityProvider(context)
    private val writer = BackupArchiveWriter()

    suspend fun backup(packageName: String, mode: PrivilegeMode = PrivilegeMode.NON_ROOT): BackupResult {
        val capability = resolver.resolve(mode)
        if (!capability.executable) return BackupResult.Rejected(capability.reason)
        val target = discovery.discover().firstOrNull { it.packageName == packageName }
            ?: return BackupResult.Rejected("Package is not visible/discoverable: $packageName")

        val backupDir = File(context.filesDir, "backups")
        if (!backupDir.exists() && !backupDir.mkdirs()) return BackupResult.Failed("Unable to create backup directory.")
        val safeName = packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")
        val archive = nextArchiveFile(backupDir, safeName, target.versionCode)

        if (mode != PrivilegeMode.SHIZUKU) {
            return writer.write(archive, target, BackupPlan(packageName, mode))
        }

        val staging = File(context.cacheDir, "shizuku-apk-$safeName")
        val copied = shizuku.copyPackageApks(packageName, staging)
        if (copied !is com.bare.capability.ShizukuCopyResult.Success) {
            return BackupResult.Failed((copied as com.bare.capability.ShizukuCopyResult.Failed).reason)
        }

        return try {
            val privilegedTarget = target.copy(
                sourceApk = copied.files.first().absolutePath,
                splitApks = copied.files.drop(1).map(File::getAbsolutePath),
            )
            writer.write(archive, privilegedTarget, BackupPlan(packageName, mode))
        } finally {
            staging.deleteRecursively()
        }
    }

    private fun nextArchiveFile(backupDir: File, safeName: String, versionCode: Long): File {
        val baseName = "$safeName-$versionCode"
        val first = File(backupDir, "$baseName.bare.zip")
        if (!first.exists()) return first

        var sequence = 2
        while (true) {
            val candidate = File(backupDir, "$baseName-$sequence.bare.zip")
            if (!candidate.exists()) return candidate
            sequence++
        }
    }
}
