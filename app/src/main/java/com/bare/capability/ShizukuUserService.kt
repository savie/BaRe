package com.bare.capability

import java.io.BufferedReader
import java.io.File
import java.io.InputStreamReader
import java.io.RandomAccessFile
import java.util.concurrent.TimeUnit

class ShizukuUserService : IPrivilegedProbe.Stub() {
    override fun getIdentity(): String = exec(arrayOf("id")).trim()

    override fun getPackagePaths(packageName: String): Array<String> {
        validatePackageName(packageName)
        return packagePaths(packageName).toTypedArray()
    }

    override fun readFileChunk(
        packageName: String,
        path: String,
        offset: Long,
        maxBytes: Int,
    ): ByteArray {
        validatePackageName(packageName)
        require(offset >= 0) { "Invalid offset" }
        require(maxBytes in 1..65536) { "Invalid chunk size" }

        val canonical = File(path).canonicalFile
        require(canonical.isFile) { "APK path is not a file" }
        require(canonical in packagePaths(packageName).map { File(it).canonicalFile }) {
            "APK path is not owned by requested package"
        }

        RandomAccessFile(canonical, "r").use { file ->
            if (offset >= file.length()) return ByteArray(0)
            file.seek(offset)
            val count = minOf(maxBytes.toLong(), file.length() - offset).toInt()
            val buffer = ByteArray(count)
            file.readFully(buffer)
            return buffer
        }
    }

    private fun packagePaths(packageName: String): List<String> =
        exec(arrayOf("pm", "path", packageName))
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

    private fun exec(command: Array<String>): String {
        val process = Runtime.getRuntime().exec(command)
        val output = BufferedReader(InputStreamReader(process.inputStream)).use { it.readText() }
        val error = BufferedReader(InputStreamReader(process.errorStream)).use { it.readText() }
        if (!process.waitFor(10, TimeUnit.SECONDS)) {
            process.destroyForcibly()
            throw IllegalStateException("Privileged command timed out")
        }
        if (process.exitValue() != 0) {
            throw IllegalStateException("Privileged command failed: ${error.trim()}")
        }
        return output
    }
}
