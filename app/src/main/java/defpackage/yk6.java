package defpackage;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.Log;
import com.bumptech.glide.a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yk6 implements ComponentCallbacks2, du4 {
    public static final bl6 r;
    public final a a;
    public final Context b;
    public final tt4 c;
    public final j23 d;
    public final al6 e;
    public final sx7 f;
    public final u8 k;
    public final ps1 n;
    public final CopyOnWriteArrayList p;
    public final bl6 q;

    static {
        bl6 bl6Var = (bl6) new bl6().c(Bitmap.class);
        bl6Var.G = true;
        r = bl6Var;
        ((bl6) new bl6().c(fx3.class)).G = true;
    }

    public yk6(a aVar, tt4 tt4Var, al6 al6Var, Context context) {
        bl6 bl6Var;
        j23 j23Var = new j23();
        us2 us2Var = aVar.f;
        this.f = new sx7();
        u8 u8Var = new u8(this, 2);
        this.k = u8Var;
        this.a = aVar;
        this.c = tt4Var;
        this.e = al6Var;
        this.d = j23Var;
        this.b = context;
        Context applicationContext = context.getApplicationContext();
        xk6 xk6Var = new xk6(this, j23Var);
        us2Var.getClass();
        boolean z = zh8.e(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        ps1 ce2Var = z ? new ce2(applicationContext, xk6Var) : new np5();
        this.n = ce2Var;
        synchronized (aVar.k) {
            if (aVar.k.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            aVar.k.add(this);
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            tt4Var.k(this);
        } else {
            xh8.q().post(u8Var);
        }
        tt4Var.k(ce2Var);
        this.p = new CopyOnWriteArrayList(aVar.c.e);
        dy3 dy3Var = aVar.c;
        synchronized (dy3Var) {
            try {
                if (dy3Var.j == null) {
                    dy3Var.d.getClass();
                    bl6 bl6Var2 = new bl6();
                    bl6Var2.G = true;
                    dy3Var.j = bl6Var2;
                }
                bl6Var = dy3Var.j;
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            bl6 bl6Var3 = (bl6) bl6Var.clone();
            if (bl6Var3.G && !bl6Var3.H) {
                throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
            }
            bl6Var3.H = true;
            bl6Var3.G = true;
            this.q = bl6Var3;
        }
    }

    @Override // defpackage.du4
    public final synchronized void e() {
        this.f.e();
        n();
        j23 j23Var = this.d;
        Iterator it = xh8.p((Set) j23Var.c).iterator();
        while (it.hasNext()) {
            j23Var.a((kk6) it.next());
        }
        ((HashSet) j23Var.d).clear();
        this.c.a(this);
        this.c.a(this.n);
        xh8.q().removeCallbacks(this.k);
        a aVar = this.a;
        synchronized (aVar.k) {
            if (!aVar.k.contains(this)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            aVar.k.remove(this);
        }
    }

    public final pk6 f(Class cls) {
        return new pk6(this.a, this, cls, this.b);
    }

    @Override // defpackage.du4
    public final synchronized void h() {
        this.f.h();
        o();
    }

    public final void i(px7 px7Var) {
        if (px7Var == null) {
            return;
        }
        boolean zQ = q(px7Var);
        kk6 kk6VarK = px7Var.k();
        if (zQ) {
            return;
        }
        a aVar = this.a;
        synchronized (aVar.k) {
            try {
                Iterator it = aVar.k.iterator();
                while (it.hasNext()) {
                    if (((yk6) it.next()).q(px7Var)) {
                        return;
                    }
                }
                if (kk6VarK != null) {
                    px7Var.d(null);
                    kk6VarK.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.du4
    public final synchronized void m() {
        p();
        this.f.m();
    }

    public final synchronized void n() {
        try {
            Iterator it = xh8.p(this.f.a).iterator();
            while (it.hasNext()) {
                i((px7) it.next());
            }
            this.f.a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void o() {
        j23 j23Var = this.d;
        j23Var.b = true;
        for (kk6 kk6Var : xh8.p((Set) j23Var.c)) {
            if (kk6Var.isRunning()) {
                kk6Var.e();
                ((HashSet) j23Var.d).add(kk6Var);
            }
        }
    }

    public final synchronized void p() {
        j23 j23Var = this.d;
        j23Var.b = false;
        for (kk6 kk6Var : xh8.p((Set) j23Var.c)) {
            if (!kk6Var.k() && !kk6Var.isRunning()) {
                kk6Var.j();
            }
        }
        ((HashSet) j23Var.d).clear();
    }

    public final synchronized boolean q(px7 px7Var) {
        kk6 kk6VarK = px7Var.k();
        if (kk6VarK == null) {
            return true;
        }
        if (!this.d.a(kk6VarK)) {
            return false;
        }
        this.f.a.remove(px7Var);
        px7Var.d(null);
        return true;
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.d + ", treeNode=" + this.e + "}";
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }
}
