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
    val schemaVersion: Int = 2,
    val packageName: String,
    val versionCode: Long,
    val versionName: String?,
    val apkSizeBytes: Long? = null,
    val hasSplitApks: Boolean? = null,
    val hasSharedLibraries: Boolean? = null,
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
            .put("apkSizeBytes", apkSizeBytes ?: JSONObject.NULL)
            .put("hasSplitApks", hasSplitApks ?: JSONObject.NULL)
            .put("hasSharedLibraries", hasSharedLibraries ?: JSONObject.NULL)
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
                        .put("sourceByteSize", artifact.sourceByteSize ?: JSONObject.NULL)
                        .put("sourceModifiedAt", artifact.sourceModifiedAt ?: JSONObject.NULL)
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
            return parse(file.readText())
        }

        fun parse(text: String): AppBackupMetadata? = runCatching {
            val json = JSONObject(text)
            AppBackupMetadata(
                schemaVersion = json.optInt("schemaVersion", 1),
                packageName = json.getString("packageName"),
                versionCode = json.getLong("versionCode"),
                versionName = json.opt("versionName")?.takeUnless { it == JSONObject.NULL }?.toString()?.takeUnless { it.isBlank() || it == "null" },
                apkSizeBytes = json.opt("apkSizeBytes").takeUnless { it == JSONObject.NULL }?.let { json.optLong("apkSizeBytes") },
                hasSplitApks = json.opt("hasSplitApks").takeUnless { it == JSONObject.NULL }?.let { json.optBoolean("hasSplitApks") },
                hasSharedLibraries = json.opt("hasSharedLibraries").takeUnless { it == JSONObject.NULL }?.let { json.optBoolean("hasSharedLibraries") },
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
                                sourceByteSize = item.opt("sourceByteSize").takeUnless { it == JSONObject.NULL }?.let { item.optLong("sourceByteSize") },
                                sourceModifiedAt = item.opt("sourceModifiedAt").takeUnless { it == JSONObject.NULL }?.let { item.optLong("sourceModifiedAt") },
                            ))
                        }
                    }
                }.orEmpty(),
            )
        }.getOrNull()
    }
}


data class AppBackupArtifactMetadata(
    val part: String,
    val fileName: String,
    val byteSize: Long,
    val sha256: String,
    val encryption: String,
    val sourceByteSize: Long? = null,
    val sourceModifiedAt: Long? = null,
)
