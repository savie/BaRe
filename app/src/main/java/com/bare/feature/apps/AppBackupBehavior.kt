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
    PART_PROGRESS,
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
    val processedBytes: Long? = null,
    val totalBytes: Long? = null,
    val elapsedMillis: Long? = null,
    val bytesPerSecond: Long? = null,
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
        if (!backupDirectory.exists() && !backupDirectory.mkdirs()) {
            return AppBackupResult.Failed("Unable to create backup directory")
        }

        return try {
            val existing = AppBackupMetadata.read(backupDirectory)
            val currentApkIdentity = currentApkIdentity(packageInfo)
            val skippedApk = if (AppBackupPart.APK in request.parts &&
                existing != null &&
                existing.apkMatches(currentApkIdentity) &&
                existing.apkArtifactIsIntact(backupDirectory)
            ) {
                val artifact = existing.artifacts.first { it.part == AppBackupPart.APK.name }
                val file = File(backupDirectory, artifact.fileName)
                onProgress(AppBackupProgress(AppBackupProgressStage.PART_STARTED, AppBackupPart.APK, "Checking APK backup identity"))
                onProgress(AppBackupProgress(AppBackupProgressStage.PART_COMPLETED, AppBackupPart.APK, "APK backup skipped: identical backup already exists"))
                file
            } else null

            val executableParts = request.parts - if (skippedApk != null) AppBackupPart.APK else emptySet()
            val result = engine.execute(request.copy(parts = executableParts), backupDirectory, onProgress, isCancelled)
            val completedParts = result.completedParts + if (skippedApk != null) setOf(AppBackupPart.APK) else emptySet()

            if (executableParts.isEmpty()) {
                onProgress(AppBackupProgress(AppBackupProgressStage.COMPLETED, message = "Backup completed: ${completedParts.size}/${request.parts.size} parts"))
                return@try AppBackupResult.Completed(listOfNotNull(skippedApk), completedParts)
            }

            onProgress(AppBackupProgress(AppBackupProgressStage.METADATA, message = "Saving backup metadata"))
            val installerPackage = runCatching {
                context.packageManager.getInstallSourceInfo(request.packageName).installingPackageName
            }.getOrNull()
            val replacedParts = result.artifactMetadata.map { it.part }.toSet()
            val preservedArtifacts = existing?.artifacts.orEmpty().filterNot { it.part in replacedParts }
            val apkWasRebuilt = result.artifactMetadata.any { it.part == AppBackupPart.APK.name }
            val metadataApkIdentity = if (apkWasRebuilt) currentApkIdentity else existing?.apkIdentity()
            AppBackupMetadata(
                packageName = request.packageName,
                versionCode = if (android.os.Build.VERSION.SDK_INT >= 28) packageInfo.longVersionCode else @Suppress("DEPRECATION") packageInfo.versionCode.toLong(),
                versionName = packageInfo.versionName,
                apkSizeBytes = metadataApkIdentity?.apkSizeBytes,
                hasSplitApks = metadataApkIdentity?.hasSplitApks,
                hasSharedLibraries = metadataApkIdentity?.hasSharedLibraries,
                backupTime = System.currentTimeMillis(),
                installerPackage = installerPackage,
                protectedBackup = existing?.protectedBackup ?: false,
                note = existing?.note,
                artifacts = preservedArtifacts + result.artifactMetadata,
            ).writeAtomically(backupDirectory)

            onProgress(AppBackupProgress(AppBackupProgressStage.COMPLETED, message = "Backup completed: ${completedParts.size}/${request.parts.size} parts"))
            AppBackupResult.Completed(result.artifacts + listOfNotNull(skippedApk), completedParts)
        } catch (_: AppBackupEngine.BackupCancelledException) {
            onProgress(AppBackupProgress(AppBackupProgressStage.CANCELLED, message = "Backup cancelled"))
            AppBackupResult.Cancelled(emptySet())
        } catch (t: Throwable) {
            val reason = t.message ?: t::class.java.simpleName
            onProgress(AppBackupProgress(AppBackupProgressStage.PART_FAILED, message = "Backup failed: $reason"))
            AppBackupResult.Failed(reason)
        }
    }

    private data class ApkIdentity(
        val versionCode: Long,
        val versionName: String?,
        val apkSizeBytes: Long,
        val hasSplitApks: Boolean,
        val hasSharedLibraries: Boolean,
    )

    private fun currentApkIdentity(packageInfo: android.content.pm.PackageInfo): ApkIdentity {
        val applicationInfo = packageInfo.applicationInfo ?: error("Installed package application info is unavailable")
        val apkSizeBytes = buildList {
            add(applicationInfo.sourceDir)
            applicationInfo.splitSourceDirs?.let(::addAll)
        }.sumOf { path -> File(path).length().coerceAtLeast(0L) }
        return ApkIdentity(
            versionCode = if (android.os.Build.VERSION.SDK_INT >= 28) packageInfo.longVersionCode else @Suppress("DEPRECATION") packageInfo.versionCode.toLong(),
            versionName = packageInfo.versionName,
            apkSizeBytes = apkSizeBytes,
            hasSplitApks = !applicationInfo.splitSourceDirs.isNullOrEmpty(),
            hasSharedLibraries = !applicationInfo.sharedLibraryFiles.isNullOrEmpty(),
        )
    }

    private fun AppBackupMetadata.apkIdentity(): ApkIdentity? =
        if (schemaVersion >= 2 && apkSizeBytes != null && hasSplitApks != null && hasSharedLibraries != null) {
            ApkIdentity(versionCode, versionName, apkSizeBytes, hasSplitApks, hasSharedLibraries)
        } else null

    private fun AppBackupMetadata.apkMatches(current: ApkIdentity): Boolean = apkIdentity() == current

    private fun AppBackupMetadata.apkArtifactIsIntact(directory: File): Boolean {
        val artifact = artifacts.firstOrNull { it.part == AppBackupPart.APK.name } ?: return false
        val file = File(directory, artifact.fileName)
        if (!file.isFile || file.length() != artifact.byteSize) return false
        val digest = java.security.MessageDigest.getInstance("SHA-256")
        java.io.FileInputStream(file).use { input ->
            val buffer = ByteArray(1024 * 1024)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                digest.update(buffer, 0, read)
            }
        }
        val actual = digest.digest().joinToString("") { "%02x".format(it) }
        return actual.equals(artifact.sha256, ignoreCase = true)
    }

    companion object {
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}