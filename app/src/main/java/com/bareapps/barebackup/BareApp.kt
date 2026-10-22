package com.bareapps.barebackup

import android.app.ActivityManager
import android.app.Application
import android.app.ApplicationExitInfo
import android.app.ApplicationStartInfo
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.SharedPreferences
import android.content.pm.PackageManager
import android.content.pm.Signature
import android.content.pm.SigningInfo
import android.content.res.Configuration
import android.media.AudioAttributes
import android.net.Uri
import android.os.LocaleList
import android.os.StrictMode
import android.util.Base64
import android.util.Log
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor
import com.topjohnwu.superuser.Shell
import defpackage.a45
import defpackage.b67
import defpackage.bs4
import defpackage.cy0
import defpackage.cz4
import defpackage.d45
import defpackage.dj7
import defpackage.e10
import defpackage.ex6
import defpackage.f13
import defpackage.f51
import defpackage.f6
import defpackage.fl
import defpackage.g00
import defpackage.g70
import defpackage.gg3
import defpackage.gv7
import defpackage.h70
import defpackage.iq5
import defpackage.j05
import defpackage.jq5
import defpackage.jx
import defpackage.jz4
import defpackage.kc2
import defpackage.m70
import defpackage.mp6
import defpackage.n63
import defpackage.nq5
import defpackage.nq7
import defpackage.nc3
import defpackage.pe4
import defpackage.q63
import defpackage.rs9
import defpackage.u48
import defpackage.vr6
import defpackage.wo5
import defpackage.x5
import defpackage.yc9
import defpackage.ys7
import defpackage.zk
import defpackage.zn4
import defpackage.zs7
import defpackage.io4
import defpackage.el1
import defpackage.x50
import defpackage.fl1
import defpackage.f93
import defpackage.ry5
import defpackage.zn7
import defpackage.qy5
import defpackage.p93
import defpackage.p93
import defpackage.zy0
import defpackage.jq5
import com.bareapps.barebackup.common.Const
import com.bareapps.barebackup.common.IgnoredException
import com.bareapps.barebackup.common.NotificationHelper
import org.xmlpull.v1.XmlPullParser
import java.io.File
import java.io.FileOutputStream
import java.nio.charset.Charset
import java.security.MessageDigest
import java.security.NoSuchAlgorithmException
import java.util.ArrayList
import java.util.Iterator
import java.util.List
import java.util.Locale
import java.util.Set

@Suppress("DEPRECATION", "KotlinConstantConditions", "UNCHECKED_CAST")
class BareApp : Application(), a45 {
    lateinit var a: ex6
    val b: gv7 = gv7(zk(16))
    val c: gv7 = gv7(fl(14))

