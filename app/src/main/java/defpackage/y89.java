package defpackage;

import android.os.HandlerThread;
import android.os.Looper;
import com.google.firebase.FirebaseApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y89 {
    public static final u50 f = new u50("TokenRefresher", "FirebaseAuth:");
    public final FirebaseApp a;
    public volatile long b;
    public volatile long c;
    public final ag9 d;
    public final c9 e;

    public y89(FirebaseApp firebaseApp) {
        f.f("Initializing TokenRefresher", new Object[0]);
        ly8.h(firebaseApp);
        this.a = firebaseApp;
        HandlerThread handlerThread = new HandlerThread("TokenRefresher", 10);
        handlerThread.start();
        ag9 ag9Var = new ag9(handlerThread.getLooper());
        Looper.getMainLooper();
        this.d = ag9Var;
        this.e = new c9(this, firebaseApp.getName());
    }

    public final void a() {
        u50 u50Var = f;
        long j = this.b;
        o49.d(this.a).getClass();
        u50Var.f(u48.l(j - 300000, "Scheduling refresh for "), new Object[0]);
        this.d.removeCallbacks(this.e);
        long jCurrentTimeMillis = this.b - System.currentTimeMillis();
        o49.d(this.a).getClass();
        this.c = Math.max(jCurrentTimeMillis - 300000, 0L) / 1000;
        this.d.postDelayed(this.e, this.c * 1000);
    }
}
