package com.bare.apps.task

import android.content.Context
import com.bare.apps.R
import com.bare.apps.domain.AppsCapability
import com.bare.apps.model.*
import com.bare.apps.settings.AppBackupLimitsStore
import java.io.File

class AppBackupManager(private val context: Context) {
    private val root = File(context.filesDir, "apps-backups").apply { mkdirs() }
    private val catalog = BackupCatalog(context)
    private val limits = AppBackupLimitsStore(context)
    private val privileged = PrivilegedCommandExecutor(context)
    private val specialDataManager = AppSpecialDataManager(
        context,
        SsaidHelper(context, privileged)
    )

    fun backup(request: BackupRequest, onProgress: (Long) -> Unit = {}): LocalMetadata {
        require(request.locations.all { it == BackupLocation.LOCAL }) {
            context.getString(R.string.apps_backup_cloud_unavailable)
        }

        val app = request.app
        request.parts.forEach { part ->
            require(AppsCapability.isPossible(part)) {
                context.getString(R.string.apps_backup_capability_unavailable, part.id)
            }
            val estimated = sourcesFor(app, part).sumOf(::sizeOf)
            require(!limits.exceeds(part, estimated, false)) {
                context.getString(R.string.apps_backup_limit_exceeded, part.id)
            }
        }

        val backupDir = catalog.create(app.packageName)
        val metadata = app.localMetadata ?: LocalMetadata(
            app.packageName,
            app.name,
            app.versionCode,
            app.versionName.orEmpty(),
            app.installerPackage
        )
        metadata.dateBackup = System.currentTimeMillis()
        metadata.dateBackupUpdated = metadata.dateBackup

        request.parts.forEach { part ->
            val sources = sourcesFor(app, part)
            if (sources.isEmpty()) return@forEach

            val target = if (part == AppPart.APP) {
                File(backupDir, "base.apk")
            } else {
                File(backupDir, part.id.lowercase() + ".zip")
            }
            target.parentFile?.mkdirs()

            if (part == AppPart.APP) {
                val source = sources.singleOrNull() ?: return@forEach
                if (!source.exists()) return@forEach
                source.inputStream().use { input ->
                    target.outputStream().use { output -> input.copyTo(output) }
                }
                onProgress(target.length())
            } else {
                val staging = File(
                    context.cacheDir,
                    "apps-backup-stage-" + System.nanoTime()
                ).apply { mkdirs() }

                try {
                    val payload = File(staging, "payload")
                    val staged = when (part) {
                        AppPart.SPLITS -> stageApkSet(sources, File(payload, "splits"))
                        AppPart.SHARED_LIBS -> stageApkSet(sources, File(payload, "shared-libs"))
                        else -> {
                            if (!stageForArchive(sources.singleOrNull() ?: return@forEach, payload)) {
                                false
                            } else if (part == AppPart.DATA && app.deDataDir != null) {
                                val de = File(app.deDataDir!!)
                                !de.exists() || stageForArchive(de, File(staging, "payload_de"))
                            } else {
                                true
                            }
                        }
                    }
                    if (!staged) {
                        throw IllegalStateException(
                            context.getString(R.string.apps_backup_stage_failed, part.id)
                        )
                    }
                    ArchiveEngine.pack(staging, target, onProgress)
                } finally {
                    staging.deleteRecursively()
                }
            }
            metadata.updatePart(part, target.length())
        }

        metadata.specialData = specialDataManager.capture(app.packageName)
        saveMetadata(metadata, backupDir)
        app.localMetadata = metadata
        return metadata
    }

    private fun stageApkSet(sources: List<File>, target: File): Boolean {
        target.mkdirs()
        var copied = 0
        sources.forEach { source ->
            if (!source.exists() || !source.isFile) return@forEach
            val out = File(target, source.name)
            out.parentFile?.mkdirs()
            source.inputStream().use { input ->
                out.outputStream().use { output -> input.copyTo(output) }
            }
            copied++
        }
        return copied == sources.count { it.exists() && it.isFile }
    }

    private fun stageForArchive(source: File, target: File): Boolean {
        val readable = runCatching { source.listFiles() != null }.getOrDefault(false)
        if (readable) {
            target.mkdirs()
            source.walkTopDown().filter { it.isFile }.forEach { file ->
                val rel = source.toPath().relativize(file.toPath()).toString()
                val out = File(target, rel)
                out.parentFile?.mkdirs()
                file.inputStream().use { input ->
                    out.outputStream().use { output -> input.copyTo(output) }
                }
            }
            return true
        }
        target.mkdirs()
        return privileged.run(
            "cp -a '" + source.absolutePath + "/.' '" + target.absolutePath + "/'"
        ).code == 0
    }

    private fun sourcesFor(app: CanonicalApp, part: AppPart): List<File> = when (part) {
        AppPart.APP -> listOfNotNull(app.sourceDir?.let(::File))
        AppPart.SPLITS -> app.splitSourceDirs.map(::File)
        AppPart.SHARED_LIBS -> app.sharedLibSourceDirs.map(::File)
        AppPart.DATA -> listOfNotNull(app.dataDir?.let(::File))
        AppPart.EXTDATA -> listOfNotNull(app.externalDataDir?.let(::File))
        AppPart.EXPANSION -> listOfNotNull(app.expansionDir?.let(::File))
        AppPart.MEDIA -> listOfNotNull(app.mediaDir?.let(::File))
    }

    private fun sizeOf(file: File): Long =
        if (file.isFile) file.length()
        else file.walkTopDown().filter { it.isFile }.sumOf { it.length() }

    fun artifact(app: CanonicalApp, part: AppPart, backupId: String? = null): File? {
        val record = backupId?.let { id ->
            catalog.list(app.packageName).firstOrNull { it.backupId == id }
        } ?: catalog.latest(app.packageName) ?: return null
        val dir = File(root, app.packageName).resolve(record.backupId)
        return if (part == AppPart.APP) {
            File(dir, "base.apk").takeIf { it.exists() }
        } else {
            File(dir, part.id.lowercase() + ".zip").takeIf { it.exists() }
        }
    }

    private fun saveMetadata(m: LocalMetadata, backupDir: File) {
        val f = File(backupDir, "metadata.properties")
        f.parentFile?.mkdirs()
        f.writeText(
            "packageName=" + m.packageName + "\n" +
                "name=" + m.name + "\n" +
                "versionCode=" + m.versionCode + "\n" +
                "versionName=" + m.versionName + "\n" +
                "dateBackup=" + (m.dateBackup ?: 0) + "\n" +
                "dateBackupUpdated=" + (m.dateBackupUpdated ?: 0) + "\n" +
                "note=" + (m.note ?: "") + "\n" +
                "protectedBackup=" + m.protectedBackup + "\n" +
                "specialDataVersion=" + (m.specialData?.version ?: 1) + "\n" +
                "permissionStatesCsv=" + (m.specialData?.permissionStatesCsv ?: "") + "\n" +
                "ssaid=" + (m.specialData?.ssaid ?: "") + "\n" +
                "ntfAccessComponent=" + (m.specialData?.ntfAccessComponent ?: "") + "\n" +
                "accessibilityComponent=" + (m.specialData?.accessibilityComponent ?: "") + "\n" +
                "notificationPolicyXml=" + (m.specialData?.notificationPolicyXml ?: "") + "\n" +
                "parts=" + m.backupParts.joinToString(",") { it.id }
        )
    }
}
