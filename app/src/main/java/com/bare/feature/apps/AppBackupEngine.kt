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
                val partStartedAt = System.nanoTime()
                val progress = PartProgressReporter(part, onProgress, partStartedAt)
                onProgress(AppBackupProgress(AppBackupProgressStage.PART_STARTED, part, "Backing up ${part.displayName()}"))
                val raw = File(staging, part.directoryName())
                val collectedBytes = try {
                    collectPart(method, request.packageName, part, raw, isCancelled) { processed, total ->
                        progress.report("Collecting ${part.displayName()}", processed, total)
                    }
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
                val collectionElapsed = elapsedMillis(partStartedAt)
                progress.finish(
                    "Collecting ${part.displayName()} completed in ${formatDuration(collectionElapsed)}",
                    collectedBytes,
                    collectedBytes,
                    collectionElapsed,
                )
                val archive = File(backupDirectory, "${part.archiveName()}.bare")
                val packagingStartedAt = System.nanoTime()
                val result = try {
                    archiveWriter.write(
                        archive,
                        listOf(AppBackupArchiveSource(raw, part.archiveName())),
                        request.password?.copyOf(),
                    ) { processed, total ->
                        progress.report("Packaging ${part.displayName()}", processed, total, packagingStartedAt)
                    }
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
                val packagingElapsed = elapsedMillis(packagingStartedAt)
                progress.finish(
                    "Packaging ${part.displayName()} completed in ${formatDuration(packagingElapsed)}",
                    result.byteSize,
                    result.byteSize,
                    packagingElapsed,
                )
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
        onProgress: (Long, Long) -> Unit,
    ): Long {
        val result = when (part) {
            AppBackupPart.APK -> if (method == AccessMethod.ROOT) {
                root.copyPackageApks(packageName, destination, isCancelled, onProgress)
            } else {
                nonRoot.copyPackageApks(packageName, destination)
            }
            AppBackupPart.DATA -> {
                if (method != AccessMethod.ROOT) error("Private app data requires root access")
                val info = context.packageManager.getApplicationInfo(packageName, 0)
                when (val copy = root.copyDirectory(info.dataDir, destination, isCancelled)) {
                    is com.bare.capability.RootCopyResult.Failed ->
                        error("Data source path '${info.dataDir}': ${copy.reason}")
                    is com.bare.capability.RootCopyResult.Success -> copy
                }
            }
            AppBackupPart.EXTERNAL_DATA -> collectExternal(method, packageName, destination, isCancelled)
            AppBackupPart.MEDIA -> collectMedia(method, packageName, destination, isCancelled)
        }
        val files = when (result) {
            is com.bare.capability.RootCopyResult.Failed -> error(result.reason)
            is com.bare.capability.RootCopyResult.Success -> result.files
            is com.bare.capability.NonRootCopyResult.Failed -> error(result.reason)
            is com.bare.capability.NonRootCopyResult.Success -> result.files
            else -> error("Unsupported backup copy result: ${result::class.java.name}")
        }
        val bytes = files.sumOf { it.length().coerceAtLeast(0L) }
        onProgress(bytes, bytes)
        return bytes
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

    private fun elapsedMillis(startNanos: Long): Long =
        ((System.nanoTime() - startNanos) / 1_000_000L).coerceAtLeast(0L)

    private fun formatDuration(millis: Long): String =
        if (millis < 1000L) "${millis} ms" else String.format("%.1f s", millis / 1000.0)

    private class PartProgressReporter(
        private val part: AppBackupPart,
        private val onProgress: (AppBackupProgress) -> Unit,
        private val defaultStartNanos: Long,
    ) {
        private var lastReportNanos = 0L
        private var lastReportBytes = -1L

        fun report(
            phase: String,
            processed: Long,
            total: Long,
            startNanos: Long = defaultStartNanos,
        ) {
            val now = System.nanoTime()
            val force = total > 0L && processed >= total
            if (!force &&
                lastReportNanos != 0L &&
                now - lastReportNanos < 500_000_000L &&
                processed - lastReportBytes < 1_048_576L
            ) return

            val elapsed = ((now - startNanos) / 1_000_000L).coerceAtLeast(0L)
            val rate = if (elapsed > 0L) processed * 1000L / elapsed else null
            val rateText = rate?.let { " (${formatBytes(it)}/s)" } ?: ""
            val totalText = if (total > 0L) formatBytes(total) else "unknown"
            onProgress(
                AppBackupProgress(
                    stage = AppBackupProgressStage.PART_PROGRESS,
                    part = part,
                    message = "$phase: ${formatBytes(processed)} / $totalText$rateText",
                    processedBytes = processed,
                    totalBytes = total,
                    elapsedMillis = elapsed,
                    bytesPerSecond = rate,
                ),
            )
            lastReportNanos = now
            lastReportBytes = processed
        }

        fun finish(
            message: String,
            processed: Long,
            total: Long,
            elapsed: Long,
        ) {
            val rate = if (elapsed > 0L) processed * 1000L / elapsed else null
            onProgress(
                AppBackupProgress(
                    stage = AppBackupProgressStage.PART_PROGRESS,
                    part = part,
                    message = message,
                    processedBytes = processed,
                    totalBytes = total,
                    elapsedMillis = elapsed,
                    bytesPerSecond = rate,
                ),
            )
            lastReportNanos = System.nanoTime()
            lastReportBytes = processed
        }

        companion object {
            private fun formatBytes(bytes: Long): String {
                if (bytes < 1024L) return "$bytes B"
                val units = arrayOf("KB", "MB", "GB")
                var value = bytes.toDouble()
                var index = 0
                while (value >= 1024.0 && index < units.lastIndex) {
                    value /= 1024.0
                    index++
                }
                return if (value >= 100.0) String.format("%.0f %s", value, units[index])
                else String.format("%.1f %s", value, units[index])
            }
        }
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
