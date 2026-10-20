package com.bareapps.barebackup

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.net.NetworkInfo
import android.util.Log
import androidx.core.content.ContextCompat

/**
 * Process-wide connectivity-change observer ported from SwiftApp's zs7/r80/rx path.
 *
 * The reference listens for CONNECTIVITY_CHANGE, compares the delivered active
 * NetworkInfo with the previous value, and logs whether the active network uses
 * Wi-Fi or Ethernet. This tracker intentionally reports that transport state
 * separately from Firebase Realtime Database connectivity.
 */
internal object ConnectivityTracker {
    private const val TAG = "ConnectivityTracker"
    private const val ACTION_CONNECTIVITY_CHANGE = "android.net.conn.CONNECTIVITY_CHANGE"

    @Volatile
    var isWifiOrEthernetConnected: Boolean = false
        private set

    @Volatile
    private var registered = false

    private var hasPreviousNetworkInfo = false
    private var previousNetworkInfo: NetworkInfo? = null

    private val receiver = object : BroadcastReceiver() {
        @Suppress("DEPRECATION")
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action != ACTION_CONNECTIVITY_CHANGE) return
            val appContext = context?.applicationContext ?: return
            val manager = appContext.getSystemService(ConnectivityManager::class.java) ?: return
            val networkInfo = manager.activeNetworkInfo
            recordNetworkChange(manager, networkInfo)
        }
    }

    @Synchronized
    fun register(context: Context) {
        if (registered) return
        val filter = IntentFilter(ACTION_CONNECTIVITY_CHANGE)
        try {
            ContextCompat.registerReceiver(
                context.applicationContext,
                receiver,
                filter,
                ContextCompat.RECEIVER_EXPORTED,
            )
            registered = true
        } catch (error: Exception) {
            Log.e(TAG, "Unable to register connectivity-change receiver", error)
        }
    }

    @Suppress("DEPRECATION")
    @Synchronized
    private fun recordNetworkChange(
        manager: ConnectivityManager,
        networkInfo: NetworkInfo?,
    ) {
        if (hasPreviousNetworkInfo && previousNetworkInfo == networkInfo) return

        hasPreviousNetworkInfo = true
        previousNetworkInfo = networkInfo
        isWifiOrEthernetConnected = try {
            val activeNetwork = manager.activeNetwork
            val capabilities = activeNetwork?.let(manager::getNetworkCapabilities)
            capabilities?.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) == true ||
                capabilities?.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) == true
        } catch (error: RuntimeException) {
            Log.w(TAG, "Unable to determine active network transports", error)
            false
        }

        Log.i(
            TAG,
            "Network change: $networkInfo. isWifiOrEthernetConnected: $isWifiOrEthernetConnected",
        )
    }
}
