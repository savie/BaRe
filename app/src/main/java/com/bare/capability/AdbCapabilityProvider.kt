package com.bare.capability

import dadb.Dadb
import dadb.SyncResult
import dadb.adbserver.AdbServer
import java.io.File

/**
 * ADB provider backed by an ADB host/server exposed on localhost.
 *
 * The intended no-laptop test path is Termux running an ADB server on
 * 127.0.0.1:5037 after Wireless Debugging has been paired/connected.
 */
class AdbCapabilityProvider(
    private val host: String = "127.0.0.1",
    private val port: Int = 5037,
) {
    fun probe(): AdbProbeResult = runCatching {
        AdbServer.createDadb(host, port).use { adb ->
            val response = adb.shell("id")
            check(response.exitCode == 0) { response.allOutput }
            AdbProbeResult.Success(response.output.trim())
        }
    }.getOrElse {
        AdbProbeResult.Failed(it.message ?: it::class.java.simpleName)
    }

    fun copyPackageApks(packageName: String, destinationDir: File): AdbCopyResult {
        if (!packageName.matches(PACKAGE_NAME_REGEX)) {
            return AdbCopyResult.Failed("Invalid package name")
        }
        if (!destinationDir.exists() && !destinationDir.mkdirs()) {
            return AdbCopyResult.Failed("Unable to create ADB staging directory.")
        }

        return runCatching {
            AdbServer.createDadb(host, port).use { adb ->
                val response = adb.shell("pm path $packageName")
                check(response.exitCode == 0) { response.allOutput }
                val paths = response.output
                    .lineSequence()
                    .map(String::trim)
                    .filter { it.startsWith("package:") }
                    .map { it.removePrefix("package:") }
                    .filter(String::isNotBlank)
                    .toList()
                check(paths.isNotEmpty()) { "Package APK path not found" }

                val files = paths.mapIndexed { index, remotePath ->
                    require(remotePath.startsWith("/")) { "Invalid remote APK path" }
                    val name = if (index == 0) "base.apk" else "split-$index.apk"
                    val destination = File(destinationDir, name)
                    when (val result = adb.pull(destination, remotePath)) {
                        SyncResult.Success -> Unit
                        is SyncResult.Failure -> error("ADB pull failed for $remotePath: ${result.reason}")
                    }
                    check(destination.isFile && destination.length() > 0) {
                        "ADB pull produced an empty file for $remotePath"
                    }
                    destination
                }
                AdbCopyResult.Success(files)
            }
        }.getOrElse {
            destinationDir.deleteRecursively()
            AdbCopyResult.Failed(it.message ?: it::class.java.simpleName)
        }
    }

    companion object {
        private val PACKAGE_NAME_REGEX = Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+")
    }
}

sealed interface AdbProbeResult {
    data class Success(val identity: String) : AdbProbeResult
    data class Failed(val reason: String) : AdbProbeResult
}

sealed interface AdbCopyResult {
    data class Success(val files: List<File>) : AdbCopyResult
    data class Failed(val reason: String) : AdbCopyResult
}