    companion object {
        @JvmField
        var e: BareApp? = null
        @JvmField
        val d = Companion()
        @JvmField
        val f = gv7(jx(23))

        @JvmStatic
        fun a(swiftApp: BareApp) {
            var applicationExitInfoD: ApplicationExitInfo? = null
            var str: String? = null
            val activityManager = swiftApp.getSystemService(ActivityManager::class.java) as ActivityManager?
            if (activityManager != null) {
                try {
                    val historicalProcessExitReasons = activityManager.getHistoricalProcessExitReasons(null, 0, 0)
                    if (historicalProcessExitReasons != null) {
                        val arrayList = ArrayList<Any>()
                        for (obj in historicalProcessExitReasons) {
                            if (pe4.d(x5.d(obj).processName, swiftApp.packageName)) arrayList.add(obj)
                        }
                        val iterator = arrayList.iterator()
                        var next: Any? = if (iterator.hasNext()) iterator.next() else null
                        if (next != null && iterator.hasNext()) {
                            var timestamp = x5.d(next).timestamp
                            do {
                                val next2 = iterator.next()
                                val timestamp2 = x5.d(next2).timestamp
                                if (timestamp < timestamp2) {
                                    next = next2
                                    timestamp = timestamp2
                                }
                            } while (iterator.hasNext())
                        }
                        applicationExitInfoD = if (next == null) null else x5.d(next)
                    }
                } catch (th: Throwable) {
                    vr6.e$default(vr6.INSTANCE, "BareApp", "slogLastExitInfo: ".concat(yc9.g0(th)), null, 4, null)
                }
            }
            if (applicationExitInfoD != null) {
                val reason = applicationExitInfoD.reason
                val description = applicationExitInfoD.description
                val zContains = e10.a.contains(Integer.valueOf(reason))
                val str2 = if (reason == 13 && description != null && nq7.Z(description, "MemoryLimiter:AnonSwap", true))
                    "MemoryLimiter:AnonSwap detected; previous backup/restore may have been killed by Android's per-app memory limiter." else null
                try {
                    val processStateSummary = applicationExitInfoD.processStateSummary
                    str = if (processStateSummary != null) String(processStateSummary, f51.a) else null
                } catch (_: Exception) { }
                val strConcat = if (str2 != null) "\n$str2" else ""
                val vr6Var = vr6.INSTANCE
                val description2 = applicationExitInfoD.description
                val sb = StringBuilder("Last exit details, ")
                sb.append(applicationExitInfoD)
                sb.append(", description=")
                sb.append(description2)
                sb.append(", stateSummary=")
                vr6Var.i("BareApp", dj7.n(sb, str, strConcat), if (zContains) null else vr6.a.YELLOW)
            }
        }

        @JvmStatic
        fun b(swiftApp: BareApp) {
            var applicationStartInfoC: ApplicationStartInfo? = null
            var str: String
            val activityManager = swiftApp.getSystemService(ActivityManager::class.java) as ActivityManager?
            if (activityManager != null) {
                try {
                    val historicalProcessStartReasons = activityManager.historicalProcessStartReasons(1)
                    if (historicalProcessStartReasons != null) {
                        val iterator = historicalProcessStartReasons.iterator()
                        var next: Any? = null
                        while (iterator.hasNext()) {
                            next = iterator.next()
                            if (pe4.d(f6.c(next).processName, swiftApp.packageName)) break
                        }
                        applicationStartInfoC = if (next == null) null else f6.c(next)
                    }
                } catch (th: Throwable) {
                    vr6.e$default(vr6.INSTANCE, "BareApp", "slogStartupInfo: ".concat(yc9.g0(th)), null, 4, null)
                }
            }
            if (applicationStartInfoC != null) {
                val vr6Var = vr6.INSTANCE
                var str2 = "UNKNOWN"
                str = when (applicationStartInfoC.reason) {
                    0 -> "ALARM"
                    1 -> "BACKUP"
                    2 -> "BOOT COMPLETE"
                    3 -> "BROADCAST"
                    4 -> "CONTENT PROVIDER"
                    5 -> "JOB"
                    6 -> "LAUNCHER"
                    7 -> "LAUNCHER RECENTS"
                    8 -> "OTHER"
                    XmlPullParser.COMMENT -> "PUSH"
                    10 -> "SERVICE"
                    ModuleDescriptor.MODULE_VERSION -> "START ACTIVITY"
                    else -> "UNKNOWN"
                }
                str2 = when (applicationStartInfoC.startType) {
                    0 -> "UNSET"
                    1 -> "COLD"
                    2 -> "WARM"
                    3 -> "HOT"
                    else -> "UNKNOWN"
                }
                val zWasForceStopped = applicationStartInfoC.wasForceStopped()
                val sbP = u48.p("ApplicationStartInfo: startReason=", str, ", startType=", str2, ", wasForceStopped=")
                sbP.append(zWasForceStopped)
                vr6Var.i("BareApp", sbP.toString(), if (applicationStartInfoC.wasForceStopped()) vr6.a.YELLOW else null)
            }
        }
    }

    class Companion {
        fun a(): BareApp {
            val app = e
            if (app != null) return app
            pe4.F("sInstance")
            throw null
        }

        fun b(): BareApp = a()

        fun c(): Context {
            val applicationContext = a().applicationContext
            applicationContext.getClass()
            return applicationContext
        }

        @Throws(NoSuchAlgorithmException::class)
        fun d(): String? {
            val signatureArrE = e()
            if (signatureArrE != null) {
                val signature = if (signatureArrE.isEmpty()) null else signatureArrE[0]
                if (signature != null) {
                    val messageDigest = MessageDigest.getInstance("SHA")
                    messageDigest.update(signature.toByteArray())
                    return Base64.encodeToString(messageDigest.digest(), 2)
                }
            }
            return null
        }

        fun e(): Array<Signature>? {
            val packageManagerR = g00.r()
            if (!b67.a()) return packageManagerR.getPackageInfo(a().packageName, 64).signatures
            val signingInfo: SigningInfo? = packageManagerR.getPackageInfo(a().packageName, 134217728).signingInfo
            return signingInfo?.apkContentsSigners
        }
    }

    init {
        val ex6Var = ex6()
        ex6Var.k(false)
        a = ex6Var
    }

    fun c(str: String) {
        Log.e("BareApp", "Exiting: reason=($str)")
        Const.x(this)
        Const.g(str, true)
        throw null
    }

