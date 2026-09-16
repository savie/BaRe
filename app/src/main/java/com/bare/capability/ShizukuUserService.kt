package com.bare.capability

import android.os.ParcelFileDescriptor
import java.io.File
import java.io.FileInputStream
import java.io.RandomAccessFile
import java.util.concurrent.Executors

class ShizukuUserService : IPrivilegedProbe.Stub() {
    private val streamExecutor = Executors.newCachedThreadPool()

    override fun getIdentity(): String = Shell.exec(arrayOf("id")).trim()

    override fun getPackagePaths(packageName: String): Array<String> {
        validatePackageName(packageName)
        return packagePaths(packageName).toTypedArray()
    }

    override fun openPackageFile(packageName: String, path: String): ParcelFileDescriptor {
        validatePackageName(packageName)
        val canonical = File(path).canonicalFile
        require(canonical.isFile) { "APK path is not a file" }
        require(canonical in packagePaths(packageName).map { File(it).canonicalFile }) {
            "APK path is not owned by requested package"
        }

        val pipe = ParcelFileDescriptor.createPipe()
        streamExecutor.execute {
            ParcelFileDescriptor.AutoCloseOutputStream(pipe[1]).use { output ->
                FileInputStream(canonical).use { input ->
                    input.copyTo(output, DEFAULT_BUFFER_SIZE)
                }
            }
        }
        return pipe[0]
    }

    private fun packagePaths(packageName: String): List<String> =
        Shell.exec(arrayOf("pm", "path", packageName))
            .lineSequence()
            .map(String::trim)
            .filter { it.startsWith("package:") }
            .map { it.removePrefix("package:") }
            .filter(String::isNotBlank)
            .toList()
            .also { require(it.isNotEmpty()) { "Package APK path not found" } }

    private fun validatePackageName(packageName: String) {
        require(packageName.matches(Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+"))) {
            "Invalid package name"
        }
    }

    private object Shell {
        fun exec(command: Array<String>): String {
            val process = Runtime.getRuntime().exec(command)
            val output = process.inputStream.bufferedReader().use { it.readText() }
            val error = process.errorStream.bufferedReader().use { it.readText() }
            if (!process.waitFor(10, java.util.concurrent.TimeUnit.SECONDS)) {
                process.destroyForcibly()
                throw IllegalStateException("Privileged command timed out")
            }
            if (process.exitValue() != 0) {
                throw IllegalStateException("Privileged command failed: ${error.trim()}")
            }
            return output
        }
    }
}
