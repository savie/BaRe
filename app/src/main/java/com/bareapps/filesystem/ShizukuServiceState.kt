package com.bareapps.filesystem

import android.os.Bundle
import android.os.Handler
import android.os.IBinder
import android.os.IInterface
import android.os.Looper
import android.os.Parcel
import android.os.RemoteException
import android.util.Log
import java.util.ArrayList
import java.util.Map
import java.util.function.Predicate

/**
 * Kotlin port of defpackage.le7.
 *
 * Obfuscated dependency names and Binder transaction behavior are intentionally retained.
 * This file ports the whole selected class, including state, attach/detach, callbacks,
 * service-version caching, Binder lookup, and remote-process lifecycle.
 *
 * TODO(parity): decompiler output for callback iteration in e()/i() contains explicit
 * ClassCastException/null-throw branches; they are retained as decompiled rather than
 * replaced with guessed callback behavior.
 */
internal abstract class ShizukuServiceState {
    companion object {
        var a: IBinder? = null
        var b: h94? = null
        var c: Int = -1
        var d: Int = -1
        var e: Boolean = false
        var f: Boolean = false
        val g: ie7
        val h: fe7
        val i: ArrayList<Any>
        val j: ArrayList<Any>
        val k: ArrayList<Any>
        val l: Handler

        init {
            val ie7Var = ie7()
            ie7Var.attachInterface(ie7Var, "moe.shizuku.server.IShizukuApplication")
            g = ie7Var
            h = fe7()
            i = ArrayList()
            j = ArrayList()
            k = ArrayList()
            l = Handler(Looper.getMainLooper())
        }

        fun a(iBinder: IBinder, str: String): Boolean {
            val parcelObtain = Parcel.obtain()
            val parcelObtain2 = Parcel.obtain()
            try {
                parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService")
                val ie7Var = g
                ie7Var.javaClass
                parcelObtain.writeStrongBinder(ie7Var)
                parcelObtain.writeString(str)
                val zTransact = iBinder.transact(14, parcelObtain, parcelObtain2, 0)
                parcelObtain2.readException()
                return zTransact
            } finally {
                parcelObtain2.recycle()
                parcelObtain.recycle()
            }
        }

        fun b(iBinder: IBinder, str: String): Boolean {
            val bundle = Bundle()
            bundle.putInt("shizuku:attach-api-version", 13)
            bundle.putString("shizuku:attach-package-name", str)
            val parcelObtain = Parcel.obtain()
            val parcelObtain2 = Parcel.obtain()
            try {
                parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService")
                val ie7Var = g
                ie7Var.javaClass
                parcelObtain.writeStrongBinder(ie7Var)
                parcelObtain.writeInt(1)
                bundle.writeToParcel(parcelObtain, 0)
                val zTransact = iBinder.transact(18, parcelObtain, parcelObtain2, 0)
                parcelObtain2.readException()
                return zTransact
            } finally {
                parcelObtain2.recycle()
                parcelObtain.recycle()
            }
        }

        fun c(ke7Var: ke7) {
            val map = ve7.a
            var className = ke7Var.d
            if (className == null) {
                className = ke7Var.a.className
            }
            val map2 = ve7.a
            var ue7Var = map2[className] as ue7?
            if (ue7Var == null) {
                ue7Var = ue7(ke7Var)
                map2[className] = ue7Var
            }
            ue7Var.a.add(u17.d)
            try {
                (h() as f94).a(ue7Var, ke7.a(ke7Var))
            } catch (e2: RemoteException) {
                y5.k(e2)
            }
        }

        fun d(): Int {
            val i2 = d
            if (i2 != -1) return i2
            try {
                val iG = (h() as f94).g()
                d = iG
                return iG
            } catch (e2: RemoteException) {
                y5.k(e2)
                return 0
            } catch (_: SecurityException) {
                return -1
            }
        }

        fun e(iBinder: IBinder?, str: String) {
            val iBinder2 = a
            if (iBinder2 === iBinder) return

            if (iBinder == null) {
                a = null
                b = null
                c = -1
                d = -1
                synchronized(i) {
                    val it = j.iterator()
                    if (it.hasNext()) {
                        val je7Var = it.next() as je7
                        je7Var.javaClass
                        val looperMyLooper = Looper.myLooper()
                        val mainLooper = Looper.getMainLooper()
                        val obj = je7Var.a
                        if (looperMyLooper === mainLooper) {
                            if (obj != null) throw ClassCastException()
                            throw NullPointerException()
                        }
                        if (obj != null) throw ClassCastException()
                        throw NullPointerException()
                    }
                }
                return
            }

            if (iBinder2 != null) iBinder2.unlinkToDeath(h, 0)
            a = iBinder
            val i2 = g94.a
            val iInterfaceQueryLocalInterface: IInterface? =
                iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService")
            val h94Var: h94 = if (
                iInterfaceQueryLocalInterface == null || iInterfaceQueryLocalInterface !is h94
            ) {
                val f94Var = f94()
                f94Var.a = iBinder
                f94Var
            } else {
                iInterfaceQueryLocalInterface
            }
            b = h94Var
            try {
                a!!.linkToDeath(h, 0)
            } catch (_: Throwable) {
                Log.i("ShizukuApplication", "attachApplication")
            }
            try {
                if (!b(a!!, str) && !a(a!!, str)) {
                    f = true
                }
                Log.i("ShizukuApplication", "attachApplication")
            } catch (th2: Throwable) {
                Log.w("ShizukuApplication", Log.getStackTraceString(th2))
            }
            if (f) i()
        }

        fun f(): Boolean {
            val iBinder = a
            return iBinder != null && iBinder.pingBinder()
        }

        fun g(dl0Var: dl0) {
            synchronized(i) {
                k.removeIf(Predicate { obj -> (obj as je7).a == dl0Var })
            }
        }

        fun h(): h94? {
            val h94Var = b
            if (h94Var != null) return h94Var
            l0.e("binder haven't been received")
            return null
        }

        fun i() {
            val arrayList = i
            synchronized(arrayList) {
                val it = arrayList.iterator()
                if (it.hasNext()) {
                    val je7Var = it.next() as je7
                    je7Var.javaClass
                    val looperMyLooper = Looper.myLooper()
                    val mainLooper = Looper.getMainLooper()
                    val obj = je7Var.a
                    if (looperMyLooper === mainLooper) {
                        if (obj != null) throw ClassCastException()
                        throw NullPointerException()
                    }
                    if (obj != null) throw ClassCastException()
                    throw NullPointerException()
                }
            }
        }

        private fun newProcess(strArr: Array<String>, strArr2: Array<String>?, str: String?): se7? {
            try {
                val t84VarJ = (h() as f94).j(strArr, strArr2, str)
                val se7Var = se7()
                se7Var.a = t84VarJ
                try {
                    (t84VarJ as r84).a.linkToDeath(
                        IBinder.DeathRecipient {
                            se7Var.a = null
                            Log.v("ShizukuRemoteProcess", "remote process is dead")
                            se7.d.remove(se7Var)
                        },
                        0
                    )
                } catch (e2: RemoteException) {
                    Log.e("ShizukuRemoteProcess", "linkToDeath", e2)
                }
                se7.d.add(se7Var)
                return se7Var
            } catch (e3: RemoteException) {
                y5.k(e3)
                return null
            }
        }
    }
}
