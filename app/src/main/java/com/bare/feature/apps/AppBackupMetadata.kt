package com.bare.feature.apps

import org.json.JSONArray
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
    val artifacts: List<AppBackupArtifactMetadata> = emptyList(),
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
            .put("artifacts", JSONArray().apply {
                artifacts.forEach { artifact ->
                    put(JSONObject()
                        .put("part", artifact.part)
                        .put("fileName", artifact.fileName)
                        .put("byteSize", artifact.byteSize)
                        .put("sha256", artifact.sha256)
                        .put("encryption", artifact.encryption)
                    )
                }
            })
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
                    versionName = json.opt("versionName")?.takeUnless { it == JSONObject.NULL }?.toString()?.takeUnless { it.isBlank() || it == "null" },
                    backupTime = json.getLong("backupTime"),
                    installerPackage = json.opt("installerPackage")?.takeUnless { it == JSONObject.NULL }?.toString()?.takeUnless { it.isBlank() || it == "null" },
                    protectedBackup = json.optBoolean("protectedBackup", false),
                    note = json.opt("note")?.takeUnless { it == JSONObject.NULL }?.toString()?.takeUnless { it.isBlank() || it == "null" },
                    artifacts = json.optJSONArray("artifacts")?.let { array ->
                        buildList {
                            for (index in 0 until array.length()) {
                                val item = array.optJSONObject(index) ?: continue
                                add(AppBackupArtifactMetadata(
                                    part = item.optString("part"),
                                    fileName = item.optString("fileName"),
                                    byteSize = item.optLong("byteSize", 0L),
                                    sha256 = item.optString("sha256"),
                                    encryption = item.optString("encryption"),
                                ))
                            }
                        }
                    }.orEmpty(),
                )
            }.getOrNull()
        }
    }
}
\n\ndata class AppBackupArtifactMetadata(\n    val part: String,\n    val fileName: String,\n    val byteSize: Long,\n    val sha256: String,\n    val encryption: String,\n)\n