    external fun getGoogleAuthAndroidClientId(): String
    external fun getGoogleAuthWebClientId(): String
    external fun isLocalNetworkTcpBlockedByPermission(str: String, i: Int, i2: Int): Boolean

    override fun onConfigurationChanged(configuration: Configuration) {
        configuration.getClass()
        super.onConfigurationChanged(configuration)
        if (b67.e()) {
            Log.i("LocaleManager", "Config changed. Locales: ${configuration.locales}")
            val locales = configuration.locales
            locales.getClass()
            j05.c(locales)
        }
    }

    override fun onCreate() {
        super.onCreate()
        Log.d("BareApp", "onCreate")
        e = this
        val notificationManagerD = NotificationHelper.d()
        val localeF = NotificationHelper.f()
        val notificationChannel = NotificationChannel("backup_restore_channel", NotificationHelper.a(R.string.backup_and_restore, localeF), 2)
        notificationChannel.setShowBadge(false)
        notificationManagerD.createNotificationChannel(notificationChannel)
        val notificationChannel2 = NotificationChannel("normal_channel", NotificationHelper.a(R.string.normal, localeF), 2)
        notificationChannel2.setShowBadge(false)
        notificationManagerD.createNotificationChannel(notificationChannel2)
        val audioAttributesBuild = AudioAttributes.Builder().setContentType(4).setUsage(5).build()
        val notificationChannel3 = NotificationChannel("task_completion_channel_success", NotificationHelper.a(R.string.task_successful, localeF), 3)
        notificationChannel3.setSound(NotificationHelper.e(), audioAttributesBuild)
        notificationChannel3.setBypassDnd(false)
        notificationChannel3.enableVibration(true)
        notificationChannel3.setShowBadge(false)
        notificationManagerD.createNotificationChannel(notificationChannel3)
        val notificationChannel4 = NotificationChannel("task_completion_channel_error", NotificationHelper.a(R.string.task_error, localeF), 3)
        notificationChannel4.setSound(NotificationHelper.b(), audioAttributesBuild)
        notificationChannel4.setBypassDnd(false)
        notificationChannel4.enableVibration(true)
        notificationChannel4.setShowBadge(false)
        notificationManagerD.createNotificationChannel(notificationChannel4)
        val notificationChannel5 = NotificationChannel("task_completion_channel_silent", NotificationHelper.a(R.string.task_complete_no_sound, localeF), 2)
        notificationChannel5.enableVibration(true)
        notificationChannel5.setBypassDnd(false)
        notificationChannel5.setShowBadge(false)
        notificationManagerD.createNotificationChannel(notificationChannel5)
        val notificationChannel6 = NotificationChannel("crash_error_channel", "Crash notification", 3)
        notificationChannel6.setSound(NotificationHelper.b(), audioAttributesBuild)
        notificationChannel6.setBypassDnd(false)
        notificationChannel6.enableVibration(true)
        notificationChannel6.setShowBadge(false)
        notificationManagerD.createNotificationChannel(notificationChannel6)
        NotificationHelper.d().cancelAll()

        val defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler(object : Thread.UncaughtExceptionHandler {
            override fun uncaughtException(thread: Thread, th: Throwable) {
                val strB = io4.b(th)
                val strG0 = yc9.g0(th)
                vr6.e$default(vr6.INSTANCE, "Crash", strG0, null, 4, null)
                Const.U(strG0)
                val cause = th.cause
                val strB2 = if (cause != null) io4.b(cause) else strB
                var fileU: File? = null
                try {
                    val cacheDir = Companion.c().cacheDir
                    fileU = if (cacheDir != null) nc3.U(cacheDir, "error.txt") else null
                    if (fileU != null) f13.b(fileU)
                    if (fileU != null) {
                        val fileOutputStream = FileOutputStream(fileU)
                        try {
                            nc3.X(fileOutputStream, strG0, f51.a)
                            fileOutputStream.close()
                        } catch (th2: Throwable) {
                            try { throw th2 } catch (th3: Throwable) {
                                rs9.c(fileOutputStream, th2)
                                throw th3
                            }
                        }
                    }
                    if (fileU == null || !fileU.exists() || fileU.length() <= 0) fileU = null
                } catch (_: Exception) { }

                val wo5Var = wo5(Companion.c(), "crash_error_channel")
                wo5Var.r = NotificationHelper.c()
                wo5Var.u.icon = R.drawable.ic_stat
                wo5Var.e = wo5.b("Swift Backup crashed")
                wo5Var.f = wo5.b(strB2)
                wo5Var.c(8)
                wo5Var.c(16)
                if (fileU != null) {
                    val uriB = f93.b(fileU)
                    val intent = Intent("android.intent.action.VIEW")
                    intent.setDataAndType(uriB, "text/plain")
                    intent.addFlags(1)
                    wo5Var.g = PendingIntent.getActivity(Companion.c(), 0, intent, (if (b67.d()) 67108864 else 0) or 134217728)
                }
                NotificationHelper.d().notify(912, wo5Var.a())

                val zn7VarD = zn7.q.d()
                val lC = qy5.c(zn7VarD.n())
                var strC = "Unknown"
                if (lC != null) strC = p93.c(lC)
                val q63VarL = zn7VarD.l()
                val totalSpace = q63VarL.n().file.totalSpace
                var strC2 = "Unknown"
                if (totalSpace > 0) strC2 = p93.c(totalSpace)
                vr6.i$default(vr6.INSTANCE, "BareApp", el1.Y0(x50.p0(arrayOf(zn7VarD.u(), zn7VarD.e(null), dj7.l("Free ", strC, " of ", strC2)), null, null, null, null, 63), null, 4, null)

                val swiftApp = this@BareApp
                if (zn7VarD.b) {
                    for (str2 in fl1.A0("FileNotFoundException", "IOException")) {
                        if (nq7.Z(strG0, str2, false)) {
                            vr6.e$default(vr6.INSTANCE, "BareApp", "IO Exception on a removable storage, avoid crash report.", null, 4, null)
                            swiftApp.c("IO Exception on a removable storage, avoid crash report.")
                            throw null
                        }
                    }
                }
                var z = true
                for (item in fl1.A0("ShizukuRemoteProcess", "android.os.DeadObjectException")) {
                    if (!nq7.Z(strG0, item, true)) { z = false; break }
                }
                if (th !is OutOfMemoryError && th !is IgnoredException && th.javaClass.simpleName != "RemoteServiceException" && !z) {
                    val listA3 = fl1.A0("Resources$NotFoundException", "Binary XML", "InflateException")
                    for (item in listA3) {
                        if (nq7.Z(strB, item, false)) break
                    }
                    val listA0 = fl1.A0("EPERM (Operation not permitted)", "ENOSPC (No space left on device)")
                    for (item in listA0) {
                        if (nq7.Z(strB, item, false)) break
                    }
                    val handler = defaultUncaughtExceptionHandler
                    if (handler != null) handler.uncaughtException(thread, th)
                    return
                }
                swiftApp.c(th.javaClass.simpleName)
                throw null
            }
        })

        if (!cz4.e) {
            val sharedPreferences = getSharedPreferences(packageName + "_preferences", 0)
            sharedPreferences.getClass()
            cz4.f = sharedPreferences
            val editorEdit = sharedPreferences.edit()
            editorEdit.getClass()
            cz4.k = editorEdit
            cz4.e = true
        }
        bs4.b()
        synchronized(mp6.a) { Shell.setDefaultBuilder(mp6.d) }
        j05.d(this)
        System.loadLibrary("native-lib")
        val d45Var = d45.b
        d45Var.a.add(this)
        if (!gg3.i) {
            gg3.i = true
            gg3.j.c(gg3.k)
        }
        val jz4Var = jz4()
        val intentFilter = IntentFilter()
        intentFilter.priority = 999
        intentFilter.addDataScheme("package")
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED")
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED")
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED")
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED")
        Const.C(jz4Var, intentFilter)
        synchronized(kc2.a) {
            try {
                val jCurrentTimeMillis = System.currentTimeMillis()
                val listD = kc2.d()
                val arrayListA = kc2.a(jCurrentTimeMillis, listD)
                if (arrayListA != listD) {
                    kc2.g(kc2.e(arrayListA, jCurrentTimeMillis))
                    vr6.w$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Closed stale dataSync FGS sessions from previous process", null, 4, null)
                }
            } catch (e2: Exception) {
                vr6.e$default(vr6.INSTANCE, "DataSyncFgsRuntimeLedger", "Failed to reconcile dataSync FGS ledger on app launch", e2, null, 8, null)
            }
        }
        zn4.a
        zn4.b(null, ys7(this, null))
        val jq5Var = nq5.i
        zn4.b(null, iq5(2, null))
        val z = q63.d
        cy0.b = n63(1)
        m70.b = g70(1, h70.a, h70::class.java, "trashDirFor", "trashDirFor(Lorg/swiftapps/filesystem/File;)Lorg/swiftapps/filesystem/File;", 0, 0)
        Log.d("BareApp", "init() complete")
        zn4.b(null, zs7(2, null))
        StrictMode.setVmPolicy(StrictMode.VmPolicy.Builder().build())
    }
}
