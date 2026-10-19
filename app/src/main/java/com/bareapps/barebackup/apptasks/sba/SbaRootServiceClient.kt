package com.bareapps.barebackup.apptasks.sba

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.IBinder
import com.bareapps.rootservice.IRootAidlInterface
import com.bareapps.rootservice.SbaRootService
import rikka.shizuku.Shizuku

/**
 * Owns the Shizuku user-service binding for the SBA Binder. Callers must obtain
 * Shizuku permission before binding and close this client when the feature ends.
 */
class SbaRootServiceClient(
    context: Context,
    private val onConnected: (IRootAidlInterface) -> Unit,
    private val onDisconnected: () -> Unit = {},
) : AutoCloseable {
    private val appContext = context.applicationContext
    private val args = Shizuku.UserServiceArgs(ComponentName(appContext, com.bareapps.rootservice.SbaRootAndroidService::class.java))
        .daemon(false)
        .processNameSuffix("sba")
        .debuggable(false)
        .version(1)

    @Volatile
    var service: IRootAidlInterface? = null
        private set

    @Volatile
    private var bound = false

    private val connection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, binder: IBinder?) {
            val remote = IRootAidlInterface.Stub.asInterface(binder) ?: run {
                service = null
                onDisconnected()
                return
            }
            service = remote
            onConnected(remote)
        }

        override fun onServiceDisconnected(name: ComponentName?) {
            service = null
            onDisconnected()
        }

        override fun onBindingDied(name: ComponentName?) {
            service = null
            bound = false
            onDisconnected()
        }

        override fun onNullBinding(name: ComponentName?) {
            service = null
            bound = false
            onDisconnected()
        }
    }

    fun bind(): Boolean {
        if (bound) return true
        if (!Shizuku.pingBinder()) return false
        if (Shizuku.checkSelfPermission() != PackageManager.PERMISSION_GRANTED) return false
        Shizuku.bindUserService(args, connection)
        bound = true
        return true
    }

    override fun close() {
        if (!bound) return
        bound = false
        service = null
        try {
            Shizuku.unbindUserService(args, connection, true)
        } finally {
            onDisconnected()
        }
    }
}
