package com.bare.backup

import android.content.Context
import com.bare.capability.AdbCapabilityProvider
import com.bare.capability.RootCapabilityProvider
import com.bare.capability.ShizukuCapabilityProvider
import com.bare.core.domain.PrivilegeMode
import java.io.File

class PackageBackupCoordinator(private val context: Context) {
    private val discovery = PackageDiscovery(context)
    private val resolver = CapabilityResolver(context)
    private val adb = AdbCapabilityProvider()
    private val shizuku = ShizukuCapabilityProvider(context)
    private val root = RootCapabilityProvider()
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

        return when (mode) {
            PrivilegeMode.NON_ROOT ->
                writer.write(archive, target, BackupPlan(packageName, mode))
            PrivilegeMode.ADB -> backupViaAdb(packageName, target, archive)
            PrivilegeMode.SHIZUKU -> backupViaShizuku(packageName, target, archive)
            PrivilegeMode.ROOT -> backupViaRoot(packageName, target, archive)
        }
    }

    private fun backupViaAdb(
        packageName: String,
        target: DiscoveredPackage,
        archive: File,
    ): BackupResult {
        val staging = File(context.cacheDir, "adb-apk-${packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")}")
        val copied = adb.copyPackageApks(packageName, staging)
        if (copied !is com.bare.capability.AdbCopyResult.Success) {
            return BackupResult.Failed((copied as com.bare.capability.AdbCopyResult.Failed).reason)
        }
        return try {
            val adbTarget = target.copy(
                sourceApk = copied.files.first().absolutePath,
                splitApks = copied.files.drop(1).map(File::getAbsolutePath),
            )
            writer.write(archive, adbTarget, BackupPlan(packageName, PrivilegeMode.ADB))
        } finally {
            staging.deleteRecursively()
        }
    }

    private suspend fun backupViaShizuku(
        packageName: String,
        target: DiscoveredPackage,
        archive: File,
    ): BackupResult {
        val staging = File(context.cacheDir, "shizuku-apk-${packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")}")
        val copied = shizuku.copyPackageApks(packageName, staging)
        if (copied !is com.bare.capability.ShizukuCopyResult.Success) {
            return BackupResult.Failed((copied as com.bare.capability.ShizukuCopyResult.Failed).reason)
        }
        return try {
            val privilegedTarget = target.copy(
                sourceApk = copied.files.first().absolutePath,
                splitApks = copied.files.drop(1).map(File::getAbsolutePath),
            )
            writer.write(archive, privilegedTarget, BackupPlan(packageName, PrivilegeMode.SHIZUKU))
        } finally {
            staging.deleteRecursively()
        }
    }

    private fun backupViaRoot(
        packageName: String,
        target: DiscoveredPackage,
        archive: File,
    ): BackupResult {
        val staging = File(context.cacheDir, "root-apk-${packageName.replace(Regex("[^A-Za-z0-9._-]"), "_")}")
        val copied = root.copyPackageApks(packageName, staging)
        if (copied !is com.bare.capability.RootCopyResult.Success) {
            return BackupResult.Failed((copied as com.bare.capability.RootCopyResult.Failed).reason)
        }
        return try {
            val rootTarget = target.copy(
                sourceApk = copied.files.first().absolutePath,
                splitApks = copied.files.drop(1).map(File::getAbsolutePath),
            )
            writer.write(archive, rootTarget, BackupPlan(packageName, PrivilegeMode.ROOT))
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
