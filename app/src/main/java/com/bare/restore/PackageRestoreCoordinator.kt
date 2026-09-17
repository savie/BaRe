package com.bare.restore

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageInstaller
import android.os.Build
import kotlinx.coroutines.suspendCancellableCoroutine
import java.io.File
import kotlin.coroutines.resume

class PackageRestoreCoordinator(private val context: Context) {
    suspend fun restore(archive: File): RestoreResult {
        val staging = File(
            context.cacheDir,
            "restore-${System.currentTimeMillis()}-${archive.name.hashCode().toUInt()}",
        )
        return runCatching {
            val payload = BackupArchiveReader().extractVerified(archive, staging)
            try {
                install(payload)
            } finally {
                payload.stagingDir.deleteRecursively()
            }
        }.getOrElse {
            RestoreResult.Failed("Restore failed: ${it.message ?: it::class.java.simpleName}", it)
        }
    }

    private suspend fun install(payload: RestorePayload): RestoreResult =
        suspendCancellableCoroutine { continuation ->
            val packageInstaller = context.packageManager.packageInstaller
            val params = PackageInstaller.SessionParams(
                PackageInstaller.SessionParams.MODE_FULL_INSTALL,
            ).apply {
                setSize(payload.files.sumOf { it.length() })
                setAppPackageName(payload.packageName)
            }
            val sessionId = try {
                packageInstaller.createSession(params)
            } catch (t: Throwable) {
                continuation.resume(RestoreResult.Failed("Unable to create install session: ${t.message}", t))
                return@suspendCancellableCoroutine
            }
            val session = packageInstaller.openSession(sessionId)
            val action = "com.bare.restore.$sessionId"
            val filter = IntentFilter(action)
            val receiver = object : BroadcastReceiver() {
                override fun onReceive(context: Context, intent: Intent) {
                    val status = intent.getIntExtra(
                        PackageInstaller.EXTRA_STATUS,
                        PackageInstaller.STATUS_FAILURE,
                    )
                    val message = intent.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE).orEmpty()
                    val result = if (status == PackageInstaller.STATUS_SUCCESS) {
                        RestoreResult.Success(payload.packageName, "Package restore installed successfully")
                    } else {
                        RestoreResult.Failed("Package install rejected: ${message.ifBlank { "status=$status" }}")
                    }
                    runCatching { context.unregisterReceiver(this) }
                    runCatching { session.close() }
                    if (continuation.isActive) continuation.resume(result)
                }
            }

            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(receiver, filter, Context.RECEIVER_NOT_EXPORTED)
            } else {
                @Suppress("UnspecifiedRegisterReceiverFlag")
                context.registerReceiver(receiver, filter)
            }

            continuation.invokeOnCancellation {
                runCatching { context.unregisterReceiver(receiver) }
                runCatching { session.abandon() }
                runCatching { session.close() }
            }

            try {
                payload.files.sortedBy { it.name != "base.apk" }.forEach { file ->
                    session.openWrite(file.name, 0, file.length()).use { output ->
                        file.inputStream().use { input -> input.copyTo(output) }
                        session.fsync(output)
                    }
                }
                val intent = Intent(action).setPackage(context.packageName)
                val pendingIntent = PendingIntent.getBroadcast(
                    context,
                    sessionId,
                    intent,
                    PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE,
                )
                session.commit(pendingIntent.intentSender)
            } catch (t: Throwable) {
                runCatching { context.unregisterReceiver(receiver) }
                runCatching { session.abandon() }
                runCatching { session.close() }
                if (continuation.isActive) {
                    continuation.resume(RestoreResult.Failed("Unable to submit install session: ${t.message}", t))
                }
            }
        }
}
