package com.bare.feature.apps

import android.content.Context
import android.os.Environment
import com.bare.app.AccessMethod
import com.bare.app.LocalIdentityStore
import com.bare.capability.RootCapabilityProvider
import com.bare.storage.BackupStorageBehavior
import java.io.File
import java.util.concurrent.TimeUnit

data class AppRestoreRequest(
    val packageName: String,
    val versionCode: Long,
    val parts: Set<AppBackupPart>,
    val accessMethod: AccessMethod? = null,
    val password: CharArray? = null,
)

data class AppRestoreResult(
    val completedParts: Set<AppBackupPart>,
    val skippedParts: Set<AppBackupPart> = emptySet(),
    val failedParts: Map<AppBackupPart, String> = emptyMap(),
)

sealed interface AppRestoreOutcome {
    data class Completed(val result: AppRestoreResult) : AppRestoreOutcome
    data class PendingUserAction(val message: String) : AppRestoreOutcome
    data class Failed(val reason: String) : AppRestoreOutcome
}

class AppRestoreBehavior(private val context: Context) {
    private val identityStore = LocalIdentityStore(context)
    private val storage = BackupStorageBehavior(context)
    private val root = RootCapabilityProvider()
    private val reader = AppRestoreArchiveReader(context)

    fun restore(
        request: AppRestoreRequest,
        onProgress: (AppBackupProgress) -> Unit = {},
        isCancelled: () -> Boolean = { false },
    ): AppRestoreOutcome {
        if (request.parts.isEmpty()) return AppRestoreOutcome.Failed("At least one restore part is required")
        val identity = identityStore.load() ?: return AppRestoreOutcome.Failed("Backup identity is unavailable")
        val directory = File(
            storage.internalStorage(identity.identityId).path,
            "apps/${request.packageName}/${request.versionCode}",
        )
        val metadata = AppBackupMetadata.read(directory)
            ?: return AppRestoreOutcome.Failed("Backup metadata is unavailable")
        if (metadata.packageName != request.packageName) {
            return AppRestoreOutcome.Failed("Backup package does not match target package")
        }

        val method = request.accessMethod
            ?: LocalIdentityStore(context).loadAccessMethod()
            ?: AccessMethod.ROOT

        if (method == AccessMethod.NON_ROOT && request.parts.any { it == AppBackupPart.DATA }) {
            return AppRestoreOutcome.Failed("Private app data restore requires root access")
        }

        val completed = linkedSetOf<AppBackupPart>()
        val skipped = linkedSetOf<AppBackupPart>()
        val failed = linkedMapOf<AppBackupPart, String>()
        val staging = File(context.cacheDir, "restore/${System.currentTimeMillis()}").also {
            check(it.mkdirs()) { "Unable to create restore staging directory" }
        }

        return try {
            for (part in request.parts) {
                if (isCancelled()) return AppRestoreOutcome.Failed("Restore cancelled")
                val artifact = metadata.artifacts.firstOrNull { it.part == part.name }
                    ?: run {
                        failed[part] = part.name + " backup artifact is missing"
                        onProgress(AppBackupProgress(AppBackupProgressStage.PART_FAILED, part, failed[part]!!))
                        continue
                    }

                onProgress(AppBackupProgress(AppBackupProgressStage.PART_STARTED, part, "Inspecting " + part.name + " backup"))

                if (shouldSkipRestore(part, metadata, artifact, request.packageName, method)) {
                    skipped += part
                    onProgress(AppBackupProgress(AppBackupProgressStage.PART_COMPLETED, part, part.name + " restore skipped: target is unchanged"))
                    continue
                }

                val source = File(directory, artifact.fileName)
                if (!source.isFile) {
                    failed[part] = "Backup artifact is missing: " + artifact.fileName
                    onProgress(AppBackupProgress(AppBackupProgressStage.PART_FAILED, part, failed[part]!!))
                    continue
                }

                try {
                    val partStartedAt = System.nanoTime()
                    val partStage = File(staging, part.directoryName()).also {
                        it.deleteRecursively()
                        it.mkdirs()
                    }
                    reader.extract(
                        archive = source,
                        destination = partStage,
                        expectedSha256 = artifact.sha256,
                        password = request.password?.copyOf(),
                        part = part,
                    ) { processed, total ->
                        val elapsed = ((System.nanoTime() - partStartedAt) / 1_000_000L).coerceAtLeast(0L)
                        val rate = if (elapsed > 0L) processed * 1000L / elapsed else null
                        onProgress(AppBackupProgress(
                            AppBackupProgressStage.PART_PROGRESS,
                            part,
                            "Extracting " + part.name,
                            processed,
                            total,
                            elapsed,
                            rate,
                        ))
                    }

                    when (part) {
                        AppBackupPart.APK -> {
                            when (val install = restoreApks(partStage, method, request.packageName, isCancelled)) {
                                is AppRestoreOutcome.PendingUserAction -> return install
                                else -> Unit
                            }
                        }
                        AppBackupPart.DATA -> restoreData(partStage, request.packageName, isCancelled)
                        AppBackupPart.EXTERNAL_DATA -> restoreExternal(partStage, request.packageName, method, isCancelled)
                        AppBackupPart.MEDIA -> restoreMedia(partStage, request.packageName, method, isCancelled)
                    }
                    onProgress(AppBackupProgress(AppBackupProgressStage.PART_PROGRESS, part, "Verifying " + part.name + " restore"))
                    verifyRestoredPart(part, request.packageName)
                    completed += part
                    onProgress(AppBackupProgress(AppBackupProgressStage.PART_COMPLETED, part, part.name + " restore completed"))
                } catch (t: Throwable) {
                    failed[part] = t.message ?: t::class.java.simpleName
                    onProgress(AppBackupProgress(AppBackupProgressStage.PART_FAILED, part, part.name + " restore failed: " + failed[part]!!))
                }
            }
            onProgress(AppBackupProgress(
                AppBackupProgressStage.COMPLETED,
                message = "Restore completed: " + (completed.size + skipped.size) + "/" + request.parts.size +
                    " parts" + if (failed.isEmpty()) "" else " (" + failed.size + " failed)",
            ))
            AppRestoreOutcome.Completed(AppRestoreResult(completed, skipped, failed))
        } catch (t: Throwable) {
            onProgress(AppBackupProgress(
                AppBackupProgressStage.PART_FAILED,
                message = "Restore failed: ${t.message ?: t::class.java.simpleName}",
            ))
            AppRestoreOutcome.Failed(t.message ?: t::class.java.simpleName)
        } finally {
            staging.deleteRecursively()
        }
    }

