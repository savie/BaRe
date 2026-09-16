package com.bare.backup

import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class BackupArchiveWriter {
    fun write(destination: File, discovered: DiscoveredPackage, plan: BackupPlan): BackupResult {
        if (destination.exists()) return BackupResult.Rejected("Destination already exists: ${destination.name}")
        val source = File(discovered.sourceApk)
        if (!source.isFile || !source.canRead()) return BackupResult.Rejected("Source APK is not readable.")

        val parent = destination.parentFile ?: return BackupResult.Failed("Missing destination parent")
        if (!parent.exists() && !parent.mkdirs()) return BackupResult.Failed("Unable to create destination parent")
        val staging = File(parent, ".${destination.name}.partial")

        return runCatching {
            staging.delete()
            ZipOutputStream(FileOutputStream(staging)).use { zip ->
                val files = buildList {
                    add("apk/base.apk" to source)
                    if (plan.includeSplits) {
                        discovered.splitApks.forEach { path ->
                            val split = File(path)
                            if (split.isFile && split.canRead()) add("apk/${split.name}" to split)
                        }
                    }
                }
                val manifest = JSONObject()
                    .put("formatVersion", 1)
                    .put("packageName", discovered.packageName)
                    .put("label", discovered.label)
                    .put("versionName", discovered.versionName)
                    .put("versionCode", discovered.versionCode)
                    .put("privilegeMode", plan.privilegeMode.name)
                    .put("includeSplits", plan.includeSplits)
                    .put("includeAppData", plan.includeAppData)
                    .put("components", JSONArray(files.map { it.first }))
                putText(zip, "manifest.json", manifest.toString(2))

                val hashes = JSONObject()
                files.forEach { (entryName, file) ->
                    putFile(zip, entryName, file)
                    hashes.put(entryName, Sha256.file(file))
                }
                putText(zip, "integrity.json", hashes.toString(2))
            }
            check(staging.renameTo(destination)) { "Atomic archive commit failed" }
            val verified = verifyArchive(destination)
            BackupResult.Success(
                BackupArtifact(
                    archive = destination,
                    packageName = discovered.packageName,
                    sha256 = Sha256.file(destination),
                    sizeBytes = destination.length(),
                    verified = verified,
                ),
            )
        }.getOrElse {
            staging.delete()
            BackupResult.Failed("Backup archive creation failed.", it)
        }
    }

    private fun verifyArchive(file: File): Boolean = runCatching {
        java.util.zip.ZipFile(file).use { zip ->
            zip.getEntry("manifest.json") != null && zip.getEntry("integrity.json") != null &&
                zip.getEntry("apk/base.apk") != null
        }
    }.getOrDefault(false)

    private fun putText(zip: ZipOutputStream, name: String, text: String) {
        zip.putNextEntry(ZipEntry(name))
        zip.write(text.toByteArray(Charsets.UTF_8))
        zip.closeEntry()
    }

    private fun putFile(zip: ZipOutputStream, name: String, source: File) {
        zip.putNextEntry(ZipEntry(name))
        FileInputStream(source).use { input -> input.copyTo(zip) }
        zip.closeEntry()
    }
}
