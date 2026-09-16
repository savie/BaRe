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
                    hashes.put(entryName, putFile(zip, entryName, file))
                }
                putText(zip, "integrity.json", hashes.toString(2))
            }
            check(staging.renameTo(destination)) { "Atomic archive commit failed" }
            val verification = verifyArchiveDetailed(destination)
            check(verification.isValid) { verification.reason }
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
            BackupResult.Failed("Backup archive creation failed: ${it.message ?: it::class.java.simpleName}", it)
        }
    }

    internal fun verifyArchive(file: File): Boolean = verifyArchiveDetailed(file).isValid

    private fun verifyArchiveDetailed(file: File): VerificationResult = runCatching {
        ZipFile(file).use { zip ->
            val manifest = zip.getEntry("manifest.json")
                ?: return VerificationResult(false, "Missing manifest.json")
            val integrity = zip.getEntry("integrity.json")
                ?: return VerificationResult(false, "Missing integrity.json")
            val manifestJson = zip.getInputStream(manifest).use { input ->
                JSONObject(input.bufferedReader(Charsets.UTF_8).readText())
            }
            val integrityJson = zip.getInputStream(integrity).use { input ->
                JSONObject(input.bufferedReader(Charsets.UTF_8).readText())
            }
            val components = manifestJson.optJSONArray("components")
                ?: return VerificationResult(false, "Manifest components are missing")
            if (components.length() != integrityJson.length()) {
                return VerificationResult(
                    false,
                    "Component count mismatch: manifest=${components.length()} integrity=${integrityJson.length()}",
                )
            }

            for (index in 0 until components.length()) {
                val name = components.getString(index)
                val expected = integrityJson.optString(name, "")
                if (expected.isBlank()) return VerificationResult(false, "Missing integrity hash for $name")
                val entry = zip.getEntry(name)
                    ?: return VerificationResult(false, "Missing archive entry $name")
                val actual = sha256(zip, entry)
                if (!expected.equals(actual, ignoreCase = true)) {
                    return VerificationResult(false, "Hash mismatch for $name: expected=$expected actual=$actual")
                }
            }
            if (zip.getEntry("apk/base.apk") == null) {
                return VerificationResult(false, "Missing required apk/base.apk")
            }
            VerificationResult(true, "Archive verified")
        }
    }.getOrElse { VerificationResult(false, "Archive verification exception: ${it.message ?: it::class.java.simpleName}") }

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

    private fun putFile(zip: ZipOutputStream, name: String, source: File): String {
        val digest = MessageDigest.getInstance("SHA-256")
        zip.putNextEntry(ZipEntry(name))
        FileInputStream(source).use { input ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                zip.write(buffer, 0, read)
                digest.update(buffer, 0, read)
            }
        }
        zip.closeEntry()
        return digest.digest().joinToString("") { byte ->
            "%02x".format(byte.toInt() and 0xff)
        }
    }

    private data class VerificationResult(val isValid: Boolean, val reason: String)
}
