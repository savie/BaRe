package com.bare.capability

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.IBinder
import com.bare.core.domain.PrivilegeMode
import rikka.shizuku.Shizuku
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException
import kotlinx.coroutines.suspendCancellableCoroutine

class ShizukuCapabilityProvider(private val context: Context) {
    fun isAvailable(): Boolean = Shizuku.pingBinder()

    fun isAuthorized(): Boolean =
        isAvailable() && Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED

    suspend fun probe(packageName: String): ShizukuProbeResult = {
        if (!isAvailable()) {
            return@probe ShizukuProbeResult.Failed("Shizuku binder is not available.")
        }
        if (!isAuthorized()) {
            return@probe ShizukuProbeResult.Failed("Shizuku permission is not granted.")
        }

        val connection = ProbeConnection()
        val args = Shizuku.UserServiceArgs(
            ComponentName(context, ShizukuUserService::class.java),
        )
            .processNameSuffix("privileged")
            .tag("bare-privileged-probe")
            .version(1)
            .daemon(false)

        try {
            val probe = bind(args, connection)
            val identity = probe.getIdentity()
            val packagePaths = probe.getPackagePaths(packageName).toList()
            Shizuku.unbindUserService(args, connection, true)
            ShizukuProbeResult.Success(identity, packagePaths)
        } catch (error: Throwable) {
            runCatching { Shizuku.unbindUserService(args, connection, true) }
            ShizukuProbeResult.Failed(error.message ?: error::class.java.simpleName)
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
    data class Success(
        val identity: String,
        val packagePaths: List<String>,
    ) : ShizukuProbeResult

    data class Failed(val reason: String) : ShizukuProbeResult
}
