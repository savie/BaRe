package com.bare.feature.apps

import android.content.Context
import android.os.Environment
import com.bare.app.AccessMethod
import com.bare.capability.AccessCapabilityResolver
import com.bare.capability.NonRootCapabilityProvider
import com.bare.capability.RootCapabilityProvider
import java.io.File
import java.util.UUID

data class AppBackupEngineResult(
    val completedParts: Set<AppBackupPart>,
    val artifacts: List<File>,
    val artifactMetadata: List<AppBackupArtifactMetadata>,
)

class AppBackupEngine(private val context: Context) {
    private val resolver = AccessCapabilityResolver(context)
    private val root = RootCapabilityProvider()
    private val nonRoot = NonRootCapabilityProvider(context)
    private val archiveWriter = AppBackupArchiveWriter(context)

    fun execute(
        request: AppBackupRequest,
        backupDirectory: File,
        onProgress: (AppBackupProgress) -> Unit,
        isCancelled: () -> Boolean,
    ): AppBackupEngineResult {
        val method = request.accessMethod ?: com.bare.app.LocalIdentityStore(context).loadAccessMethod() ?: AccessMethod.ROOT
        val capability = resolver.resolve(method)
        if (!capability.available) error(capability.reason)

        val operation = UUID.randomUUID().toString()
        val staging = File(backupDirectory, ".staging/$operation")
        check(staging.mkdirs()) { "Unable to create backup staging directory" }
        val completed = linkedSetOf<AppBackupPart>()
        val artifacts = mutableListOf<File>()
        val artifactMetadata = mutableListOf<AppBackupArtifactMetadata>()

        try {
            for (part in request.parts) {
                if (isCancelled()) throw BackupCancelledException()
                onProgress(AppBackupProgress(AppBackupProgressStage.PART_STARTED, part, "Backing up ${part.displayName()}"))
                val raw = File(staging, part.directoryName())
                val collected = try {
                    collectPart(method, request.packageName, part, raw, isCancelled)
                } catch (t: Throwable) {
                    onProgress(
                        AppBackupProgress(
                            AppBackupProgressStage.PART_FAILED,
                            part,
                            "Collecting " + part.displayName() + " failed: " + describeFailure(t),
                        ),
                    )
                    throw t
                }
                val archive = File(backupDirectory, "${part.archiveName()}.bare")
                val result = try {
                    archiveWriter.write(
                        archive,
                        listOf(AppBackupArchiveSource(raw, part.archiveName())),
                        request.password?.copyOf(),
                    )
                } catch (t: Throwable) {
                    onProgress(
                        AppBackupProgress(
                            AppBackupProgressStage.PART_FAILED,
                            part,
                            "Packaging/encryption for " + part.displayName() + " failed: " + describeFailure(t),
                        ),
                    )
                    throw t
                }
                completed += part
                artifacts += archive
                artifactMetadata += AppBackupArtifactMetadata(
                    part = part.name,
                    fileName = archive.name,
                    byteSize = result.byteSize,
                    sha256 = result.sha256,
                    encryption = result.encryption.name,
                )
                raw.deleteRecursively()
                onProgress(AppBackupProgress(AppBackupProgressStage.PART_COMPLETED, part, "${part.displayName()} backup completed"))
            }
            return AppBackupEngineResult(completed, artifacts, artifactMetadata)
        } catch (cancelled: BackupCancelledException) {
            artifacts.forEach { it.delete() }
            throw cancelled
        } catch (t: Throwable) {
            artifacts.forEach { it.delete() }
            throw t
        } finally {
            staging.deleteRecursively()
        }
    }

    private fun collectPart(
        method: AccessMethod,
        packageName: String,
        part: AppBackupPart,
        destination: File,
        isCancelled: () -> Boolean,
    ) {
        val result = when (part) {
            AppBackupPart.APK -> if (method == AccessMethod.ROOT) {
                root.copyPackageApks(packageName, destination, isCancelled)
            } else {
                nonRoot.copyPackageApks(packageName, destination)
            }
            AppBackupPart.DATA -> {
                if (method != AccessMethod.ROOT) error("Private app data requires root access")
                val info = context.packageManager.getApplicationInfo(packageName, 0)
                root.copyDirectory(info.dataDir, destination, isCancelled)
            }
            AppBackupPart.EXTERNAL_DATA -> collectExternal(method, packageName, destination, isCancelled)
            AppBackupPart.MEDIA -> collectMedia(method, packageName, destination, isCancelled)
        }
        when (result) {
            is com.bare.capability.RootCopyResult.Failed -> error(result.reason)
            is com.bare.capability.RootCopyResult.Success -> Unit
            is com.bare.capability.NonRootCopyResult.Failed -> error(result.reason)
            is com.bare.capability.NonRootCopyResult.Success -> Unit
        }
    }

    private fun collectExternal(
        method: AccessMethod,
        packageName: String,
        destination: File,
        isCancelled: () -> Boolean,
    ): Any {
        val source = File(Environment.getExternalStorageDirectory(), "Android/data/$packageName")
        if (method == AccessMethod.ROOT) return root.copyDirectory(source.absolutePath, destination, isCancelled)
        if (!source.isDirectory) error("External app data is not accessible without root access")
        return nonRoot.copyDirectory(source.absolutePath, destination)
    }

    private fun collectMedia(
        method: AccessMethod,
        packageName: String,
        destination: File,
        isCancelled: () -> Boolean,
    ): Any {
        val source = File(Environment.getExternalStorageDirectory(), "Android/media/$packageName")
        if (method == AccessMethod.ROOT) return root.copyDirectory(source.absolutePath, destination, isCancelled)
        if (!source.isDirectory) error("Media directory is not accessible")
        return nonRoot.copyDirectory(source.absolutePath, destination)
    }

    private fun describeFailure(t: Throwable): String {
        val root = generateSequence(t) { it.cause }.last()
        return root::class.java.simpleName + ": " + (root.message ?: "unknown error")
    }
    private fun AppBackupPart.directoryName(): String = when (this) {
        AppBackupPart.APK -> "apk"
        AppBackupPart.DATA -> "data"
        AppBackupPart.EXTERNAL_DATA -> "external-data"
        AppBackupPart.MEDIA -> "media"
    }

    private fun AppBackupPart.archiveName(): String = directoryName()

    private fun AppBackupPart.displayName(): String = when (this) {
        AppBackupPart.APK -> "APK"
        AppBackupPart.DATA -> "Data"
        AppBackupPart.EXTERNAL_DATA -> "Ext. data"
        AppBackupPart.MEDIA -> "Media"
    }

    class BackupCancelledException : Exception()
}
