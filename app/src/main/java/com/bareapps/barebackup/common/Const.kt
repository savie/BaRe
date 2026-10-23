package com.bareapps.barebackup.common

import android.content.BroadcastReceiver
import android.content.Context
import android.content.IntentFilter
import android.util.Log
import com.bareapps.barebackup.BareAppContext

/**
 * Small app-owned compatibility surface used by the application bootstrap.
 * Keeps receiver registration and fatal-state reporting inside BΛR☰.
 */
object Const {
    @JvmStatic
    fun C(receiver: BroadcastReceiver, filter: IntentFilter) {
        val context = BareAppContext.application ?: return
        try {
            context.registerReceiver(receiver, filter)
        } catch (e: Exception) {
            Log.w("Const", "Unable to register receiver", e)
        }
    }

    @JvmStatic
    fun U(message: String) {
        Log.e("Const", message)
    }

    @JvmStatic
    fun x(context: Context) {
        // Reserved for app-level cleanup. Do not terminate the process here;
        // the caller owns the crash/restart policy.
        context.applicationContext
    }

    @JvmStatic
    fun g(message: String, fatal: Boolean) {
        if (fatal) Log.e("Const", message) else Log.w("Const", message)
    }
}
