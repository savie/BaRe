package com.bare.feature.apps

import java.util.concurrent.TimeUnit

/**
 * Executes package-management operations through an already-authorized root shell.
 *
 * This never grants root access. It only uses `su` when the device grants BaRe
 * an existing root session and reports success from the actual command result.
 */
object RootAppActionExecutor {
    private const val TIMEOUT_SECONDS = 5L

    fun isRootAvailable(): Boolean = run("id -u")?.trim() == "0"

    fun disable(packageName: String): Boolean =
        run("pm disable-user --user 0 $packageName")?.isNotBlank() == true

    fun enable(packageName: String): Boolean =
        run("pm enable $packageName")?.isNotBlank() == true

    fun forceStop(packageName: String): Boolean =
        run("am force-stop $packageName") != null

    fun clearData(packageName: String): Boolean =
        run("pm clear $packageName")?.contains("Success", ignoreCase = true) == true

    fun setBatteryOptimizationExempt(packageName: String, exempt: Boolean): Boolean =
        run("cmd deviceidle whitelist ${if (exempt) "+" else "-"}$packageName") != null

    private fun run(command: String): String? {
        return runCatching {
            val process = ProcessBuilder("su", "-c", command)
                .redirectErrorStream(true)
                .start()
            val completed = process.waitFor(TIMEOUT_SECONDS, TimeUnit.SECONDS)
            if (!completed) {
                process.destroyForcibly()
                return null
            }
            if (process.exitValue() != 0) return null
            process.inputStream.bufferedReader().use { it.readText() }
        }.getOrNull()
    }
}
