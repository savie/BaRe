package com.bareapps.barebackup

import android.app.Application
import androidx.annotation.Keep

/**
 * Application foundation for BΛR☰ native authentication/network contracts.
 *
 * The native method signatures and client-ID values follow the SwiftBackup
 * 5.1.0 (620) reference. JNI symbols are intentionally bound to BΛR☰'s actual
 * Application class rather than retaining the reference package name.
 */
@Keep
class BareApp : Application() {
    override fun onCreate() {
        super.onCreate()
        instance = this
        System.loadLibrary("native-lib")
    }

    @Keep
    external fun getGoogleAuthAndroidClientId(): String

    @Keep
    external fun getGoogleAuthWebClientId(): String

    /**
     * Checks the reference-style TCP/network-policy condition.
     *
     * @param host destination host name or address
     * @param port destination TCP port (1..65535)
     * @param timeoutMs timeout supplied to the native connect/poll path
     */
    @Keep
    external fun isLocalNetworkTcpBlockedByPermission(
        host: String,
        port: Int,
        timeoutMs: Int,
    ): Boolean

    companion object {
        @Volatile
        private var instance: BareApp? = null

        @JvmStatic
        fun getInstance(): BareApp = checkNotNull(instance) {
            "BareApp has not been initialized"
        }
    }
}
