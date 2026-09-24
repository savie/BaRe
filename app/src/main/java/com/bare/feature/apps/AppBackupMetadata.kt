package com.bare.feature.apps

import org.json.JSONObject
import java.io.File

/**
 * Canonical BaRe-local metadata for one committed app backup.
 *
 * This is intentionally BaRe-native. The Swift Backup metadata format is
 * reference evidence only and is not copied into the implementation.
 */
data class AppBackupMetadata(
    val schemaVersion: Int = 1,
    val packageName: String,
    val versionCode: Long,
    val versionName: String?,
    val backupTime: Long,
    val installerPackage: String?,
    val protectedBackup: Boolean = false,
    val note: String? = null,
) {
    fun hasNote(): Boolean = !note.isNullOrBlank()

    fun writeAtomically(directory: File) {
        val target = File(directory, FILE_NAME)
        val staging = File(directory, ".${FILE_NAME}.partial")
        val json = JSONObject()
            .put("schemaVersion", schemaVersion)
            .put("packageName", packageName)
            .put("versionCode", versionCode)
            .put("versionName", versionName ?: JSONObject.NULL)
            .put("backupTime", backupTime)
            .put("installerPackage", installerPackage ?: JSONObject.NULL)
            .put("protectedBackup", protectedBackup)
            .put("note", note ?: JSONObject.NULL)
        staging.writeText(json.toString())
        check(staging.renameTo(target)) { "Unable to commit backup metadata" }
    }

    companion object {
        const val FILE_NAME = "metadata.json"

        fun read(directory: File): AppBackupMetadata? {
            val file = File(directory, FILE_NAME)
            if (!file.isFile) return null
            return runCatching {
                val json = JSONObject(file.readText())
                AppBackupMetadata(
                    schemaVersion = json.optInt("schemaVersion", 1),
                    packageName = json.getString("packageName"),
                    versionCode = json.getLong("versionCode"),
                    versionName = json.optString("versionName").takeUnless { it.isBlank() },
                    backupTime = json.getLong("backupTime"),
                    installerPackage = json.optString("installerPackage").takeUnless { it.isBlank() },
                    protectedBackup = json.optBoolean("protectedBackup", false),
                    note = json.optString("note").takeUnless { it.isBlank() },
                )
            }.getOrNull()
        }
    }
}
