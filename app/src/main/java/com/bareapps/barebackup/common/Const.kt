package com.bareapps.barebackup.common

import android.app.ActivityManager
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Environment
import android.util.Log
import defpackage.b67
import defpackage.dj7
import defpackage.f13
import defpackage.f51
import defpackage.nc3
import defpackage.nq7
import defpackage.q63
import defpackage.rs9
import defpackage.vr6
import defpackage.x50
import java.io.File
import java.io.FileOutputStream

/**
 * Small subset of the reference Const API required by BareApp's lifecycle and crash handling.
 * App-specific context is supplied by BareApp rather than the old SwiftApp singleton.
 */
object Const {
    @JvmStatic
    fun x(context: Context) {
        val intent = Intent(Intent.ACTION_MAIN)
            .addCategory(Intent.CATEGORY_HOME)
            .setFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        context.startActivity(intent)
    }

    @JvmStatic
    fun g(reason: String, logReason: Boolean) {
        if (logReason) {
            vr6.INSTANCE.i("Const", "exit called with reason=$reason", null)
        }
        if (b67.c() && reason.isNotEmpty()) {
            val activityManager = BareAppContext.application
                ?.getSystemService(ActivityManager::class.java)
            if (activityManager != null) {
                try {
                    activityManager.setProcessStateSummary(reason.toByteArray(f51.a))
                } catch (e: Exception) {
                    val message = e.message
                    if (message != null && nq7.Z(message, "too large", false)) {
                        val shortened = reason.take((reason.length - 10).coerceAtLeast(0))
                        g(shortened, false)
                        throw IllegalStateException("Unable to terminate process after shortening exit reason", e)
                    }
                }
            }
        }
        throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.")
    }

    @JvmStatic
    fun U(stackTrace: String) {
        val context = BareAppContext.application ?: return
        val externalFilesDir = context.getExternalFilesDir(null)
        val privateErrorFile = externalFilesDir?.let { nc3.U(it, "error.txt") }
        val publicErrorFile = File(
            File(Environment.getExternalStorageDirectory(), "SwiftBackup"),
            "error.txt"
        )
        for (file in x50.p0(arrayOf(privateErrorFile, publicErrorFile)).filterNotNull()) {
            try {
                f13.b(file)
                FileOutputStream(file).use { output ->
                    nc3.X(output, stackTrace, f51.a)
                }
                vr6.INSTANCE.i("Const", "Wrote error stacktrace at $file", null)
            } catch (_: Exception) {
                // Crash reporting must not throw while handling another failure.
            }
        }
    }

    @JvmStatic
    fun C(receiver: BroadcastReceiver, filter: IntentFilter) {
        try {
            val context = BareAppContext.application ?: return
            context.registerReceiver(receiver, filter)
        } catch (e: Exception) {
            Log.e("Const", "registerReceiver: ", e)
        }
    }
}

/** Application context bridge set by BareApp.onCreate(). */
internal object BareAppContext {
    @Volatile
    var application: Context? = null
}
