package com.bare.restore

import org.json.JSONObject
import java.io.File
import java.io.FileInputStream
import java.nio.file.Files
import java.security.MessageDigest
import java.util.zip.ZipFile

class BackupArchiveReader {
    fun extractVerified(archive: File, stagingRoot: File): RestorePayload {
        require(archive.isFile && archive.canRead()) { "Backup archive is not readable." }
        require(stagingRoot.mkdirs() || stagingRoot.isDirectory) {
            "Unable to create restore staging directory."
        }

        return try {
            ZipFile(archive).use { zip ->
                val manifestEntry = zip.getEntry("manifest.json")
                    ?: error("Missing manifest.json")
                val integrityEntry = zip.getEntry("integrity.json")
                    ?: error("Missing integrity.json")
                val manifest = zip.getInputStream(manifestEntry).use {
                    JSONObject(it.bufferedReader(Charsets.UTF_8).readText())
                }
                val integrity = zip.getInputStream(integrityEntry).use {
                    JSONObject(it.bufferedReader(Charsets.UTF_8).readText())
                }
                val packageName = manifest.optString("packageName").takeIf { it.isNotBlank() }
                    ?: error("Manifest packageName is missing")
                require(packageName.matches(PACKAGE_NAME_REGEX)) { "Invalid package name in manifest" }
                val versionCode = manifest.optLong("versionCode", -1L)
                require(versionCode >= 0) { "Invalid versionCode in manifest" }
                val components = manifest.optJSONArray("components")
                    ?: error("Manifest components are missing")
                require(components.length() > 0) { "Manifest contains no restore components" }

                val files = mutableListOf<File>()
                for (index in 0 until components.length()) {
                    val entryName = components.getString(index)
                    require(entryName.startsWith("apk/") && entryName != "apk/") {
                        "Unsupported restore component: $entryName"
                    }
                    require(entryName == entryName.substringBeforeLast('/') + "/" + entryName.substringAfterLast('/')) {
                        "Invalid archive component path"
                    }
                    val entry = zip.getEntry(entryName) ?: error("Missing archive entry $entryName")
                    val expected = integrity.optString(entryName).takeIf { it.isNotBlank() }
                        ?: error("Missing integrity hash for $entryName")
                    val output = File(stagingRoot, entryName.removePrefix("apk/"))
                    require(output.parentFile == stagingRoot) { "Invalid restore output path" }
                    zip.getInputStream(entry).use { input ->
                        Files.newOutputStream(output.toPath()).use { outputStream -> input.copyTo(outputStream) }
                    }
                    require(output.isFile && output.length() > 0) { "Empty restore component: $entryName" }
                    val actual = Sha256.file(output)
                    require(expected.equals(actual, ignoreCase = true)) {
                        "Integrity mismatch for $entryName"
                    }
                    files += output
                }
                require(files.any { it.name == "base.apk" }) { "Restore archive has no base.apk" }
                RestorePayload(packageName, versionCode, files, stagingRoot)
            }
        } catch (t: Throwable) {
            stagingRoot.deleteRecursively()
            throw t
        }
    }

    private object Sha256 {
        fun file(file: File): String {
            val digest = MessageDigest.getInstance("SHA-256")
            FileInputStream(file).use { input ->
                val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                while (true) {
                    val read = input.read(buffer)
                    if (read < 0) break
                    digest.update(buffer, 0, read)
                }
            }
            return digest.digest().joinToString("") { "%02x".format(it.toInt() and 0xff) }
        }
    }

    companion object {
        private val PACKAGE_NAME_REGEX = Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+")
    }
}
