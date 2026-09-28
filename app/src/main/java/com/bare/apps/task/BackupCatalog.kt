package com.bare.apps.task

import android.content.Context
import com.bare.apps.model.AppPart
import java.io.File

data class LocalBackupRecord(
    val packageName: String,
    val backupId: String,
    val date: Long,
    val parts: Set<AppPart>
)

class BackupCatalog(context: Context) {
    private val root = File(context.filesDir, "apps-backups").apply { mkdirs() }

    fun create(packageName: String): File {
        val packageRoot = File(root, packageName).apply { mkdirs() }
        var id = System.currentTimeMillis()
        var dir = File(packageRoot, id.toString())
        while (dir.exists()) {
            id += 1
            dir = File(packageRoot, id.toString())
        }
        dir.mkdirs()
        return dir
    }

    fun list(packageName: String): List<LocalBackupRecord> {
        return File(root, packageName)
            .listFiles()
            ?.filter { it.isDirectory }
            ?.mapNotNull { dir ->
                val parts = dir.listFiles()
                    ?.mapNotNull { file ->
                        runCatching {
                            if (file.name == "base.apk") {
                                AppPart.APP
                            } else {
                                AppPart.valueOf(
                                    file.name.substringBeforeLast(".").uppercase()
                                )
                            }
                        }.getOrNull()
                    }
                    .orEmpty()
                    .toSet()

                LocalBackupRecord(
                    packageName = packageName,
                    backupId = dir.name,
                    date = dir.name.toLongOrNull() ?: 0L,
                    parts = parts
                )
            }
            ?.sortedByDescending { it.date }
            .orEmpty()
    }

    fun latest(packageName: String): LocalBackupRecord? =
        list(packageName).firstOrNull()

    fun delete(packageName: String, backupId: String): Boolean {
        val dir = File(root, packageName).resolve(backupId)
        if (!dir.isDirectory) return false
        return runCatching { dir.deleteRecursively() }.getOrDefault(false)
    }
}