    private fun shouldSkipRestore(
        part: AppBackupPart,
        metadata: AppBackupMetadata,
        artifact: AppBackupArtifactMetadata,
        packageName: String,
        method: AccessMethod,
    ): Boolean {
        if (part == AppBackupPart.APK) {
            val installed = runCatching { context.packageManager.getPackageInfo(packageName, 0) }.getOrNull()
                ?: return false
            val installedVersion = if (android.os.Build.VERSION.SDK_INT >= 28) installed.longVersionCode else @Suppress("DEPRECATION") installed.versionCode.toLong()
            if (installedVersion > metadata.versionCode) return true
            val info = installed.applicationInfo ?: return false
            val apkSize = buildList {
                add(info.sourceDir)
                info.splitSourceDirs?.let(::addAll)
            }.sumOf { File(it).length().coerceAtLeast(0L) }
            return metadata.apkSizeBytes != null &&
                metadata.hasSplitApks != null &&
                metadata.hasSharedLibraries != null &&
                metadata.apkSizeBytes == apkSize &&
                metadata.versionCode == installedVersion &&
                metadata.versionName == installed.versionName &&
                metadata.hasSplitApks == !info.splitSourceDirs.isNullOrEmpty() &&
                metadata.hasSharedLibraries == !info.sharedLibraryFiles.isNullOrEmpty()
        }

        val expectedSize = artifact.sourceByteSize ?: return false
        val expectedModified = artifact.sourceModifiedAt ?: return false
        val target = targetPath(packageName, part)
        val state = if (method == AccessMethod.ROOT) {
            AppBackupPartStateReader.root(root, target.absolutePath)
        } else {
            AppBackupPartStateReader.local(target)
        }
        return AppBackupPartState(expectedSize, expectedModified).matches(state)
    }

