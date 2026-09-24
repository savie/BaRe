package com.bare.feature.apps

import android.content.Context
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageRepository
import com.bare.app.LocalIdentityStore
import java.io.File

data class AppBackupRequest(
    val packageName: String,
    val parts: Set<String>,
    val destination: BackupDestination,
)

enum class BackupDestination {
    DEVICE,
    CLOUD,
    DEVICE_AND_CLOUD,
}

sealed interface AppBackupResult {
    data class Completed(val files: List<File>) : AppBackupResult
    data class Unsupported(val reason: String) : AppBackupResult
    data class Failed(val reason: String) : AppBackupResult
}

class AppBackupBehavior(private val context: Context) {
    private val storage = BackupStorageRepository(context)
    private val identityStore = LocalIdentityStore(context)

    fun backup(request: AppBackupRequest): AppBackupResult {
        if (request.packageName.isBlank()) return AppBackupResult.Failed("Package name is required")
        if (request.parts.isEmpty()) return AppBackupResult.Failed("At least one backup part is required")
        if (request.destination != BackupDestination.DEVICE) {
            return AppBackupResult.Unsupported("Cloud backup execution is not available")
        }

        val apkPart = "APK"
        if (request.parts.any { it != apkPart }) {
            return AppBackupResult.Unsupported("Only APK backup execution is available")
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
            "BaRe/accounts/\${storage.identityFolder(identity.identityId)}/backups/apps/\${request.packageName}/\$version"
        )
        if (backupDirectory.exists() && !backupDirectory.deleteRecursively()) {
            return AppBackupResult.Failed("Unable to replace existing APK backup")
        }
        if (!backupDirectory.mkdirs()) {
            return AppBackupResult.Failed("Unable to create APK backup directory")
        }

        val result = com.bare.capability.RootCapabilityProvider().copyPackageApks(
            request.packageName,
            backupDirectory,
        )
        return when (result) {
            is com.bare.capability.RootCopyResult.Success -> AppBackupResult.Completed(result.files)
            is com.bare.capability.RootCopyResult.Failed -> {
                backupDirectory.deleteRecursively()
                AppBackupResult.Failed(result.reason)
            }
        }
    }
}
