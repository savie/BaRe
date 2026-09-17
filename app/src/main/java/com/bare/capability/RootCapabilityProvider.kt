package com.bare.capability

import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit

/**
 * Root provider using an explicitly authorized `su` process.
 *
 * Root is a privileged execution mode, not a bypass. Every operation validates
 * its package/path inputs and fails closed when `su` is unavailable or does not
 * return uid 0.
 */
class RootCapabilityProvider(
    private val commandTimeoutSeconds: Long = 15,
) {
    fun probe(): RootProbeResult {
        val result = runSuCommand("id")
        if (result.exitCode != 0) {
            return RootProbeResult.Failed(result.stderr.ifBlank { result.stdout })
        }
        if (!result.stdout.contains("uid=0")) {
            return RootProbeResult.Failed("su did not provide uid 0: ${result.stdout}")
        }
        return RootProbeResult.Success(result.stdout.trim())
    }

    fun copyPackageApks(packageName: String, destinationDir: File): RootCopyResult {
        if (!packageName.matches(PACKAGE_NAME_REGEX)) {
            return RootCopyResult.Failed("Invalid package name")
        }
        if (!destinationDir.exists() && !destinationDir.mkdirs()) {
            return RootCopyResult.Failed("Unable to create root staging directory.")
        }

        val pathResult = runSuCommand("pm path ${shellQuote(packageName)}")
        if (pathResult.exitCode != 0) {
            destinationDir.deleteRecursively()
            return RootCopyResult.Failed(pathResult.stderr.ifBlank { pathResult.stdout })
        }

        val paths = pathResult.stdout
            .lineSequence()
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
                val name = if (index == 0) "base.apk" else "split-$index.apk"
                val destination = File(destinationDir, name)
                copyRootFile(remotePath, destination)
                destination
            }
            RootCopyResult.Success(files)
        } catch (t: Throwable) {
            destinationDir.deleteRecursively()
            RootCopyResult.Failed(t.message ?: t::class.java.simpleName)
        }
    }

    private fun copyRootFile(remotePath: String, destination: File) {
        val process = ProcessBuilder("su", "-c", "cat ${shellQuote(remotePath)}")
            .redirectErrorStream(false)
            .start()
        val stderrThread = Thread {
            process.errorStream.bufferedReader().use { it.readText() }
        }.apply { start() }
        try {
            ParcelLikeInput(process).use { input ->
                FileOutputStream(destination).use { output ->
                    input.copyTo(output, DEFAULT_BUFFER_SIZE)
                }
            }
            check(process.waitFor(commandTimeoutSeconds, TimeUnit.SECONDS)) {
                "Root file copy timed out"
            }
            stderrThread.join(1000)
            check(process.exitValue() == 0) { "Root read failed for $remotePath" }
            check(destination.isFile && destination.length() > 0) {
                "Root copy produced an empty file for $remotePath"
            }
        } finally {
            if (process.isAlive) process.destroyForcibly()
        }
    }

    private fun runSuCommand(command: String): SuCommandResult {
        return try {
            val process = ProcessBuilder("su", "-c", command)
                .redirectErrorStream(false)
                .start()
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
    }

    private fun shellQuote(value: String): String = "'${value.replace("'", "'\"'\"'")}'"

    private data class SuCommandResult(
        val exitCode: Int,
        val stdout: String,
        val stderr: String,
    )

    private class ParcelLikeInput(private val process: Process) : java.io.InputStream() {
        private val input = process.inputStream
        override fun read(): Int = input.read()
        override fun read(buffer: ByteArray, offset: Int, length: Int): Int = input.read(buffer, offset, length)
        override fun close() = input.close()
    }

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
