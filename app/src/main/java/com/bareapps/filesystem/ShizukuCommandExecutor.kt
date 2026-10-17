package com.bareapps.filesystem

import android.content.pm.PackageManager
import android.util.Log
import rikka.shizuku.Shizuku
import java.io.BufferedReader
import java.io.InputStreamReader
import java.io.OutputStream
import java.nio.charset.StandardCharsets
import java.util.Arrays
import java.util.concurrent.CopyOnWriteArrayList
import kotlin.concurrent.thread

/**
 * Kotlin port of defpackage.qe7.
 *
 * The three source methods are all retained:
 * - a(): safe Shizuku service-version lookup.
 * - b(): permission check with the old/flagged-service and cached remote branches.
 * - c(): start "sh", concurrently drain stdout/stderr into one output list, write
 *   the joined command string, wait, join readers, interrupt them, and destroy.
 *
 * TODO(parity): qe7.b() reads le7.f/le7.e and invokes the private Binder interface
 * f94.f(). The public Shizuku API does not expose that exact internal state/method;
 * the API permission check below is the closest public equivalent.
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

    /** Port of qe7.a(). */
    fun serviceVersion(): Int {
        return try {
            Shizuku.getVersion()
        } catch (exception: Exception) {
            Log.e(TAG, "getVersionSafe", exception)
            -1
        }
    }

    /** Port of qe7.b(); internal le7/f94 state is represented as closely as public APIs allow. */
    fun isAvailable(): Boolean {
        val version = serviceVersion()

        // Source: if (le7.f || a() < 11), check API_V23 locally.
        // Shizuku's public permission method is used because qe7's original
        // Context accessor and le7.f flag are internal to the source app.
        if (version < MIN_REMOTE_PERMISSION_VERSION) {
            return try {
                Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
            } catch (exception: Exception) {
                Log.e(TAG, "checkSelfPermission", exception)
                false
            }
        }

        // Source: if (le7.e) return true; otherwise cache f94.f().
        if (remotePermissionGranted) return true

        val granted = try {
            Shizuku.checkRemotePermission(API_PERMISSION) == PackageManager.PERMISSION_GRANTED
        } catch (exception: Exception) {
            Log.e(TAG, "checkRemotePermission", exception)
            false
        }
        remotePermissionGranted = granted
        return granted
    }

    /** Port of qe7.c(). Empty command arrays are passed through, as in the Java source. */
    fun execute(commands: Array<out String>): CommandResult {
        // Source copies the incoming array before joining it.
        val copiedCommands = Arrays.copyOf(commands, commands.size)
        val output = CopyOnWriteArrayList<String>()

        val process = try {
            Shizuku.newProcess(arrayOf("sh"), null, null)
        } catch (exception: Exception) {
            throw IllegalStateException("Failed to start Shizuku process", exception)
        }

        val stdoutReader = thread(name = "bare-shizuku-stdout", start = false) {
            BufferedReader(InputStreamReader(process.inputStream, StandardCharsets.UTF_8)).use { reader ->
                while (true) {
                    val line = reader.readLine() ?: break
                    output.add(line)
                }
            }
        }
        var stderrReader: Thread? = null

        try {
            stdoutReader.start()

            stderrReader = thread(name = "bare-shizuku-stderr", start = false) {
                BufferedReader(InputStreamReader(process.errorStream, StandardCharsets.UTF_8)).use { reader ->
                    while (true) {
                        val line = reader.readLine() ?: break
                        output.add(line)
                    }
                }
            }
            stderrReader.start()

            // Source: x50.s0(62, " ; ", copiedCommands).getBytes(f51.a)
            // f51.a is UTF-8. The source writes once, flushes, then closes stdin.
            val commandBytes = copiedCommands.joinToString(separator = " ; ").toByteArray(StandardCharsets.UTF_8)
            process.outputStream.use { stream: OutputStream ->
                stream.write(commandBytes)
                stream.flush()
            }

            val exitCode = process.waitFor()
            stdoutReader.join()
            stderrReader.join()
            return CommandResult(output.toList(), exitCode)
        } finally {
            // Mirrors qe7's cleanup intent: interrupt readers and destroy process.
            // Source suppresses exceptions from this cleanup block.
            try {
                stdoutReader.interrupt()
                stderrReader?.interrupt()
                process.destroy()
            } catch (_: Exception) {
                // Exact source cleanup intentionally ignores Exception.
            }
        }
    }
}
