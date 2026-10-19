package com.bareapps.rootservice

import android.app.Service
import android.content.Intent
import android.os.IBinder

/** Android Service wrapper required by Shizuku's user-service binding API. */
class SbaRootAndroidService : Service() {
    private var binder: SbaRootService? = null

    override fun onBind(intent: Intent?): IBinder {
        return (binder ?: SbaRootService().also { binder = it }) as IBinder
    }

    override fun onDestroy() {
        binder?.close()
        binder = null
        super.onDestroy()
    }
}