    private fun targetPath(packageName: String, part: AppBackupPart): File = when (part) {
        AppBackupPart.APK -> File(context.cacheDir, "unused")
        AppBackupPart.DATA -> File(context.packageManager.getApplicationInfo(packageName, 0).dataDir)
        AppBackupPart.EXTERNAL_DATA -> File(Environment.getExternalStorageDirectory(), "Android/data/" + packageName)
        AppBackupPart.MEDIA -> File(Environment.getExternalStorageDirectory(), "Android/media/" + packageName)
    }

    private fun restoreApks(stage: File, method: AccessMethod, packageName: String, isCancelled: () -> Boolean): AppRestoreOutcome? {
        val apks = stage.walkTopDown().filter { it.isFile && it.extension.equals("apk", true) }.sortedBy { it.name }.toList()
        require(apks.isNotEmpty()) { "No APK payload was found" }
        if (method == AccessMethod.ROOT) {
            val create = runSu("pm install-create -r -d")
            require(create.exitCode == 0) { "Root APK install session creation failed: ${create.output}" }
            val sessionId = Regex("""[0-9]+""").find(create.output)?.value
                ?: error("Root APK install session id was not returned")
            try {
                apks.forEachIndexed { index, apk ->
                    if (isCancelled()) error("Restore cancelled")
                    val splitName = if (index == 0) "base.apk" else apk.name
                    val write = runSu(
                        "pm install-write -S ${apk.length()} ${sessionId} ${shellQuote(splitName)} ${shellQuote(apk.absolutePath)}"
                    )
                    require(write.exitCode == 0) {
                        "Root APK install write failed: ${write.output}"
                    }
                }
                val commit = runSu("pm install-commit ${sessionId}")
                require(commit.exitCode == 0 && commit.output.contains("Success", true)) {
                    "Root APK install commit failed: ${commit.output}"
                }
            } catch (t: Throwable) {
                runSu("pm install-abandon ${sessionId}")
                throw t
            }
            return null
        } else {
            // Non-root keeps the reference logical flow but delegates final installation
            // to Android's package installer, which owns the privileged mutation boundary.
            val shareDir = File(context.cacheDir, "apk-share").also { it.mkdirs() }
            val installApk = File(shareDir, "restore-${System.currentTimeMillis()}.apk")
            apks.first().copyTo(installApk, overwrite = true)
            val intent = android.content.Intent(android.content.Intent.ACTION_VIEW).apply {
                setDataAndType(
                    androidx.core.content.FileProvider.getUriForFile(
                        context,
                        "com.bare.fileprovider",
                        installApk,
                    ),
                    "application/vnd.android.package-archive",
                )
                addFlags(android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION or android.content.Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(intent)
            return AppRestoreOutcome.PendingUserAction("Android package installer confirmation is required")
        }
    }

    private fun restoreData(stage: File, packageName: String, isCancelled: () -> Boolean) {
        val target = context.packageManager.getApplicationInfo(packageName, 0).dataDir
        require(rootAvailable()) { "Root access is required for private data restore" }
        runSuChecked("am force-stop ${shellQuote(packageName)}")
        runSuChecked("rm -rf ${shellQuote(target)}/*")
        runSuChecked("cp -a ${shellQuote(stage.absolutePath)}/. ${shellQuote(target)}/")
        runSuChecked("chown -R $(stat -c %u ${shellQuote(target)}):$(stat -c %g ${shellQuote(target)}) ${shellQuote(target)}")
    }

    private fun restoreExternal(stage: File, packageName: String, method: AccessMethod, isCancelled: () -> Boolean) {
        val target = File(Environment.getExternalStorageDirectory(), "Android/data/$packageName")
        if (method == AccessMethod.NON_ROOT) {
            if (!target.exists() && !target.mkdirs()) error("External app data target is unavailable")
            stage.copyRecursively(target, overwrite = true)
        } else {
            runSuChecked("mkdir -p ${shellQuote(target.absolutePath)}")
            runSuChecked("cp -a ${shellQuote(stage.absolutePath)}/. ${shellQuote(target.absolutePath)}/")
        }
    }

    private fun restoreMedia(stage: File, packageName: String, method: AccessMethod, isCancelled: () -> Boolean) {
        val target = File(Environment.getExternalStorageDirectory(), "Android/media/$packageName")
        if (method == AccessMethod.NON_ROOT) {
            if (!target.exists() && !target.mkdirs()) error("Media target is unavailable")
            stage.copyRecursively(target, overwrite = true)
        } else {
            runSuChecked("mkdir -p ${shellQuote(target.absolutePath)}")
            runSuChecked("cp -a ${shellQuote(stage.absolutePath)}/. ${shellQuote(target.absolutePath)}/")
        }
    }

    private fun verifyRestoredPart(part: AppBackupPart, packageName: String) {
        when (part) {
            AppBackupPart.APK -> {
                val installed = runCatching {
                    context.packageManager.getApplicationInfo(packageName, 0)
                }.getOrNull()
                require(installed != null) { "Restored APK is not installed" }
            }
            AppBackupPart.DATA -> {
                val target = context.packageManager.getApplicationInfo(packageName, 0).dataDir
                require(rootAvailable() && runSu("test -d ${shellQuote(target)}").exitCode == 0) {
                    "Restored data directory could not be verified"
                }
            }
            AppBackupPart.EXTERNAL_DATA -> {
                val target = File(Environment.getExternalStorageDirectory(), "Android/data/$packageName")
                require(target.exists()) { "Restored external data target could not be verified" }
            }
            AppBackupPart.MEDIA -> {
                val target = File(Environment.getExternalStorageDirectory(), "Android/media/$packageName")
                require(target.exists()) { "Restored media target could not be verified" }
            }
        }
    }

    private fun rootAvailable(): Boolean = runSu("id -u").output.trim() == "0"

    private data class ShellResult(val exitCode: Int, val output: String)

    private fun runSu(command: String): ShellResult {
        val process = ProcessBuilder("su", "--mount-master", "-c", command).redirectErrorStream(true).start()
        val completed = process.waitFor(60, TimeUnit.SECONDS)
        if (!completed) {
            process.destroyForcibly()
            return ShellResult(-1, "Root command timed out")
        }
        return ShellResult(process.exitValue(), process.inputStream.bufferedReader().use { it.readText() })
    }

    private fun runSuChecked(command: String) {
        val result = runSu(command)
        require(result.exitCode == 0) { result.output.ifBlank { "Root command failed" } }
    }

    private fun shellQuote(value: String): String =
        "'" + value.replace("'", "'\\''") + "'"

    private fun formatBytes(bytes: Long): String {
        if (bytes < 1024) return "${bytes} B"
        val units = arrayOf("KB", "MB", "GB", "TB")
        var value = bytes.toDouble()
        var index = 0
        while (value >= 1024 && index < units.lastIndex) {
            value /= 1024
            index++
        }
        return if (value >= 100) String.format("%.0f %s", value, units[index])
        else String.format("%.1f %s", value, units[index])
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
}
