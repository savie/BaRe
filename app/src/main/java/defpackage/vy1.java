package defpackage;

import android.util.Log;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vy1 implements Runnable {
    public final /* synthetic */ zy1 a;
    public final /* synthetic */ Throwable b;
    public final /* synthetic */ Map c;

    public /* synthetic */ vy1(zy1 zy1Var, Throwable th, Map map) {
        this.a = zy1Var;
        this.b = th;
        this.c = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        sy1 sy1Var = this.a.h;
        Thread threadCurrentThread = Thread.currentThread();
        sy1Var.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        m02 m02Var = sy1Var.n;
        if (m02Var == null || !m02Var.e.get()) {
            long j = jCurrentTimeMillis / 1000;
            String strF = sy1Var.f();
            if (strF == null) {
                Log.w("FirebaseCrashlytics", "Tried to write a non-fatal exception while no session was open.", null);
                return;
            }
            az2 az2Var = new az2(strF, j, this.c);
            ca3 ca3Var = sy1Var.m;
            ca3Var.getClass();
            String strConcat = "Persisting non-fatal event for session ".concat(strF);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", strConcat, null);
            }
            ca3Var.i(this.b, threadCurrentThread, "error", az2Var, false);
        }
    }
}
