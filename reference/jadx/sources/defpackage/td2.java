package defpackage;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class td2 implements sa2, Runnable, Comparable, d33 {
    public ou5 G;
    public dx2 H;
    public int I;
    public long J;
    public Object K;
    public Thread L;
    public jo4 M;
    public jo4 N;
    public Object O;
    public ra2 P;
    public volatile ta2 Q;
    public volatile boolean R;
    public volatile boolean S;
    public boolean T;
    public int U;
    public int V;
    public int W;
    public final yw2 d;
    public final d36 e;
    public dy3 n;
    public jo4 p;
    public e66 q;
    public ex2 r;
    public int t;
    public int x;
    public km2 y;
    public final qd2 a = new qd2();
    public final ArrayList b = new ArrayList();
    public final rm7 c = new rm7();
    public final x00 f = new x00();
    public final sd2 k = new sd2();

    public td2(yw2 yw2Var, l22 l22Var) {
        this.d = yw2Var;
        this.e = l22Var;
    }

    @Override // defpackage.d33
    public final rm7 a() {
        return this.c;
    }

    @Override // defpackage.sa2
    public final void b(jo4 jo4Var, Object obj, ra2 ra2Var, int i, jo4 jo4Var2) {
        this.M = jo4Var;
        this.O = obj;
        this.P = ra2Var;
        this.W = i;
        this.N = jo4Var2;
        this.T = jo4Var != this.a.a().get(0);
        if (Thread.currentThread() == this.L) {
            f();
            return;
        }
        this.V = 3;
        dx2 dx2Var = this.H;
        (dx2Var.x ? dx2Var.p : dx2Var.n).execute(this);
    }

    @Override // defpackage.sa2
    public final void c(jo4 jo4Var, Exception exc, ra2 ra2Var, int i) {
        ra2Var.c();
        fy3 fy3Var = new fy3("Fetching data failed", Collections.singletonList(exc));
        Class clsA = ra2Var.a();
        fy3Var.b = jo4Var;
        fy3Var.c = i;
        fy3Var.d = clsA;
        this.b.add(fy3Var);
        if (Thread.currentThread() == this.L) {
            l();
            return;
        }
        this.V = 2;
        dx2 dx2Var = this.H;
        (dx2Var.x ? dx2Var.p : dx2Var.n).execute(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        td2 td2Var = (td2) obj;
        int iOrdinal = this.q.ordinal() - td2Var.q.ordinal();
        return iOrdinal == 0 ? this.I - td2Var.I : iOrdinal;
    }

    public final ll6 d(ra2 ra2Var, Object obj, int i) {
        if (obj == null) {
            ra2Var.c();
            return null;
        }
        try {
            int i2 = g15.b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            ll6 ll6VarE = e(i, obj);
            if (Log.isLoggable("DecodeJob", 2)) {
                i("Decoded result " + ll6VarE, null, jElapsedRealtimeNanos);
            }
            return ll6VarE;
        } finally {
            ra2Var.c();
        }
    }

    public final ll6 e(int i, Object obj) {
        Class<?> cls = obj.getClass();
        qd2 qd2Var = this.a;
        az4 az4VarC = qd2Var.c(cls);
        ou5 ou5Var = this.G;
        boolean z = i == 4 || qd2Var.r;
        iu5 iu5Var = uo2.i;
        Boolean bool = (Boolean) ou5Var.c(iu5Var);
        if (bool == null || (bool.booleanValue() && !z)) {
            ou5Var = new ou5();
            iz0 iz0Var = this.G.b;
            iz0 iz0Var2 = ou5Var.b;
            iz0Var2.h(iz0Var);
            iz0Var2.put(iu5Var, Boolean.valueOf(z));
        }
        ou5 ou5Var2 = ou5Var;
        za2 za2VarG = this.n.a().g(obj);
        try {
            return az4VarC.a(this.t, this.x, za2VarG, new rd2(this, i), ou5Var2);
        } finally {
            za2VarG.c();
        }
    }

    public final void f() {
        ll6 ll6VarD;
        boolean zA;
        if (Log.isLoggable("DecodeJob", 2)) {
            i("Retrieved data", "data: " + this.O + ", cache key: " + this.M + ", fetcher: " + this.P, this.J);
        }
        z05 z05Var = null;
        try {
            ll6VarD = d(this.P, this.O, this.W);
        } catch (fy3 e) {
            jo4 jo4Var = this.N;
            int i = this.W;
            e.b = jo4Var;
            e.c = i;
            e.d = null;
            this.b.add(e);
            ll6VarD = null;
        }
        if (ll6VarD == null) {
            l();
            return;
        }
        int i2 = this.W;
        if (ll6VarD instanceof dc4) {
            ((dc4) ll6VarD).a();
        }
        int i3 = 1;
        if (((z05) this.f.d) != null) {
            z05Var = (z05) z05.e.d();
            z05Var.d = false;
            z05Var.c = true;
            z05Var.b = ll6VarD;
            ll6VarD = z05Var;
        }
        p();
        dx2 dx2Var = this.H;
        synchronized (dx2Var) {
            dx2Var.y = ll6VarD;
            dx2Var.G = i2;
        }
        synchronized (dx2Var) {
            try {
                dx2Var.b.a();
                if (dx2Var.M) {
                    dx2Var.y.b();
                    dx2Var.f();
                } else {
                    if (dx2Var.a.a.isEmpty()) {
                        throw new IllegalStateException("Received a resource without any callbacks to notify");
                    }
                    if (dx2Var.H) {
                        throw new IllegalStateException("Already have resource");
                    }
                    lv1 lv1Var = dx2Var.e;
                    ll6 ll6Var = dx2Var.y;
                    boolean z = dx2Var.t;
                    ex2 ex2Var = dx2Var.r;
                    zw2 zw2Var = dx2Var.c;
                    lv1Var.getClass();
                    dx2Var.K = new fx2(ll6Var, z, true, ex2Var, zw2Var);
                    dx2Var.H = true;
                    cx2 cx2Var = dx2Var.a;
                    cx2Var.getClass();
                    ArrayList<bx2> arrayList = new ArrayList(cx2Var.a);
                    dx2Var.d(arrayList.size() + 1);
                    dx2Var.f.d(dx2Var, dx2Var.r, dx2Var.K);
                    for (bx2 bx2Var : arrayList) {
                        bx2Var.b.execute(new td9(i3, dx2Var, bx2Var.a));
                    }
                    dx2Var.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.U = 5;
        try {
            x00 x00Var = this.f;
            if (((z05) x00Var.d) != null) {
                try {
                    this.d.a().g((jo4) x00Var.b, new u94((tl6) x00Var.c, (z05) x00Var.d, this.G));
                    ((z05) x00Var.d).e();
                } catch (Throwable th2) {
                    ((z05) x00Var.d).e();
                    throw th2;
                }
            }
            if (z05Var != null) {
                z05Var.e();
            }
            sd2 sd2Var = this.k;
            synchronized (sd2Var) {
                sd2Var.b = true;
                zA = sd2Var.a();
            }
            if (zA) {
                k();
            }
        } catch (Throwable th3) {
            if (z05Var == null) {
                throw th3;
            }
            z05Var.e();
            throw th3;
        }
    }

    public final ta2 g() {
        int iA = dj7.A(this.U);
        qd2 qd2Var = this.a;
        if (iA == 1) {
            return new ol6(qd2Var, this);
        }
        if (iA == 2) {
            return new ha2(qd2Var.a(), qd2Var, this);
        }
        if (iA == 3) {
            return new jj7(qd2Var, this);
        }
        if (iA == 5) {
            return null;
        }
        l0.e("Unrecognized stage: ".concat(xs1.w(this.U)));
        return null;
    }

    public final int h(int i) {
        int iA = dj7.A(i);
        if (iA == 0) {
            if (this.y.b()) {
                return 2;
            }
            return h(2);
        }
        if (iA == 1) {
            if (this.y.a()) {
                return 3;
            }
            return h(3);
        }
        if (iA == 2) {
            return 4;
        }
        if (iA == 3 || iA == 5) {
            return 6;
        }
        c6.f("Unrecognized stage: ".concat(xs1.w(i)));
        return 0;
    }

    public final void i(String str, String str2, long j) {
        StringBuilder sbN = fz5.n(str, " in ");
        sbN.append(g15.a(j));
        sbN.append(", load key: ");
        sbN.append(this.r);
        sbN.append(str2 != null ? ", ".concat(str2) : "");
        sbN.append(", thread: ");
        sbN.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbN.toString());
    }

    public final void j() {
        boolean zA;
        p();
        fy3 fy3Var = new fy3("Failed to load resource", new ArrayList(this.b));
        dx2 dx2Var = this.H;
        synchronized (dx2Var) {
            dx2Var.I = fy3Var;
        }
        synchronized (dx2Var) {
            try {
                dx2Var.b.a();
                if (dx2Var.M) {
                    dx2Var.f();
                } else {
                    if (dx2Var.a.a.isEmpty()) {
                        throw new IllegalStateException("Received an exception without any callbacks to notify");
                    }
                    if (dx2Var.J) {
                        throw new IllegalStateException("Already failed once");
                    }
                    dx2Var.J = true;
                    ex2 ex2Var = dx2Var.r;
                    cx2 cx2Var = dx2Var.a;
                    cx2Var.getClass();
                    ArrayList<bx2> arrayList = new ArrayList(cx2Var.a);
                    dx2Var.d(arrayList.size() + 1);
                    dx2Var.f.d(dx2Var, ex2Var, null);
                    for (bx2 bx2Var : arrayList) {
                        bx2Var.b.execute(new ax2(0, dx2Var, bx2Var.a));
                    }
                    dx2Var.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        sd2 sd2Var = this.k;
        synchronized (sd2Var) {
            sd2Var.c = true;
            zA = sd2Var.a();
        }
        if (zA) {
            k();
        }
    }

    public final void k() {
        sd2 sd2Var = this.k;
        synchronized (sd2Var) {
            sd2Var.b = false;
            sd2Var.a = false;
            sd2Var.c = false;
        }
        x00 x00Var = this.f;
        x00Var.b = null;
        x00Var.c = null;
        x00Var.d = null;
        qd2 qd2Var = this.a;
        qd2Var.c = null;
        qd2Var.d = null;
        qd2Var.n = null;
        qd2Var.g = null;
        qd2Var.k = null;
        qd2Var.i = null;
        qd2Var.o = null;
        qd2Var.j = null;
        qd2Var.p = null;
        qd2Var.a.clear();
        qd2Var.l = false;
        qd2Var.b.clear();
        qd2Var.m = false;
        this.R = false;
        this.n = null;
        this.p = null;
        this.G = null;
        this.q = null;
        this.r = null;
        this.H = null;
        this.U = 0;
        this.Q = null;
        this.L = null;
        this.M = null;
        this.O = null;
        this.W = 0;
        this.P = null;
        this.J = 0L;
        this.S = false;
        this.K = null;
        this.b.clear();
        this.e.c(this);
    }

    public final void l() {
        this.L = Thread.currentThread();
        int i = g15.b;
        this.J = SystemClock.elapsedRealtimeNanos();
        boolean zA = false;
        while (!this.S && this.Q != null && !(zA = this.Q.a())) {
            this.U = h(this.U);
            this.Q = g();
            if (this.U == 4) {
                this.V = 2;
                dx2 dx2Var = this.H;
                (dx2Var.x ? dx2Var.p : dx2Var.n).execute(this);
                return;
            }
        }
        if ((this.U == 6 || this.S) && !zA) {
            j();
        }
    }

    public final void o() {
        String str;
        int iA = dj7.A(this.V);
        if (iA == 0) {
            this.U = h(1);
            this.Q = g();
            l();
        } else {
            if (iA == 1) {
                l();
                return;
            }
            if (iA == 2) {
                f();
                return;
            }
            int i = this.V;
            if (i == 1) {
                str = "INITIALIZE";
            } else if (i != 2) {
                str = i != 3 ? "null" : "DECODE_DATA";
            } else {
                str = "SWITCH_TO_SOURCE_SERVICE";
            }
            l0.e("Unrecognized run reason: ".concat(str));
        }
    }

    public final void p() {
        this.c.a();
        if (this.R) {
            e6.j("Already notified", this.b.isEmpty() ? null : (Throwable) dj7.e(this.b, 1));
        } else {
            this.R = true;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ra2 ra2Var = this.P;
        try {
            try {
                if (this.S) {
                    j();
                    if (ra2Var != null) {
                        ra2Var.c();
                        return;
                    }
                    return;
                }
                o();
                if (ra2Var != null) {
                    ra2Var.c();
                }
            } catch (Throwable th) {
                if (ra2Var != null) {
                    ra2Var.c();
                }
                throw th;
            }
        } catch (wz0 e) {
            throw e;
        } catch (Throwable th2) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.S + ", stage: " + xs1.w(this.U), th2);
            }
            if (this.U != 5) {
                this.b.add(th2);
                j();
            }
            if (!this.S) {
                throw th2;
            }
            throw th2;
        }
    }
}
