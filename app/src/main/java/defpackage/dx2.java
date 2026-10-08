package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dx2 implements d33 {
    public static final lv1 N = new lv1(14);
    public int G;
    public boolean H;
    public fy3 I;
    public boolean J;
    public fx2 K;
    public td2 L;
    public volatile boolean M;
    public final zw2 c;
    public final d36 d;
    public final zw2 f;
    public final jy3 k;
    public final jy3 n;
    public final jy3 p;
    public ex2 r;
    public boolean t;
    public boolean x;
    public ll6 y;
    public final cx2 a = new cx2(new ArrayList(2));
    public final rm7 b = new rm7();
    public final AtomicInteger q = new AtomicInteger();
    public final lv1 e = N;

    public dx2(jy3 jy3Var, jy3 jy3Var2, jy3 jy3Var3, jy3 jy3Var4, zw2 zw2Var, zw2 zw2Var2, l22 l22Var) {
        this.k = jy3Var;
        this.n = jy3Var2;
        this.p = jy3Var4;
        this.f = zw2Var;
        this.c = zw2Var2;
        this.d = l22Var;
    }

    @Override // defpackage.d33
    public final rm7 a() {
        return this.b;
    }

    public final synchronized void b(fh7 fh7Var, Executor executor) {
        try {
            this.b.a();
            this.a.a.add(new bx2(fh7Var, executor));
            int i = 1;
            if (this.H) {
                d(1);
                executor.execute(new td9(i, this, fh7Var));
            } else if (this.J) {
                d(1);
                executor.execute(new ax2(0, this, fh7Var));
            } else {
                ms8.h("Cannot add callbacks to a cancelled EngineJob", !this.M);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void c() {
        fx2 fx2Var;
        synchronized (this) {
            try {
                this.b.a();
                ms8.h("Not yet complete!", e());
                int iDecrementAndGet = this.q.decrementAndGet();
                ms8.h("Can't decrement below 0", iDecrementAndGet >= 0);
                if (iDecrementAndGet == 0) {
                    fx2Var = this.K;
                    f();
                } else {
                    fx2Var = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (fx2Var != null) {
            fx2Var.e();
        }
    }

    public final synchronized void d(int i) {
        fx2 fx2Var;
        ms8.h("Not yet complete!", e());
        if (this.q.getAndAdd(i) == 0 && (fx2Var = this.K) != null) {
            fx2Var.a();
        }
    }

    public final boolean e() {
        return this.J || this.H || this.M;
    }

    public final synchronized void f() {
        boolean zA;
        if (this.r == null) {
            throw new IllegalArgumentException();
        }
        this.a.a.clear();
        this.r = null;
        this.K = null;
        this.y = null;
        this.J = false;
        this.M = false;
        this.H = false;
        td2 td2Var = this.L;
        sd2 sd2Var = td2Var.k;
        synchronized (sd2Var) {
            sd2Var.a = true;
            zA = sd2Var.a();
        }
        if (zA) {
            td2Var.k();
        }
        this.L = null;
        this.I = null;
        this.G = 0;
        this.d.c(this);
    }

    public final synchronized void g(fh7 fh7Var) {
        try {
            this.b.a();
            this.a.a.remove(new bx2(fh7Var, xh8.f));
            if (this.a.a.isEmpty()) {
                if (!e()) {
                    this.M = true;
                    td2 td2Var = this.L;
                    td2Var.S = true;
                    ta2 ta2Var = td2Var.Q;
                    if (ta2Var != null) {
                        ta2Var.cancel();
                    }
                    zw2 zw2Var = this.f;
                    ex2 ex2Var = this.r;
                    synchronized (zw2Var) {
                        di4 di4Var = zw2Var.a;
                        di4Var.getClass();
                        HashMap map = di4Var.a;
                        if (this == map.get(ex2Var)) {
                            map.remove(ex2Var);
                        }
                    }
                }
                if (this.H || this.J) {
                    if (this.q.get() == 0) {
                        f();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
