package com.bare.capability

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.IBinder
import rikka.shizuku.Shizuku
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException
import kotlinx.coroutines.suspendCancellableCoroutine

class ShizukuCapabilityProvider(private val context: Context) {
    fun isAvailable(): Boolean = Shizuku.pingBinder()

    fun isAuthorized(): Boolean =
        isAvailable() && Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED

    suspend fun probe(packageName: String): ShizukuProbeResult {
        if (!isAvailable()) return ShizukuProbeResult.Failed("Shizuku binder is not available.")
        if (!isAuthorized()) return ShizukuProbeResult.Failed("Shizuku permission is not granted.")

        return withProbe { probe ->
            val identity = probe.getIdentity()
            val packagePaths = probe.getPackagePaths(packageName).toList()
            ShizukuProbeResult.Success(identity, packagePaths)
        }
    }

    suspend fun copyPackageApks(packageName: String, destinationDir: File): ShizukuCopyResult {
        if (!isAvailable()) return ShizukuCopyResult.Failed("Shizuku binder is not available.")
        if (!isAuthorized()) return ShizukuCopyResult.Failed("Shizuku permission is not granted.")
        require(packageName.matches(Regex("[A-Za-z0-9_]+(?:\\.[A-Za-z0-9_]+)+"))) {
            "Invalid package name"
        }
        if (!destinationDir.exists() && !destinationDir.mkdirs()) {
            return ShizukuCopyResult.Failed("Unable to create privileged staging directory.")
        }

        return runCatching {
            withProbe { probe ->
                val paths = probe.getPackagePaths(packageName).toList()
                val files = paths.mapIndexed { index, path ->
                    val name = if (index == 0) "base.apk" else "split-$index.apk"
                    val destination = File(destinationDir, name)
                    FileOutputStream(destination).use { output ->
                        var offset = 0L
                        while (true) {
                            val chunk = probe.readFileChunk(packageName, path, offset, 65536)
                            if (chunk.isEmpty()) break
                            output.write(chunk)
                            offset += chunk.size
                        }
                    }
                    check(destination.isFile && destination.length() > 0) {
                        "Privileged APK copy produced an empty file"
                    }
                    destination
                }
                ShizukuCopyResult.Success(files)
            }
        }.getOrElse {
            destinationDir.deleteRecursively()
            ShizukuCopyResult.Failed(it.message ?: it::class.java.simpleName)
        }
    }

    private suspend fun <T> withProbe(block: (IPrivilegedProbe) -> T): T =
        if (!isAvailable() || !isAuthorized()) {
            throw IllegalStateException("Shizuku is unavailable or unauthorized")
        } else {
            val connection = ProbeConnection()
            val args = Shizuku.UserServiceArgs(
                ComponentName(context, ShizukuUserService::class.java),
            )
                .processNameSuffix("privileged")
                .tag("bare-privileged-backup")
                .version(2)
                .daemon(false)
            try {
                val probe = bind(args, connection)
                block(probe)
            } finally {
                runCatching { Shizuku.unbindUserService(args, connection, true) }
            }
        }

    private suspend fun bind(
        args: Shizuku.UserServiceArgs,
        connection: ProbeConnection,
    ): IPrivilegedProbe = suspendCancellableCoroutine { continuation ->
        connection.onConnected = { binder ->
            if (continuation.isActive) continuation.resume(IPrivilegedProbe.Stub.asInterface(binder))
        }
        connection.onDisconnected = {
            if (continuation.isActive) continuation.resumeWithException(
                IllegalStateException("Shizuku user service disconnected"),
            )
        }
        try {
            Shizuku.bindUserService(args, connection)
        } catch (error: Throwable) {
            continuation.resumeWithException(error)
        }
        continuation.invokeOnCancellation {
            runCatching { Shizuku.unbindUserService(args, connection, true) }
        }
    }

    private class ProbeConnection : ServiceConnection {
        var onConnected: ((IBinder) -> Unit)? = null
        var onDisconnected: (() -> Unit)? = null

        override fun onServiceConnected(name: ComponentName, service: IBinder) {
            onConnected?.invoke(service)
        }

        override fun onServiceDisconnected(name: ComponentName) {
            onDisconnected?.invoke()
        }
    }
}

sealed interface ShizukuProbeResult {
    data class Success(val identity: String, val packagePaths: List<String>) : ShizukuProbeResult
    data class Failed(val reason: String) : ShizukuProbeResult
}

sealed interface ShizukuCopyResult {
    data class Success(val files: List<File>) : ShizukuCopyResult
    data class Failed(val reason: String) : ShizukuCopyResult
}
