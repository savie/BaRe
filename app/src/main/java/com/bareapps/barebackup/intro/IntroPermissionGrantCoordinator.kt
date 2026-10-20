package com.bareapps.barebackup.intro

import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import com.topjohnwu.superuser.Shell
import rikka.shizuku.Shizuku
import java.util.concurrent.TimeUnit

/**
 * Grants the same first-run permissions that the intro's Root/Shizuku action is meant to cover.
 * Commands are fixed Android permission/app-op operations; no user-provided shell text is accepted.
 */
internal object IntroPermissionGrantCoordinator {
    private const val TAG = "IntroPermissionGrant"
    private const val SHIZUKU_MANAGER_PACKAGE = "moe.shizuku.privileged.api"

    data class Attempt(
        val available: Boolean,
        val attempted: Int = 0,
        val failed: List<String> = emptyList(),
    ) {
        val succeeded: Boolean get() = available && failed.isEmpty()
    }

    fun isShizukuRunning(): Boolean = try {
        Shizuku.pingBinder()
    } catch (_: Exception) {
        false
    }

    fun hasShizukuPermission(): Boolean = try {
        isShizukuRunning() && Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED
    } catch (_: Exception) {
        false
    }

    fun hasShizukuManager(context: Context): Boolean = try {
        context.packageManager.getLaunchIntentForPackage(SHIZUKU_MANAGER_PACKAGE) != null
    } catch (_: Exception) {
        false
    }

    fun launchShizukuManager(context: Context): Boolean {
        return try {
            val intent = context.packageManager.getLaunchIntentForPackage(SHIZUKU_MANAGER_PACKAGE)
                ?: return false
            intent.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK)
            context.startActivity(intent)
            true
        } catch (error: Exception) {
            Log.w(TAG, "Unable to open Shizuku manager", error)
            false
        }
    }

    fun grantWithRoot(context: Context): Attempt {
        val shell = try {
            Shell.getShell()
        } catch (error: Exception) {
            Log.w(TAG, "Unable to initialize root shell", error)
            return Attempt(available = false)
        }
        if (!shell.isRoot) return Attempt(available = false)

        val commands = commandsFor(context)
        val failed = ArrayList<String>()
        commands.forEach { command ->
            try {
                val result = Shell.cmd(command.command).exec()
                if (!result.isSuccess) {
                    failed += command.label
                    Log.w(TAG, "Root permission command failed for ${command.label}: ${result.out}")
                }
            } catch (error: Exception) {
                failed += command.label
                Log.w(TAG, "Root permission command threw for ${command.label}", error)
            }
        }
        return Attempt(available = true, attempted = commands.size, failed = failed)
    }

    fun grantWithShizuku(context: Context): Attempt {
        if (!hasShizukuPermission()) return Attempt(available = false)
        val commands = commandsFor(context)
        val failed = ArrayList<String>()
        commands.forEach { command ->
            try {
                val process = Shizuku.newProcess(
                    arrayOf("sh", "-c", command.command + " 2>&1"),
                    null,
                    null,
                )
                val finished = process.waitFor(15, TimeUnit.SECONDS)
                if (!finished) {
                    process.destroyForcibly()
                    failed += command.label
                    Log.w(TAG, "Shizuku permission command timed out for ${command.label}")
                } else {
                    val output = process.inputStream.bufferedReader().use { it.readText() }
                    if (process.exitValue() != 0) {
                        failed += command.label
                        Log.w(TAG, "Shizuku permission command failed for ${command.label}: $output")
                    }
                }
            } catch (error: Exception) {
                failed += command.label
                Log.w(TAG, "Shizuku permission command threw for ${command.label}", error)
            }
        }
        return Attempt(available = true, attempted = commands.size, failed = failed)
    }

    private data class GrantCommand(val label: String, val command: String)

    private fun commandsFor(context: Context): List<GrantCommand> {
        val packageName = shellQuote(context.packageName)
        val commands = ArrayList<GrantCommand>()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            commands += GrantCommand(
                "All files access",
                "appops set $packageName android:manage_external_storage allow",
            )
        } else {
            commands += GrantCommand(
                "Read external storage",
                "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
            )
            commands += GrantCommand(
                "Write external storage",
                "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE",
            )
        }

        val runtimePermissions = buildList {
            add("android.permission.READ_SMS")
            add("android.permission.WRITE_SMS")
            add("android.permission.READ_CONTACTS")
            add("android.permission.READ_CALL_LOG")
            add("android.permission.WRITE_CALL_LOG")
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                add("android.permission.POST_NOTIFICATIONS")
            }
            if (Build.VERSION.SDK_INT >= 36) {
                add("android.permission.ACCESS_LOCAL_NETWORK")
            }
        }
        runtimePermissions.forEach { permission ->
            commands += GrantCommand(
                permission.substringAfterLast('.'),
                "pm grant $packageName ${shellQuote(permission)}",
            )
        }

        if (isXiaomiFamily() && declaresInstalledAppsPermission(context)) {
            commands += GrantCommand(
                "Installed apps visibility",
                "pm grant $packageName com.android.permission.GET_INSTALLED_APPS",
            )
        }

        return commands
    }

    private fun declaresInstalledAppsPermission(context: Context): Boolean = try {
        context.packageManager.getPermissionInfo("com.android.permission.GET_INSTALLED_APPS", 0)
        true
    } catch (_: PackageManager.NameNotFoundException) {
        false
    } catch (_: RuntimeException) {
        false
    }

    private fun isXiaomiFamily(): Boolean {
        val manufacturer = Build.MANUFACTURER.orEmpty().lowercase()
        return manufacturer.contains("xiaomi") ||
            manufacturer.contains("redmi") ||
            manufacturer.contains("poco")
    }

    private fun shellQuote(value: String): String = "'" + value.replace("'", "'\\''") + "'"
}
