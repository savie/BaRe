package com.bareapps.filesystem

import android.content.pm.PackageManager
import android.util.Log
import rikka.shizuku.Shizuku
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.OutputStreamWriter
import java.util.concurrent.CopyOnWriteArrayList
import kotlin.concurrent.thread

/**
 * Filesystem command-execution port for reference defpackage.qe7 and its
 * service/permission gate in defpackage.le7.
 *
 * The reference first checks the binder/service state and self permission;
 * for service versions that support the remote permission path, it can fall
 * back to that permission check and cache a successful result.
 */
internal object ShizukuCommandExecutor {

    private const val TAG = "ShizukuHelper"
    private const val MIN_REMOTE_PERMISSION_VERSION = 11
    private const val API_PERMISSION = "moe.shizuku.manager.permission.API_V23"

    @Volatile
    private var remotePermissionGranted: Boolean = false

    data class CommandResult(
        val output: List<String>,
        val exitCode: Int
    )

    /** Mirrors qe7.a()/le7.d(): version failures return -1 at this adapter boundary. */
    fun serviceVersion(): Int = try {
        Shizuku.getVersion()
    } catch (exception: Exception) {
        Log.e(TAG, "getVersionSafe", exception)
        -1
    }

    /** Mirrors the practical gate in jr7.e(), with the le7 remote-permission fallback. */
    fun isAvailable(): Boolean {
        if (!runCatching { Shizuku.pingBinder() }.getOrDefault(false)) {
            remotePermissionGranted = false
            return false
        }

        val version = serviceVersion()
        val selfPermission = try {
            Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
        } catch (_: SecurityException) {
            false
        } catch (_: IllegalStateException) {
            false
        }

        if (selfPermission) return true

        // le7.e caches a successful remote permission check. Reference takes
        // this branch for old/flagged service states; for newer services we
        // also retain the remote check as a fallback when self permission fails.
        if (remotePermissionGranted) return true
        if (version >= MIN_REMOTE_PERMISSION_VERSION || version < MIN_REMOTE_PERMISSION_VERSION) {
            val granted = try {
                Shizuku.checkRemotePermission(API_PERMISSION) == PackageManager.PERMISSION_GRANTED
            } catch (_: SecurityException) {
                false
            } catch (_: IllegalStateException) {
                false
            }
            if (granted) remotePermissionGranted = true
            return granted
        }
        return false
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
