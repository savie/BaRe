package defpackage;

import android.os.RemoteException;
import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class qe7 {
    public static final gv7 a = new gv7(new fl(13));

    public static int a() {
        try {
            return le7.d();
        } catch (Exception e) {
            Log.e("ShizukuHelper", "getVersionSafe", e);
            return -1;
        }
    }

    public static boolean b() {
        if (le7.f || a() < 11) {
            return f13.d().checkSelfPermission("moe.shizuku.manager.permission.API_V23") == 0;
        }
        if (le7.e) {
            return true;
        }
        try {
            boolean zF = ((f94) le7.h()).f();
            le7.e = zF;
            return zF;
        } catch (RemoteException e) {
            y5.k(e);
            return false;
        }
    }

    public static ne7 c(String[] strArr) {
        Throwable th;
        Process process;
        w28 w28Var;
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        ArrayList arrayList = new ArrayList();
        w28 w28Var2 = null;
        try {
            try {
                Object objInvoke = ((Method) a.getValue()).invoke(null, new String[]{"sh"}, null, null);
                objInvoke.getClass();
                process = (Process) objInvoke;
                try {
                    int i = 16;
                    px pxVar = new px(arrayList, i);
                    InputStream inputStream = process.getInputStream();
                    inputStream.getClass();
                    w28 w28Var3 = new w28(new y2(i, inputStream, new oe7(1, pxVar, mt3.class, "invoke", "invoke(Ljava/lang/Object;)Ljava/lang/Object;", 8)));
                    w28Var3.start();
                    try {
                        InputStream errorStream = process.getErrorStream();
                        errorStream.getClass();
                        w28Var = new w28(new y2(i, errorStream, new pe7(1, pxVar, mt3.class, "invoke", "invoke(Ljava/lang/Object;)Ljava/lang/Object;", 8)));
                        w28Var.start();
                        try {
                            OutputStream outputStream = process.getOutputStream();
                            try {
                                byte[] bytes = x50.s0(62, " ; ", strArr2).getBytes(f51.a);
                                bytes.getClass();
                                outputStream.write(bytes);
                                outputStream.flush();
                                outputStream.close();
                                int iWaitFor = process.waitFor();
                                w28Var3.join();
                                w28Var.join();
                                try {
                                    w28Var3.interrupt();
                                    w28Var.interrupt();
                                    process.destroy();
                                } catch (Exception unused) {
                                }
                                return new ne7(arrayList, iWaitFor);
                            } catch (Throwable th2) {
                                try {
                                    throw th2;
                                } catch (Throwable th3) {
                                    rs9.c(outputStream, th2);
                                    throw th3;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            w28Var2 = w28Var3;
                            try {
                                throw th;
                            } catch (Throwable th5) {
                                if (w28Var2 != null) {
                                    try {
                                        w28Var2.interrupt();
                                    } catch (Exception unused2) {
                                        throw th5;
                                    }
                                }
                                if (w28Var != null) {
                                    w28Var.interrupt();
                                }
                                if (process == null) {
                                    throw th5;
                                }
                                process.destroy();
                                throw th5;
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        w28Var = null;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    w28Var = null;
                }
            } catch (ReflectiveOperationException e) {
                throw new IllegalStateException("Failed to start Shizuku process", e);
            }
        } catch (Throwable th8) {
            th = th8;
            process = null;
            w28Var = null;
        }
    }
}
