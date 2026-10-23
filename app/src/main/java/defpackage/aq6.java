package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import com.topjohnwu.superuser.Shell;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class aq6 {
    public static volatile z84 a;
    public static volatile boolean b;
    public static long f;
    public static final Object c = new Object();
    public static final Handler d = new Handler(Looper.getMainLooper());
    public static final xp6 e = new xp6();
    public static final gv7 g = new gv7(new el(18));

    public static z84 a() {
        z84 z84Var = a;
        if (z84Var == null) {
            return null;
        }
        IBinder iBinderAsBinder = z84Var.asBinder();
        if (iBinderAsBinder.isBinderAlive() && iBinderAsBinder.pingBinder()) {
            return z84Var;
        }
        a = null;
        return null;
    }

    public static void b() {
        Log.i("RootServiceManager", "Binding service");
        b = true;
        i41 i41Var = new i41(new Intent((Context) g.getValue(), (Class<?>) gp6.class), 3);
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            i41Var.run();
        } else {
            d.post(i41Var);
        }
    }

    public static z84 c() {
        z84 z84VarA;
        Object obj = c;
        synchronized (obj) {
            z84VarA = a();
        }
        if (z84VarA != null) {
            return z84VarA;
        }
        int i = Shell.UNKNOWN;
        z84 z84Var = null;
        if (!k55.j().isRoot()) {
            return null;
        }
        synchronized (obj) {
            try {
                z84 z84VarA2 = a();
                if (z84VarA2 != null) {
                    return z84VarA2;
                }
                if (!b) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j = f;
                    long j2 = jElapsedRealtime - j;
                    if (j != 0 && j2 < 2000) {
                        return null;
                    }
                    b();
                }
                if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
                    Log.w("RootServiceManager", "RootService IPC requested on main thread; binding queued without blocking");
                    return a();
                }
                long jElapsedRealtime2 = SystemClock.elapsedRealtime() + 10000;
                while (a == null && b) {
                    long jElapsedRealtime3 = jElapsedRealtime2 - SystemClock.elapsedRealtime();
                    if (jElapsedRealtime3 <= 0) {
                        break;
                    }
                    try {
                        c.wait(jElapsedRealtime3);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        Log.w("RootServiceManager", "Interrupted while binding elevated service");
                        return null;
                    }
                }
                if (a == null && b) {
                    b = false;
                    f = SystemClock.elapsedRealtime();
                    Log.e("RootServiceManager", "Failed to initialize IPC interface!");
                }
                z84 z84VarA3 = a();
                if (z84VarA3 != null) {
                    Log.i("RootServiceManager", "Elevated service initialized");
                    z84Var = z84VarA3;
                }
                return z84Var;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
