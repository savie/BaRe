package com.bareapps.filesystem

import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import rikka.shizuku.Shizuku
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.OutputStreamWriter
import java.util.concurrent.CopyOnWriteArrayList
import kotlin.concurrent.thread

/**
 * Filesystem command-execution port for reference defpackage.qe7.
 *
 * The reference starts a Shizuku process using "sh", writes commands joined
 * with " ; ", collects stdout/stderr, waits for exit, and returns output plus
 * exit status.
 */
internal object ShizukuCommandExecutor {

    private const val TAG = "ShizukuHelper"

    data class CommandResult(
        val output: List<String>,
        val exitCode: Int
    )

    fun serviceVersion(): Int = try {
        Shizuku.getVersion()
    } catch (exception: Exception) {
        Log.e(TAG, "getVersionSafe", exception)
        -1
    }

    fun isAvailable(): Boolean {
        if (!runCatching { Shizuku.pingBinder() }.getOrDefault(false)) return false
        return try {
            if (Build.VERSION.SDK_INT >= 23) {
                Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
            } else {
                Shizuku.checkRemotePermission("moe.shizuku.manager.permission.API_V23") ==
                    PackageManager.PERMISSION_GRANTED
            }
        } catch (_: SecurityException) {
            false
        } catch (_: IllegalStateException) {
            false
        }
    }

    fun execute(commands: Array<out String>): CommandResult {
        require(commands.isNotEmpty()) { "commands must not be empty" }
        check(isAvailable()) { "Shizuku is unavailable or permission has not been granted" }

        val process = Shizuku.newProcess(arrayOf("sh"), null, null)
        val output = CopyOnWriteArrayList<String>()
        val stdout = thread(name = "bare-shizuku-stdout") {
            BufferedReader(InputStreamReader(process.inputStream)).useLines { lines ->
                lines.forEach(output::add)
            }
        }
        val stderr = thread(name = "bare-shizuku-stderr") {
            BufferedReader(InputStreamReader(process.errorStream)).useLines { lines ->
                lines.forEach(output::add)
            }
        }

        try {
            OutputStreamWriter(process.outputStream).use { writer ->
                writer.write(commands.joinToString(" ; "))
                writer.flush()
            }
            val exitCode = process.waitFor()
            stdout.join()
            stderr.join()
            return CommandResult(output.toList(), exitCode)
        } finally {
            runCatching { process.destroy() }
            stdout.interrupt()
            stderr.interrupt()
        }
    }
}
