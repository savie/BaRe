package com.bare.intro

import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import androidx.core.content.ContextCompat
import rikka.shizuku.Shizuku
import java.io.BufferedReader
import java.io.InputStreamReader
import java.lang.reflect.Method

object RootPermissionManager {
    const val SHIZUKU_REQUEST_CODE = 7401

    data class Result(
        val success: Boolean,
        val mechanism: String,
        val detail: String
    )

    fun shizukuAvailable(): Boolean =
        runCatching { Shizuku.pingBinder() }.getOrDefault(false)

    fun shizukuPermissionGranted(): Boolean =
        runCatching {
            Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
        }.getOrDefault(false)

    fun requestShizukuPermission() {
        Shizuku.requestPermission(SHIZUKU_REQUEST_CODE)
    }

    fun grantAll(context: Context, callback: (Result) -> Unit) {
        thisContext = context
        Thread {
            val root = runRootGrant(context)
            if (root.success) {
                callback(root)
                return@Thread
            }

            if (!shizukuAvailable() || !shizukuPermissionGranted()) {
                callback(
                    Result(
                        success = false,
                        mechanism = "none",
                        detail = root.detail
                    )
                )
                return@Thread
            }

            callback(runShizukuGrant(context))
        }.start()
    }

    private fun runRootGrant(context: Context): Result {
        return runCatching {
            val probe = ProcessBuilder("su", "-c", "id").redirectErrorStream(true).start()
            val probeOutput = probe.readAll()
            val probeCode = probe.waitFor()
            if (probeCode != 0 || !probeOutput.contains("uid=0")) {
                Result(false, "root", "Root access was not granted.")
            } else {
                runPrivilegedScript(
                    ProcessBuilder("su", "-c", grantScript(context)),
                    "root"
                )
            }
        }.getOrElse {
            Result(false, "root", it.message ?: "Root access is unavailable.")
        }
    }

    private fun runShizukuGrant(context: Context): Result {
        return runCatching {
            val method: Method = Shizuku::class.java.getDeclaredMethod(
                "newProcess",
                Array<String>::class.java,
                Array<String>::class.java,
                String::class.java
            )
            method.isAccessible = true
            val process = method.invoke(
                null,
                arrayOf("sh"),
                null,
                null
            ) as Process

            process.outputStream.bufferedWriter().use { writer ->
                writer.write(grantScript(context))
                writer.write("\nexit\n")
                writer.flush()
            }

            val output = process.readAll()
            val code = process.waitFor()
            if (code == 0 && verifyRequiredPermissions()) {
                Result(true, "shizuku", output.ifBlank { "Permissions granted." })
            } else {
                Result(false, "shizuku", output.ifBlank { "Shizuku command execution failed or permissions remain missing." })
            }
        }.getOrElse {
            Result(false, "shizuku", it.message ?: "Unable to execute commands through Shizuku.")
        }
    }

    private fun runPrivilegedScript(process: ProcessBuilder, mechanism: String): Result {
        val p = process.redirectErrorStream(true).start()
        val output = p.readAll()
        val code = p.waitFor()
        if (code != 0) {
            return Result(false, mechanism, output.ifBlank { "Permission grant command failed." })
        }
        return if (verifyRequiredPermissions()) {
            Result(true, mechanism, output.ifBlank { "Permissions granted." })
        } else {
            Result(false, mechanism, output.ifBlank { "The command ran, but not all required permissions were granted." })
        }
    }

    private fun grantScript(context: Context): String {
        val packageName = context.packageName
        val commands = mutableListOf(
            "appops set --uid $packageName MANAGE_EXTERNAL_STORAGE allow || true",
            "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE || true",
            "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE || true",
            "pm grant $packageName android.permission.READ_CONTACTS || true",
            "pm grant $packageName android.permission.WRITE_CONTACTS || true",
            "pm grant $packageName android.permission.READ_CALL_LOG || true",
            "pm grant $packageName android.permission.WRITE_CALL_LOG || true",
            "pm grant $packageName android.permission.READ_SMS || true",
            "pm grant $packageName android.permission.RECEIVE_SMS || true",
            "pm grant $packageName android.permission.SEND_SMS || true"
        )
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            commands += "pm grant $packageName android.permission.POST_NOTIFICATIONS || true"
        }
        commands += "pm grant $packageName com.android.permission.GET_INSTALLED_APPS || true"
        return commands.joinToString("\n")
    }

    private fun verifyRequiredPermissions(): Boolean {
        val storageGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            android.os.Environment.isExternalStorageManager()
        } else {
            ContextCompat.checkSelfPermission(thisContext, android.Manifest.permission.WRITE_EXTERNAL_STORAGE) ==
                PackageManager.PERMISSION_GRANTED
        }
        if (!storageGranted) return false

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU &&
            ContextCompat.checkSelfPermission(thisContext, android.Manifest.permission.POST_NOTIFICATIONS) !=
                PackageManager.PERMISSION_GRANTED
        ) return false

        val required = arrayOf(
            android.Manifest.permission.READ_CONTACTS,
            android.Manifest.permission.WRITE_CONTACTS,
            android.Manifest.permission.READ_CALL_LOG,
            android.Manifest.permission.WRITE_CALL_LOG,
            android.Manifest.permission.READ_SMS,
            android.Manifest.permission.RECEIVE_SMS,
            android.Manifest.permission.SEND_SMS
        )
        return required.all {
            ContextCompat.checkSelfPermission(thisContext, it) == PackageManager.PERMISSION_GRANTED
        }
    }

    private lateinit var thisContext: Context

    private fun Process.readAll(): String {
        return BufferedReader(InputStreamReader(inputStream)).use { reader ->
            buildString {
                reader.forEachLine { appendLine(it) }
            }
        }
    }
}
