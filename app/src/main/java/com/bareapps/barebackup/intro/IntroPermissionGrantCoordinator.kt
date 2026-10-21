package com.bareapps.barebackup.intro

import android.content.Context
import android.content.ComponentName
import android.content.pm.PackageManager
import android.os.Build
import android.os.IBinder
import android.os.RemoteException
import android.util.Log
import com.bareapps.rootservice.IRootAidlInterface
import com.bareapps.rootservice.SbaRootService
import java.util.concurrent.CountDownLatch
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
        if (!shell.isRoot) {
            Log.w(
                TAG,
                "libsu returned a non-root shell; verify that KSU-Next granted superuser access to this exact installed BΛR☰ APK",
            )
            return Attempt(available = false)
        }
        Log.i(TAG, "libsu root shell acquired; starting permission grants")

        val commands = commandsFor(context)
        val failed = ArrayList<String>()
        commands.forEach { command ->
            try {
                val result = Shell.cmd(command.command).exec()
                if (!result.isSuccess) {
                    failed += command.label
                    Log.w(
                        TAG,
                        "Root permission command failed for ${command.label}; exitCode=${result.code}; stdout=${result.out}; stderr=${result.err}",
                    )
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
        val connected = CountDownLatch(1)
        var remote: IRootAidlInterface? = null
        val args = Shizuku.UserServiceArgs(ComponentName(context.applicationContext, SbaRootService::class.java))
            .daemon(false)
            .processNameSuffix("intro-permissions")
            .debuggable(false)
            .version(1)
        val connection = object : android.content.ServiceConnection {
            override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
                remote = IRootAidlInterface.Stub.asInterface(binder)
                connected.countDown()
            }
            override fun onServiceDisconnected(name: ComponentName?) {
                remote = null
            }
            override fun onBindingDied(name: ComponentName?) {
                remote = null
                connected.countDown()
            }
            override fun onNullBinding(name: ComponentName?) {
                remote = null
                connected.countDown()
            }
        }
        var bound = false
        try {
            Shizuku.bindUserService(args, connection)
            bound = true
            if (!connected.await(10, TimeUnit.SECONDS) || remote == null) {
                return Attempt(available = true, attempted = 0, failed = commands.map { it.label })
            }
            commands.forEach { command ->
                try {
                    val result = remote!!.executeShellCommand(command.command)
                    val exitCode = result.substringBefore('\n').toIntOrNull() ?: -1
                    val output = result.substringAfter('\n', "")
                    if (exitCode != 0) {
                        failed += command.label
                        Log.w(TAG, "Shizuku permission command failed for ${command.label}: $output")
                    }
                } catch (error: Exception) {
                    failed += command.label
                    Log.w(TAG, "Shizuku permission command threw for ${command.label}", error)
                }
            }
        } catch (error: Exception) {
            Log.w(TAG, "Unable to bind Shizuku permission service", error)
            return Attempt(available = true, attempted = 0, failed = commands.map { it.label })
        } finally {
            if (bound) {
                try {
                    Shizuku.unbindUserService(args, connection, true)
                } catch (error: Exception) {
                    Log.w(TAG, "Unable to unbind Shizuku permission service", error)
                }
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
            add("android.permission.READ_CONTACTS")
            add("android.permission.READ_CALL_LOG")
            add("android.permission.WRITE_CALL_LOG")
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                add("android.permission.POST_NOTIFICATIONS")
            }
            // ACCESS_LOCAL_NETWORK is not a grantable runtime permission on all Android 16
            // builds. Do not issue pm grant for it: PackageManager rejects it as unknown
            // on devices where the permission is not defined, which makes the bulk grant
            // report a misleading generic permission error.

        }
        runtimePermissions.forEach { permission ->
            commands += GrantCommand(
                permission.substringAfterLast('.'),
                "pm grant $packageName ${shellQuote(permission)}",
            )
        }

        if (supportsInstalledAppsPermission(context)) {
            commands += GrantCommand(
                "Installed apps visibility",
                "pm grant $packageName com.android.permission.GET_INSTALLED_APPS",
            )
        }

        return commands
    }

    fun supportsInstalledAppsPermission(context: Context): Boolean =
        isXiaomiFamily() && declaresInstalledAppsPermission(context)

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
