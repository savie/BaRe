package com.bare.feature.apps

import android.content.Context
import com.bare.app.AccessMethod
import com.bare.app.LocalIdentityStore
import com.bare.storage.BackupStorage
import com.bare.storage.BackupStorageBehavior
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
    val accessMethod: AccessMethod? = null,
    val password: CharArray? = null,
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

    data class Cancelled(
        val completedParts: Set<AppBackupPart>,
    ) : AppBackupResult

    data class Unsupported(val reason: String) : AppBackupResult
    data class Failed(val reason: String) : AppBackupResult
}

enum class AppBackupProgressStage {
    PREPARING,
    PART_STARTED,
    PART_COMPLETED,
    PART_FAILED,
    METADATA,
    COMPLETED,
    CANCELLED,
}

data class AppBackupProgress(
    val stage: AppBackupProgressStage,
    val part: AppBackupPart? = null,
    val message: String,
)

class AppBackupBehavior(private val context: Context) {
    private val storage = BackupStorageBehavior(context)
    private val identityStore = LocalIdentityStore(context)
    private val engine = AppBackupEngine(context)

    fun backup(
        request: AppBackupRequest,
        onProgress: (AppBackupProgress) -> Unit = {},
        isCancelled: () -> Boolean = { false },
    ): AppBackupResult {
        if (!request.packageName.matches(PACKAGE_REGEX)) return AppBackupResult.Failed("Invalid package name")
        if (request.parts.isEmpty()) return AppBackupResult.Failed("At least one backup part is required")
        if (request.destination != BackupDestination.DEVICE) {
            return AppBackupResult.Unsupported("Cloud backup execution is not available")
        }

        onProgress(AppBackupProgress(AppBackupProgressStage.PREPARING, message = "Preparing backup"))
        if (isCancelled()) {
            onProgress(AppBackupProgress(AppBackupProgressStage.CANCELLED, message = "Backup cancelled"))
            return AppBackupResult.Cancelled(emptySet())
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
        val backupDirectory = storage.appBackupDirectory(
            initialization,
            identity.identityId,
            request.packageName,
            version,
        )
        if (backupDirectory.exists()) backupDirectory.deleteRecursively()
        if (!backupDirectory.mkdirs()) {
            return AppBackupResult.Failed("Unable to create backup directory")
        }

        return try {
            val result = engine.execute(request, backupDirectory, onProgress, isCancelled)
            onProgress(AppBackupProgress(AppBackupProgressStage.METADATA, message = "Saving backup metadata"))
            val installerPackage = runCatching {
                context.packageManager.getInstallSourceInfo(request.packageName).installingPackageName
            }.getOrNull()
            val existing = AppBackupMetadata.read(backupDirectory)
            AppBackupMetadata(
                packageName = request.packageName,
                versionCode = if (android.os.Build.VERSION.SDK_INT >= 28) packageInfo.longVersionCode else @Suppress("DEPRECATION") packageInfo.versionCode.toLong(),
                versionName = packageInfo.versionName,
                backupTime = System.currentTimeMillis(),
                installerPackage = installerPackage,
                protectedBackup = existing?.protectedBackup ?: false,
                note = existing?.note,
                artifacts = result.artifactMetadata,
            ).writeAtomically(backupDirectory)

            onProgress(AppBackupProgress(
                AppBackupProgressStage.COMPLETED,
                message = "Backup completed: ${result.completedParts.size}/${request.parts.size} parts",
            ))
            AppBackupResult.Completed(result.artifacts, result.completedParts)
        } catch (_: AppBackupEngine.BackupCancelledException) {
            onProgress(AppBackupProgress(AppBackupProgressStage.CANCELLED, message = "Backup cancelled"))
            backupDirectory.deleteRecursively()
            AppBackupResult.Cancelled(emptySet())
        } catch (t: Throwable) {
            val reason = t.message ?: t::class.java.simpleName
            onProgress(AppBackupProgress(AppBackupProgressStage.PART_FAILED, message = "Backup failed: $reason"))
            backupDirectory.deleteRecursively()
            AppBackupResult.Failed(reason)
        }
    }

    companion object {
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}
