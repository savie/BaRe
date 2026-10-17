package com.bareapps.filesystem

import android.os.RemoteException
import android.util.Log
import java.io.InputStream
import java.io.OutputStream
import java.lang.reflect.Method
import java.util.ArrayList
import java.util.Arrays

/**
 * Kotlin-shaped port of defpackage.qe7.
 *
 * Unknown/dependency identifiers deliberately retain their original obfuscated names.
 * Do not substitute public Shizuku APIs for the private source calls: migrate the
 * referenced classes separately when their behavior is established.
 *
 * Source dependencies still unresolved in this repository include le7, f13, f94,
 * y5, ne7, w28, px, y2, oe7, pe7, mt3, x50, and f51.
 */
internal abstract class ShizukuCommandExecutor {

    companion object {
        val a = gv7(fl(13))

        fun a(): Int {
            return try {
                le7.d()
            } catch (e: Exception) {
                Log.e("ShizukuHelper", "getVersionSafe", e)
                -1
            }
        }

        fun b(): Boolean {
            if (le7.f || a() < 11) {
                return f13.d().checkSelfPermission("moe.shizuku.manager.permission.API_V23") == 0
            }
            if (le7.e) {
                return true
            }
            return try {
                val zF = (le7.h() as f94).f()
                le7.e = zF
                zF
            } catch (e: RemoteException) {
                y5.k(e)
                false
            }
        }

        fun c(strArr: Array<String>): ne7 {
            var th: Throwable
            var process: Process? = null
            var w28Var: w28? = null
            var w28Var2: w28? = null
            val strArr2 = Arrays.copyOf(strArr, strArr.size)
            val arrayList = ArrayList<Any>()

            try {
                val objInvoke = (a.getValue() as Method).invoke(null, arrayOf("sh"), null, null)
                objInvoke!!
                process = objInvoke as Process

                val i = 16
                val pxVar = px(arrayList, i)
                val inputStream: InputStream = process.inputStream
                val w28Var3 = w28(y2(i, inputStream, oe7(1, pxVar, mt3::class.java, "invoke", "invoke(Ljava/lang/Object;)Ljava/lang/Object;", 8)))
                w28Var3.start()

                try {
                    val errorStream: InputStream = process.errorStream
                    w28Var = w28(y2(i, errorStream, pe7(1, pxVar, mt3::class.java, "invoke", "invoke(Ljava/lang/Object;)Ljava/lang/Object;", 8)))
                    w28Var.start()

                    val outputStream: OutputStream = process.outputStream
                    try {
                        val bytes = x50.s0(62, " ; ", strArr2).toByteArray(f51.a)
                        outputStream.write(bytes)
                        outputStream.flush()
                        outputStream.close()
                        val iWaitFor = process.waitFor()
                        w28Var3.join()
                        w28Var.join()
                        try {
                            w28Var3.interrupt()
                            w28Var.interrupt()
                            process.destroy()
                        } catch (_: Exception) {
                        }
                        return ne7(arrayList, iWaitFor)
                    } catch (th2: Throwable) {
                        try {
                            throw th2
                        } catch (th3: Throwable) {
                            rs9.c(outputStream, th2)
                            throw th3
                        }
                    }
                } catch (th4: Throwable) {
                    th = th4
                    w28Var2 = w28Var3
                    try {
                        throw th
                    } catch (th5: Throwable) {
                        if (w28Var2 != null) {
                            try {
                                w28Var2.interrupt()
                            } catch (_: Exception) {
                                throw th5
                            }
                        }
                        w28Var?.interrupt()
                        if (process == null) {
                            throw th5
                        }
                        process.destroy()
                        throw th5
                    }
                }
            } catch (e: ReflectiveOperationException) {
                throw IllegalStateException("Failed to start Shizuku process", e)
            } catch (th8: Throwable) {
                th = th8
                process = null
                w28Var = null
                throw th
            }
        }
    }
}
