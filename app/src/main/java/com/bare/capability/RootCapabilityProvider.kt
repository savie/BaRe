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
        if (path.isBlank() || path.contains("\n") || path.contains("\r")) {
            return RootProbeResult.Failed("Invalid storage path")
        }
        val quoted = shellQuote(path)
        val command = "mkdir -p $quoted && chown $ownerUid:$ownerUid $quoted && chmod 0700 $quoted"
        val result = runSu(command)
        return if (result.exitCode == 0) RootProbeResult.Success(result.stdout.ifBlank { "root directory ready" }.trim())
        else RootProbeResult.Failed(result.stderr.ifBlank { result.stdout })
    }

    fun copyPackageApks(
        packageName: String,
        destinationDir: File,
        isCancelled: (() -> Boolean)?,
        onProgress: ((copiedBytes: Long, totalBytes: Long) -> Unit)? = null,
    ): RootCopyResult {
        if (!packageName.matches(PACKAGE_REGEX)) return RootCopyResult.Failed("Invalid package name")
        if (!destinationDir.exists() && !destinationDir.mkdirs()) return RootCopyResult.Failed("Unable to create staging directory")
        val pathsResult = runSu("pm path ${shellQuote(packageName)}")
        if (pathsResult.exitCode != 0) return RootCopyResult.Failed(pathsResult.stderr.ifBlank { pathsResult.stdout })
        val paths = pathsResult.stdout.lineSequence().map(String::trim).filter { it.startsWith("package:") }
            .map { it.removePrefix("package:") }.filter { it.startsWith("/") }.toList()
        if (paths.isEmpty()) return RootCopyResult.Failed("Package APK path not found")
        val sourceSizes = paths.map(::remoteFileSize)
        val totalBytes = if (sourceSizes.all { it > 0L }) sourceSizes.sum() else 0L
        var copiedBefore = 0L
        return runCatching {
            paths.mapIndexed { index, remotePath ->
                if (isCancelled?.invoke() == true) throw InterruptedException("Root APK copy cancelled")
                val destination = File(destinationDir, if (index == 0) "base.apk" else "split-$index.apk")
                copyFileCancellable(
                    remotePath,
                    destination,
                    isCancelled,
                    onProgress = { copied -> onProgress?.invoke(copiedBefore + copied, totalBytes) },
                )
                copiedBefore += destination.length().coerceAtLeast(0L)
                destination
            }
        }.fold({ RootCopyResult.Success(it) }, {
            destinationDir.deleteRecursively()
            RootCopyResult.Failed(it.message ?: it::class.java.simpleName)
        })
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

    fun copyDirectory(
        sourcePath: String,
        destinationDir: File,
        isCancelled: (() -> Boolean)?
    ): RootCopyResult {
        if (sourcePath.isBlank() || sourcePath.contains("\n") || sourcePath.contains("\r")) {
            return RootCopyResult.Failed("Invalid source path")
        }
        if (isCancelled?.invoke() == true) return RootCopyResult.Failed("Root directory copy cancelled")
        if (!destinationDir.exists() && !destinationDir.mkdirs()) {
            return RootCopyResult.Failed("Unable to create staging directory")
        }
        val source = shellQuote(sourcePath)
        val destination = shellQuote(destinationDir.absolutePath)
        val result = runSuCancellable(
            "if ! test -d $source; then " +
                "echo source_not_directory >&2; " +
                "if test -e $source; then echo source_exists=true >&2; else echo source_exists=false >&2; fi; " +
                "ls -ld $source 2>&1 >&2 || true; " +
                "stat -c 'source_mode=%a source_type=%F source_size=%s' $source 2>&1 >&2 || true; " +
                "exit 20; " +
            "fi; " +
            "cp -a ${shellQuote(sourcePath + "/.")} $destination/ || { status=\$?; echo cp_exit=\$status >&2; exit \$status; }",
            isCancelled,
        )
        return if (result.exitCode == 0) {
            RootCopyResult.Success(destinationDir.walkTopDown().filter { it.isFile }.toList())
        } else {
            destinationDir.deleteRecursively()
            val detail = result.stderr.ifBlank { result.stdout }.trim()
            val reason = when {
                result.exitCode == -2 -> "Root directory copy cancelled"
                detail.isBlank() -> "Root directory copy failed (exit=${result.exitCode})"
                else -> "Root directory copy failed (exit=${result.exitCode}): $detail"
            }
            RootCopyResult.Failed(reason)
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
        process.inputStream.use { input -> FileOutputStream(destination).use { output -> input.copyTo(output, BUFFER_BYTES) } }
        check(process.waitFor(timeoutSeconds, TimeUnit.SECONDS)) { "Root file copy timed out" }
        stderrThread.join(1000)
        check(process.exitValue() == 0) { "Root read failed: " + remotePath + " " + stderr }
        check(destination.isFile && destination.length() > 0) { "Root copy produced an empty file" }
    }

    private fun copyFileCancellable(
        remotePath: String,
        destination: File,
        isCancelled: (() -> Boolean)?,
        onProgress: ((copiedBytes: Long) -> Unit)? = null,
    ) {
        if (isCancelled?.invoke() == true) throw InterruptedException("Root file copy cancelled")
        val process = ProcessBuilder("su", "-c", "cat ${shellQuote(remotePath)}").redirectErrorStream(false).start()
        val stderr = StringBuilder()
        val stderrThread = Thread { process.errorStream.bufferedReader().use { stderr.append(it.readText()) } }.apply { start() }
        try {
            process.inputStream.use { input ->
                FileOutputStream(destination).use { output ->
                    val buffer = ByteArray(BUFFER_BYTES)
                    var copiedBytes = 0L
                    while (true) {
                        if (isCancelled?.invoke() == true) {
                            process.destroyForcibly()
                            throw InterruptedException("Root file copy cancelled")
                        }
                        val read = input.read(buffer)
                        if (read < 0) break
                        output.write(buffer, 0, read)
                        copiedBytes += read
                        onProgress?.invoke(copiedBytes)
                    }
                }
            }
            check(process.waitFor(timeoutSeconds, TimeUnit.SECONDS)) { "Root file copy timed out" }
            stderrThread.join(1000)
            check(process.exitValue() == 0) { "Root read failed: " + remotePath + " " + stderr }
            check(destination.isFile) { "Root copy did not produce a file" }
        } catch (t: Throwable) {
            if (process.isAlive) process.destroyForcibly()
            destination.delete()
            throw t
        } finally {
            stderrThread.join(1000)
        }
    }
    private fun remoteFileSize(path: String): Long {
        val result = runSu("stat -c %s ${shellQuote(path)}")
        return if (result.exitCode == 0) result.stdout.trim().toLongOrNull()?.coerceAtLeast(0L) ?: 0L else 0L
    }

    private fun shellQuote(value: String): String =
        "'" + value.replace("'", "'\\''") + "'"

    private fun runSuCancellable(command: String, isCancelled: (() -> Boolean)?): Result {
        return try {
            val process = ProcessBuilder("su", "-c", command).redirectErrorStream(false).start()
            val stdout = StringBuilder()
            val stderr = StringBuilder()
            val stdoutThread = Thread { process.inputStream.bufferedReader().use { stdout.append(it.readText()) } }.apply { start() }
            val stderrThread = Thread { process.errorStream.bufferedReader().use { stderr.append(it.readText()) } }.apply { start() }
            while (process.isAlive) {
                if (isCancelled?.invoke() == true) {
                    process.destroyForcibly()
                    stdoutThread.join(500)
                    stderrThread.join(500)
                    return Result(-2, stdout.toString(), "Command cancelled")
                }
                if (process.waitFor(100, TimeUnit.MILLISECONDS)) break
            }
            stdoutThread.join(1000)
            stderrThread.join(1000)
            Result(process.exitValue(), stdout.toString(), stderr.toString())
        } catch (t: Throwable) {
            Result(-1, "", t.message ?: t::class.java.simpleName)
        }
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

    fun packageApkArchiveSources(packageName: String): List<RootArchiveSource> {
        if (!packageName.matches(PACKAGE_REGEX)) error("Invalid package name")
        val pathsResult = runSu("pm path ${shellQuote(packageName)}")
        if (pathsResult.exitCode != 0) error(pathsResult.stderr.ifBlank { pathsResult.stdout })
        val paths = pathsResult.stdout.lineSequence().map(String::trim)
            .filter { it.startsWith("package:") }
            .map { it.removePrefix("package:") }
            .filter { it.startsWith("/") }
            .toList()
        if (paths.isEmpty()) error("Package APK path not found")
        return paths.mapIndexed { index, source ->
            val size = remoteFileSize(source)
            RootArchiveSource(
                sourcePath = source,
                entryName = if (index == 0) "apk/base.apk" else "apk/split-${index}.apk",
                byteSize = size,
                directory = false,
            )
        }
    }

    fun directoryArchiveSource(sourcePath: String, entryName: String): RootArchiveSource {
        if (sourcePath.isBlank() || sourcePath.contains("\\n") || sourcePath.contains("\\r")) {
            error("Invalid source path")
        }
        return RootArchiveSource(
            sourcePath = sourcePath,
            entryName = entryName.trim('/'),
            byteSize = directorySize(sourcePath) ?: 0L,
            directory = true,
        )
    }

    fun openTarStream(sourcePath: String): RootTarStream {
        if (sourcePath.isBlank() || sourcePath.contains("\\n") || sourcePath.contains("\\r")) {
            error("Invalid source path")
        }
        val source = File(sourcePath)
        val parent = source.parentFile?.absolutePath ?: "/"
        val name = source.name.ifBlank { "/" }
        val command = "toybox tar -cf - -C ${shellQuote(parent)} ${shellQuote(name)}"
        val process = ProcessBuilder("su", "-c", command)
            .redirectErrorStream(false)
            .start()
        val stderr = StringBuilder()
        val stderrThread = Thread {
            process.errorStream.bufferedReader().use { reader ->
                stderr.append(reader.readText())
            }
        }.apply { start() }
        return RootTarStream(process, stderr, stderrThread)
    }

    private data class Result(val exitCode: Int, val stdout: String, val stderr: String)
    companion object {
        private const val BUFFER_BYTES = 1024 * 1024
        private const val PACKAGE_NAME = "com.bare"
        private val PACKAGE_REGEX = Regex("""[A-Za-z0-9_]+(?:\.[A-Za-z0-9_]+)+""")
    }
}

data class RootGrantResult(val granted: List<String>, val failed: List<String>)

data class RootArchiveSource(
    val sourcePath: String,
    val entryName: String,
    val byteSize: Long,
    val directory: Boolean,
)

class RootTarStream internal constructor(
    private val process: Process,
    private val stderr: StringBuilder,
    private val stderrThread: Thread,
) : java.io.Closeable {
    val input: java.io.InputStream = process.inputStream

    fun awaitSuccess() {
        val finished = process.waitFor(30, TimeUnit.SECONDS)
        stderrThread.join(1000)
        if (!finished) {
            process.destroyForcibly()
            throw IllegalStateException("Root tar stream timed out")
        }
        if (process.exitValue() != 0) {
            throw IllegalStateException(stderr.toString().ifBlank { "Root tar failed with exit=${process.exitValue()}" }.trim())
        }
    }

    override fun close() {
        runCatching { input.close() }
        if (process.isAlive) process.destroyForcibly()
        runCatching { stderrThread.join(1000) }
    }
}

sealed interface RootProbeResult { data class Success(val identity: String) : RootProbeResult; data class Failed(val reason: String) : RootProbeResult }
sealed interface RootCopyResult { data class Success(val files: List<File>) : RootCopyResult; data class Failed(val reason: String) : RootCopyResult }