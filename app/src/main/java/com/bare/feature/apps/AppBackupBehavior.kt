package com.bare.feature.apps

import android.content.Context
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageRepository
import java.io.File

enum class AppBackupPart {
    APK,
    DATA,
    EXTERNAL_DATA,
    MEDIA,
}

data class AppBackupRequest(
    val packageName: String,
    val parts: Set<AppBackupPart>,
    val destination: BackupDestination,
)

enum class BackupDestination {
    DEVICE,
    CLOUD,
    DEVICE_AND_CLOUD,
}

sealed interface AppBackupResult {
    data class Completed(
        val files: List<File>,
        val parts: Set<AppBackupPart>,
    ) : AppBackupResult

    data class Unsupported(val reason: String) : AppBackupResult
    data class Failed(val reason: String) : AppBackupResult
}

class AppBackupBehavior(private val context: Context) {
    private val storage = BackupStorageRepository(context)
    private val identityStore = LocalIdentityStore(context)
    private val dataBackup = AppDataBackupBehavior(context)
    private val externalDataBackup = AppExternalDataBackupBehavior()

    fun backup(request: AppBackupRequest): AppBackupResult {
        if (!request.packageName.matches(PACKAGE_REGEX)) {
            return AppBackupResult.Failed("Invalid package name")
        }
        if (request.parts.isEmpty()) {
            return AppBackupResult.Failed("At least one backup part is required")
        }
        if (request.destination != BackupDestination.DEVICE) {
            return AppBackupResult.Unsupported("Cloud backup execution is not available")
        }
        if (AppBackupPart.MEDIA in request.parts) {
            return AppBackupResult.Unsupported("Media backup execution is not available")
        }

        val identity = identityStore.load() ?: identityStore.createLocalIdentity()
        val initialization = runCatching {
            storage.initialize(identity.identityId, BackupStorage.Kind.INTERNAL)
        }.getOrElse {
            return AppBackupResult.Failed(it.message ?: "Unable to initialize backup storage")
        }

        val packageInfo = runCatching {
            context.packageManager.getPackageInfo(request.packageName, 0)
        }.getOrElse {
            return AppBackupResult.Failed(it.message ?: "Installed package was not found")
        }

        val version = if (android.os.Build.VERSION.SDK_INT >= 28) {
            packageInfo.longVersionCode.toString()
        } else {
            @Suppress("DEPRECATION")
            packageInfo.versionCode.toString()
        }
        val backupDirectory = File(
            initialization.rootDirectory,
            "BaRe/accounts/${storage.identityFolder(identity.identityId)}/backups/apps/${request.packageName}/$version"
        )
        if (!backupDirectory.exists() && !backupDirectory.mkdirs()) {
            return AppBackupResult.Failed("Unable to create backup directory")
        }

        val files = mutableListOf<File>()
        val completedParts = linkedSetOf<AppBackupPart>()

        for (part in request.parts) {
            val result = when (part) {
                AppBackupPart.APK -> backupApk(backupDirectory, request.packageName)
                AppBackupPart.DATA -> dataBackup.backup(
                    request.packageName,
                    File(backupDirectory, "data"),
                )
                AppBackupPart.EXTERNAL_DATA -> externalDataBackup.backup(
                    request.packageName,
                    File(backupDirectory, "external-data"),
                )
                AppBackupPart.MEDIA -> error("media is rejected above")
            }

            when (result) {
                is AppBackupPartResult.Completed -> {
                    files += result.files
                    completedParts += part
                }
                is AppBackupPartResult.Failed -> {
                    return AppBackupResult.Failed("${part.name} backup failed: ${result.reason}")
                }
            }
        }

        return AppBackupResult.Completed(files, completedParts)
    }

    private fun backupApk(backupDirectory: File, packageName: String): AppBackupPartResult {
        val stagingDirectory = File(backupDirectory, ".apk-staging")
        if (stagingDirectory.exists()) {
            stagingDirectory.deleteRecursively()
        }
        if (!stagingDirectory.mkdirs()) {
            return AppBackupPartResult.Failed("Unable to create APK staging directory")
        }

        val result = com.bare.capability.RootCapabilityProvider().copyPackageApks(
            packageName,
            stagingDirectory,
        )
        return when (result) {
            is com.bare.capability.RootCopyResult.Success -> {
                backupDirectory.listFiles()
                    ?.filter { it.isFile && it.name.endsWith(".apk") }
                    ?.forEach { it.delete() }
                val moved = result.files.map { file ->
                    val destination = File(backupDirectory, file.name)
                    check(file.renameTo(destination)) { "Unable to finalize APK backup" }
                    destination
                }
                stagingDirectory.deleteRecursively()
                AppBackupPartResult.Completed(moved)
            }
            is com.bare.capability.RootCopyResult.Failed ->
                AppBackupPartResult.Failed(result.reason)
        }
    }

    companion object {
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}
