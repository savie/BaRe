package com.bare.capability

import java.io.BufferedReader
import java.io.InputStreamReader
import java.util.concurrent.TimeUnit

class ShizukuUserService : IPrivilegedProbe.Stub() {
    override fun getIdentity(): String = exec(arrayOf("id")).trim()

    override fun getPackagePaths(packageName: String): Array<String> {
        require(packageName.matches(Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+"))) {
            "Invalid package name"
        }
        return exec(arrayOf("pm", "path", packageName))
            .lineSequence()
            .map(String::trim)
            .filter { it.startsWith("package:") }
            .map { it.removePrefix("package:") }
            .filter(String::isNotBlank)
            .toList()
            .toTypedArray()
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
