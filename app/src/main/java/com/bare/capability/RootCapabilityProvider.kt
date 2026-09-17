package com.bare.capability

import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit

/**
 * Root provider using an explicitly authorized `su` process.
 *
 * Root is a privileged execution mode, not a bypass. Filesystem operations are
 * constrained to validated package/data paths and fail closed on errors.
 */
class RootCapabilityProvider(
    private val commandTimeoutSeconds: Long = 15,
) {
    fun probe(): RootProbeResult {
        val result = runSuCommand("id")
        if (result.exitCode != 0) return RootProbeResult.Failed(result.stderr.ifBlank { result.stdout })
        if (!result.stdout.contains("uid=0")) return RootProbeResult.Failed("su did not provide uid 0: ${result.stdout}")
        return RootProbeResult.Success(result.stdout.trim())
    }

    fun copyPackageApks(packageName: String, destinationDir: File): RootCopyResult {
        if (!packageName.matches(PACKAGE_NAME_REGEX)) return RootCopyResult.Failed("Invalid package name")
        if (!destinationDir.exists() && !destinationDir.mkdirs()) return RootCopyResult.Failed("Unable to create root staging directory.")
        val pathResult = runSuCommand("pm path ${shellQuote(packageName)}")
        if (pathResult.exitCode != 0) {
            destinationDir.deleteRecursively()
            return RootCopyResult.Failed(pathResult.stderr.ifBlank { pathResult.stdout })
        }
        val paths = pathResult.stdout.lineSequence()
            .map(String::trim)
            .filter { it.startsWith("package:") }
            .map { it.removePrefix("package:") }
            .filter { it.startsWith("/") && it.length > 1 }
            .toList()
        if (paths.isEmpty()) {
            destinationDir.deleteRecursively()
            return RootCopyResult.Failed("Package APK path not found")
        }
        return try {
            val files = paths.mapIndexed { index, remotePath ->
                val destination = File(destinationDir, if (index == 0) "base.apk" else "split-$index.apk")
                copyRootFile(remotePath, destination)
                destination
            }
            RootCopyResult.Success(files)
        } catch (t: Throwable) {
            destinationDir.deleteRecursively()
            RootCopyResult.Failed(t.message ?: t::class.java.simpleName)
        }
    }

    fun copyApplicationData(packageName: String, destinationDir: File): RootDataResult {
        if (!packageName.matches(PACKAGE_NAME_REGEX)) return RootDataResult.Failed("Invalid package name")
        if (!destinationDir.exists() && !destinationDir.mkdirs()) return RootDataResult.Failed("Unable to create root data staging directory")

        val source = File("/data/data", packageName)
        val sourceCheck = runSuCommand("test -d ${shellQuote(source.absolutePath)}")
        if (sourceCheck.exitCode != 0) {
            destinationDir.deleteRecursively()
            return RootDataResult.Failed("Private application data directory is unavailable: ${source.absolutePath}")
        }

        return try {
            // Use tar for recursive metadata-preserving transport. The source path is
            // constructed only from a validated Android package name; destination stays
            // inside app-controlled cache staging.
            val archive = File(destinationDir, "data.tar")
            val result = runSuCommandToFile(
                "tar -C /data/data -cf - ${shellQuote(packageName)}",
                archive,
            )
            if (result.exitCode != 0) throw IllegalStateException(result.stderr.ifBlank { "Root data archive failed" })
            check(archive.isFile && archive.length() > 0) { "Root data archive is empty" }
            RootDataResult.Success(listOf(archive))
        } catch (t: Throwable) {
            destinationDir.deleteRecursively()
            RootDataResult.Failed(t.message ?: t::class.java.simpleName)
        }
    }

    private fun copyRootFile(remotePath: String, destination: File) {
        val process = ProcessBuilder("su", "-c", "cat ${shellQuote(remotePath)}")
            .redirectErrorStream(false)
            .start()
        val stderrThread = Thread { process.errorStream.bufferedReader().use { it.readText() } }.apply { start() }
        try {
            process.inputStream.use { input -> FileOutputStream(destination).use { output -> input.copyTo(output, DEFAULT_BUFFER_SIZE) } }
            check(process.waitFor(commandTimeoutSeconds, TimeUnit.SECONDS)) { "Root file copy timed out" }
            stderrThread.join(1000)
            check(process.exitValue() == 0) { "Root read failed for $remotePath" }
            check(destination.isFile && destination.length() > 0) { "Root copy produced an empty file for $remotePath" }
        } finally {
            if (process.isAlive) process.destroyForcibly()
        }
    }

    private fun runSuCommand(command: String): SuCommandResult = try {
        val process = ProcessBuilder("su", "-c", command).redirectErrorStream(false).start()
        val stdout = process.inputStream.bufferedReader().use { it.readText() }
        val stderr = process.errorStream.bufferedReader().use { it.readText() }
        if (!process.waitFor(commandTimeoutSeconds, TimeUnit.SECONDS)) {
            process.destroyForcibly()
            return SuCommandResult(-1, stdout, "Command timed out")
        }
        SuCommandResult(process.exitValue(), stdout, stderr)
    } catch (t: Throwable) {
        SuCommandResult(-1, "", t.message ?: t::class.java.simpleName)
    }

    private fun runSuCommandToFile(command: String, output: File): SuCommandResult = try {
        val process = ProcessBuilder("su", "-c", command).redirectErrorStream(false).start()
        val stderr = StringBuilder()
        val stderrThread = Thread { process.errorStream.bufferedReader().use { stderr.append(it.readText()) } }.apply { start() }
        process.inputStream.use { input -> FileOutputStream(output).use { input.copyTo(it, DEFAULT_BUFFER_SIZE) } }
        if (!process.waitFor(commandTimeoutSeconds, TimeUnit.SECONDS)) {
            process.destroyForcibly()
            return SuCommandResult(-1, "", "Command timed out")
        }
        stderrThread.join(1000)
        SuCommandResult(process.exitValue(), "", stderr.toString())
    } catch (t: Throwable) {
        SuCommandResult(-1, "", t.message ?: t::class.java.simpleName)
    }

    private fun shellQuote(value: String): String = "'${value.replace("'", "'\"'\"'")}'"

    private data class SuCommandResult(val exitCode: Int, val stdout: String, val stderr: String)

    companion object {
        private val PACKAGE_NAME_REGEX = Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+")
    }
}

sealed interface RootProbeResult {
    data class Success(val identity: String) : RootProbeResult
    data class Failed(val reason: String) : RootProbeResult
}

sealed interface RootCopyResult {
    data class Success(val files: List<File>) : RootCopyResult
    data class Failed(val reason: String) : RootCopyResult
}

sealed interface RootDataResult {
    data class Success(val files: List<File>) : RootDataResult
    data class Failed(val reason: String) : RootDataResult
}
