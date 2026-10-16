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
 * The reference qe7.b() has two paths:
 * - flagged/old service: check API_V23 permission locally;
 * - newer service: use the cached service-side permission result.
 *
 * The original le7 flag and service-side binder method are private to the
 * decompiled implementation, so the public Shizuku API can only approximate
 * those branches; that limitation is intentionally explicit here.
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

    /** qe7.a(): return -1 if querying the service version fails. */
    fun serviceVersion(): Int = try {
        Shizuku.getVersion()
    } catch (exception: Exception) {
        Log.e(TAG, "getVersionSafe", exception)
        -1
    }

    /** Approximation of jr7.e() = le7.f() && qe7.b(). */
    fun isAvailable(): Boolean {
        if (!runCatching { Shizuku.pingBinder() }.getOrDefault(false)) {
            remotePermissionGranted = false
            return false
        }

        val version = serviceVersion()
        if (version < MIN_REMOTE_PERMISSION_VERSION) {
            // qe7.b() uses Context.checkSelfPermission(API_V23) in this branch.
            // Shizuku.checkSelfPermission() is the closest public permission gate.
            return try {
                Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
            } catch (_: SecurityException) {
                false
            } catch (_: IllegalStateException) {
                false
            }
        }

        // qe7.b() calls le7.h().f() and caches the result in le7.e. The
        // service-side method isn't exposed by this public API, so use the
        // API_V23 remote permission check as a conservative compatibility proxy.
        if (remotePermissionGranted) return true
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
