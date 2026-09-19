package com.bare.capability

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


    fun ensureDirectory(path: String, ownerUid: Int): RootProbeResult {
        if (path.isBlank() || path.contains("\\n") || path.contains("\\r")) {
            return RootProbeResult.Failed("Invalid storage path")
        }
        val quoted = path.replace("'", "'\\\"'\\\"'")
        val command = "mkdir -p '$quoted' && chown $ownerUid:$ownerUid '$quoted' && chmod 0700 '$quoted'"
        val result = runSu(command)
        return if (result.exitCode == 0) RootProbeResult.Success(result.stdout.ifBlank { "root directory ready" }.trim())
        else RootProbeResult.Failed(result.stderr.ifBlank { result.stdout })
    }

    fun copyPackageApks(packageName: String, destinationDir: File): RootCopyResult {
        if (!packageName.matches(PACKAGE_REGEX)) return RootCopyResult.Failed("Invalid package name")
        if (!destinationDir.exists() && !destinationDir.mkdirs()) return RootCopyResult.Failed("Unable to create staging directory")
        val pathsResult = runSu("pm path '" + packageName.replace("'", "'\"'\"'") + "'")
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

    private fun copyFile(remotePath: String, destination: File) {
        val quoted = remotePath.replace("'", "'\"'\"'")
        val process = ProcessBuilder("su", "-c", "cat '" + quoted + "'").redirectErrorStream(false).start()
        val stderr = StringBuilder()
        val stderrThread = Thread { process.errorStream.bufferedReader().use { stderr.append(it.readText()) } }.apply { start() }
        process.inputStream.use { input -> FileOutputStream(destination).use { output -> input.copyTo(output) } }
        check(process.waitFor(timeoutSeconds, TimeUnit.SECONDS)) { "Root file copy timed out" }
        stderrThread.join(1000)
        check(process.exitValue() == 0) { "Root read failed: " + remotePath + " " + stderr }
        check(destination.isFile && destination.length() > 0) { "Root copy produced an empty file" }
    }

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
    companion object { private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""") }
}

sealed interface RootProbeResult { data class Success(val identity: String) : RootProbeResult; data class Failed(val reason: String) : RootProbeResult }
sealed interface RootCopyResult { data class Success(val files: List<File>) : RootCopyResult; data class Failed(val reason: String) : RootCopyResult }