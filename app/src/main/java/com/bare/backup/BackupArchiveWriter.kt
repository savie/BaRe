package com.bare.backup

import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.security.MessageDigest
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
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
            check(verifyArchive(destination)) { "Backup archive integrity verification failed" }
            BackupResult.Success(
                BackupArtifact(
                    archive = destination,
                    packageName = discovered.packageName,
                    sha256 = Sha256.file(destination),
                    sizeBytes = destination.length(),
                    verified = true,
                ),
            )
        }.getOrElse {
            staging.delete()
            destination.delete()
            BackupResult.Failed("Backup archive creation failed.", it)
        }
    }

    internal fun verifyArchive(file: File): Boolean = runCatching {
        ZipFile(file).use { zip ->
            val manifest = zip.getEntry("manifest.json") ?: return false
            val integrity = zip.getEntry("integrity.json") ?: return false
            val manifestJson = zip.getInputStream(manifest).use { input ->
                JSONObject(input.bufferedReader(Charsets.UTF_8).readText())
            }
            val integrityJson = zip.getInputStream(integrity).use { input ->
                JSONObject(input.bufferedReader(Charsets.UTF_8).readText())
            }
            val components = manifestJson.optJSONArray("components") ?: return false
            if (components.length() != integrityJson.length()) return false

            for (index in 0 until components.length()) {
                val name = components.getString(index)
                val expected = integrityJson.optString(name, "")
                if (expected.isBlank()) return false
                val entry = zip.getEntry(name) ?: return false
                val actual = sha256(zip, entry)
                if (!expected.equals(actual, ignoreCase = true)) return false
            }
            zip.getEntry("apk/base.apk") != null
        }
    }.getOrDefault(false)

    private fun sha256(zip: ZipFile, entry: ZipEntry): String {
        val digest = MessageDigest.getInstance("SHA-256")
        zip.getInputStream(entry).use { input ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                digest.update(buffer, 0, read)
            }
        }
        return digest.digest().joinToString("") { byte ->
            "%02x".format(byte.toInt() and 0xff)
        }
    }

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
