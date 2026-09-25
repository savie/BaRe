package com.bare.capability

import android.Manifest
import android.os.Build
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit

class RootCapabilityProvider(private val timeoutSeconds: Long = 15) {
    fun probe(): RootProbeResult {
        val result = runSu("id")
        if (result.exitCode != 0) return RootProbeResult.Failed(result.stderr.ifBlank { result.stdout })
        return if (result.stdout.contains("uid=0")) RootProbeResult.Success(result.stdout.trim())
        else RootProbeResult.Failed("su did not provide uid 0: " + result.stdout)
    }


    fun grantRequiredPermissions(): RootGrantResult {
        val permissionSet = buildList {
            add(Manifest.permission.READ_SMS)
            add("android.permission.WRITE_SMS")
            add(Manifest.permission.READ_CONTACTS)
            add(Manifest.permission.READ_CALL_LOG)
            add(Manifest.permission.WRITE_CALL_LOG)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                add(Manifest.permission.POST_NOTIFICATIONS)
            }
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
                add(Manifest.permission.READ_EXTERNAL_STORAGE)
                add(Manifest.permission.WRITE_EXTERNAL_STORAGE)
            }
        }

        val granted = mutableListOf<String>()
        val failed = mutableListOf<String>()

        for (permission in permissionSet) {
            val result = runSu("pm grant '$PACKAGE_NAME' '$permission'")
            if (result.exitCode == 0) {
                granted += permission
            } else {
                failed += permission + ": " + result.stderr.ifBlank { result.stdout }.trim()
            }
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            val result = runSu("appops set '$PACKAGE_NAME' android:manage_external_storage allow")
            if (result.exitCode != 0) {
                failed += "android.permission.MANAGE_EXTERNAL_STORAGE: " +
                    result.stderr.ifBlank { result.stdout }.trim()
            } else {
                granted += "android.permission.MANAGE_EXTERNAL_STORAGE"
            }
        }

        return RootGrantResult(granted, failed)
    }

    fun ensureDirectory(path: String, ownerUid: Int): RootProbeResult {
        if (path.isBlank() || path.contains("\\n") || path.contains("\\r")) {
            return RootProbeResult.Failed("Invalid storage path")
        }
        val quoted = shellQuote(path)
        val command = "mkdir -p $quoted && chown $ownerUid:$ownerUid $quoted && chmod 0700 $quoted"
        val result = runSu(command)
        return if (result.exitCode == 0) RootProbeResult.Success(result.stdout.ifBlank { "root directory ready" }.trim())
        else RootProbeResult.Failed(result.stderr.ifBlank { result.stdout })
    }

    fun copyPackageApks(packageName: String, destinationDir: File): RootCopyResult {
        if (!packageName.matches(PACKAGE_REGEX)) return RootCopyResult.Failed("Invalid package name")
        if (!destinationDir.exists() && !destinationDir.mkdirs()) return RootCopyResult.Failed("Unable to create staging directory")
        val pathsResult = runSu("pm path ${shellQuote(packageName)}")
        if (pathsResult.exitCode != 0) return RootCopyResult.Failed(pathsResult.stderr.ifBlank { pathsResult.stdout })
        val paths = pathsResult.stdout.lineSequence().map(String::trim).filter { it.startsWith("package:") }
            .map { it.removePrefix("package:") }.filter { it.startsWith("/") }.toList()
        if (paths.isEmpty()) return RootCopyResult.Failed("Package APK path not found")
        return runCatching { paths.mapIndexed { index, remotePath ->
            val destination = File(destinationDir, if (index == 0) "base.apk" else "split-" + index + ".apk")
            copyFile(remotePath, destination); destination
        } }.fold({ RootCopyResult.Success(it) }, {
            destinationDir.deleteRecursively(); RootCopyResult.Failed(it.message ?: it::class.java.simpleName)
        })
    }

    fun directoryExists(path: String): Boolean? {
        if (path.isBlank() || path.contains("\n") || path.contains("\r")) return null
        val quoted = shellQuote(path)
        val result = runSu("test -d $quoted")
        return when (result.exitCode) {
            0 -> true
            1 -> false
            else -> null
        }
    }

    fun copyDirectory(sourcePath: String, destinationDir: File): RootCopyResult {
        if (sourcePath.isBlank() || sourcePath.contains("\n") || sourcePath.contains("\r")) {
            return RootCopyResult.Failed("Invalid source path")
        }
        if (!destinationDir.exists() && !destinationDir.mkdirs()) {
            return RootCopyResult.Failed("Unable to create staging directory")
        }

        val source = shellQuote(sourcePath)
        val destination = shellQuote(destinationDir.absolutePath)
        val result = runSu("test -d $source && cp -a ${shellQuote(sourcePath + "/.")} $destination/")
        return if (result.exitCode == 0) {
            RootCopyResult.Success(destinationDir.walkTopDown().filter { it.isFile }.toList())
        } else {
            destinationDir.deleteRecursively()
            RootCopyResult.Failed(result.stderr.ifBlank { result.stdout }.trim())
        }
    }

    fun deletePath(path: String): RootProbeResult {
        if (path.isBlank() || path.contains("\n") || path.contains("\r")) {
            return RootProbeResult.Failed("Invalid storage path")
        }
        val quoted = shellQuote(path)
        val result = runSu("rm -rf -- $quoted && test ! -e $quoted")
        return if (result.exitCode == 0) {
            RootProbeResult.Success(result.stdout.ifBlank { "path deleted" }.trim())
        } else {
            RootProbeResult.Failed(result.stderr.ifBlank { result.stdout }.trim())
        }
    }

    fun directorySize(path: String): Long? {
        if (path.isBlank() || path.contains("\n") || path.contains("\r")) return null
        val quoted = shellQuote(path)
        val result = runSu("toybox du -sk $quoted")
        if (result.exitCode != 0) return null
        val kb = result.stdout.trim().lineSequence().firstOrNull()
            ?.trim()?.split(Regex("\\s+"))?.firstOrNull()?.toLongOrNull()
            ?: return null
        return kb * 1024L
    }

    private fun copyFile(remotePath: String, destination: File) {
        val process = ProcessBuilder("su", "-c", "cat ${shellQuote(remotePath)}").redirectErrorStream(false).start()
        val stderr = StringBuilder()
        val stderrThread = Thread { process.errorStream.bufferedReader().use { stderr.append(it.readText()) } }.apply { start() }
        process.inputStream.use { input -> FileOutputStream(destination).use { output -> input.copyTo(output) } }
        check(process.waitFor(timeoutSeconds, TimeUnit.SECONDS)) { "Root file copy timed out" }
        stderrThread.join(1000)
        check(process.exitValue() == 0) { "Root read failed: " + remotePath + " " + stderr }
        check(destination.isFile && destination.length() > 0) { "Root copy produced an empty file" }
    }

    private fun shellQuote(value: String): String =
        "'" + value.replace("'", "'\\''") + "'"

    private fun runSu(command: String): Result {
        return try {
            val process = ProcessBuilder("su", "-c", command).redirectErrorStream(false).start()
            val stdout = process.inputStream.bufferedReader().use { it.readText() }
            val stderr = process.errorStream.bufferedReader().use { it.readText() }
            if (!process.waitFor(timeoutSeconds, TimeUnit.SECONDS)) {
                process.destroyForcibly()
                Result(-1, stdout, "Command timed out")
            } else {
                Result(process.exitValue(), stdout, stderr)
            }
        } catch (t: Throwable) {
            Result(-1, "", t.message ?: t::class.java.simpleName)
        }
    }

    private data class Result(val exitCode: Int, val stdout: String, val stderr: String)
    companion object {
        private const val PACKAGE_NAME = "com.bare"
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}

data class RootGrantResult(val granted: List<String>, val failed: List<String>)

sealed interface RootProbeResult { data class Success(val identity: String) : RootProbeResult; data class Failed(val reason: String) : RootProbeResult }
sealed interface RootCopyResult { data class Success(val files: List<File>) : RootCopyResult; data class Failed(val reason: String) : RootCopyResult }