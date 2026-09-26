package com.bare.feature.apps

import android.content.Context
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorageBehavior
import com.bare.capability.RootCapabilityProvider
import java.io.File

data class AppBackupSnapshot(
    val packageName: String,
    val versionCode: Long,
    val versionName: String?,
    val backupTime: Long,
    val protectedBackup: Boolean,
    val note: String?,
    val apkBytes: Long,
    val dataBytes: Long,
    val externalDataBytes: Long,
    val mediaBytes: Long,
    val totalBytes: Long,
)

class AppBackupInventoryBehavior(context: Context) {
    private val identityStore = LocalIdentityStore(context)
    private val storage = BackupStorageBehavior(context)
    private val root = RootCapabilityProvider()

    fun inspectLocal(packageName: String): List<AppBackupSnapshot> =
        inspectLocalAll()[packageName].orEmpty()

    fun inspectLocalAll(): Map<String, List<AppBackupSnapshot>> {
        val identity = identityStore.load() ?: return emptyMap()
        val result = linkedMapOf<String, MutableList<AppBackupSnapshot>>()

        for (location in storage.localBackupLocations(identity.identityId)) {
            val appsRoot = File(location, "apps")
            val directPackageNames = appsRoot.listFiles()
                ?.asSequence()
                ?.filter { it.isDirectory }
                ?.map { it.name }
                ?.toList()
                .orEmpty()
            val packageNames = directPackageNames.ifEmpty {
                root.listDirectoryNames(appsRoot.absolutePath)
            }

            for (packageName in packageNames) {
                val packageRoot = File(appsRoot, packageName)
                val directVersionNames = packageRoot.listFiles()
                    ?.asSequence()
                    ?.filter { it.isDirectory }
                    ?.map { it.name }
                    ?.toList()
                    .orEmpty()
                val versionNames = directVersionNames.ifEmpty {
                    root.listDirectoryNames(packageRoot.absolutePath)
                }

                for (versionName in versionNames) {
                    val directory = File(packageRoot, versionName)
                    val metadata = readMetadata(directory) ?: continue
                    if (metadata.packageName != packageName) continue
                    result.getOrPut(packageName) { mutableListOf() } += metadata.toSnapshot(directory)
                }
            }
        }

        return result.mapValues { (_, snapshots) ->
            snapshots.distinctBy { Triple(it.packageName, it.versionCode, it.backupTime) }
                .sortedByDescending { it.backupTime }
        }
    }

    private fun readMetadata(directory: File): AppBackupMetadata? {
        AppBackupMetadata.read(directory)?.let { return it }
        val text = root.readTextFile(File(directory, AppBackupMetadata.FILE_NAME).absolutePath) ?: return null
        return AppBackupMetadata.parse(text)
    }

    private fun AppBackupMetadata.toSnapshot(directory: File): AppBackupSnapshot =
        AppBackupSnapshot(
            packageName = packageName,
            versionCode = versionCode,
            versionName = versionName,
            backupTime = backupTime,
            protectedBackup = protectedBackup,
            note = note,
            apkBytes = artifactBytes(AppBackupPart.APK, directory, "apk"),
            dataBytes = artifactBytes(AppBackupPart.DATA, directory, "data"),
            externalDataBytes = artifactBytes(AppBackupPart.EXTERNAL_DATA, directory, "external-data"),
            mediaBytes = artifactBytes(AppBackupPart.MEDIA, directory, "media"),
            totalBytes = if (artifacts.isNotEmpty()) {
                artifacts.sumOf { it.byteSize }
            } else {
                root.directorySize(directory.absolutePath)
                    ?: directorySize(directory) { file -> file.isFile && file.name != AppBackupMetadata.FILE_NAME }
            },
        )

    private fun AppBackupMetadata.artifactBytes(
        part: AppBackupPart,
        directory: File,
        legacyDirectoryName: String,
    ): Long {
        val named = artifacts.firstOrNull { it.part == part.name }
        return named?.byteSize
            ?: root.directorySize(File(directory, legacyDirectoryName).absolutePath)
            ?: directorySize(File(directory, legacyDirectoryName))
    }

    private fun directorySize(
        directory: File,
        include: (File) -> Boolean = { true },
    ): Long {
        if (!directory.exists()) return 0L
        return directory.walkTopDown()
            .filter { it.isFile && include(it) }
            .sumOf { it.length() }
    }
}
