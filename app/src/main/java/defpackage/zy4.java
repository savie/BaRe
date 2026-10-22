package defpackage;

import android.os.Looper;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zy4 {
    public static final Object k = new Object();
    public final Object a = new Object();
    public final bx6 b = new bx6();
    public int c = 0;
    public boolean d;
    public volatile Object e;
    public volatile Object f;
    public int g;
    public boolean h;
    public boolean i;
    public final hm0 j;

    public zy4() {
        Object obj = k;
        this.f = obj;
        this.j = new hm0(this, 3);
        this.e = obj;
        this.g = -1;
    }

    public static void a(String str) {
        f40.W().d.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        l0.e(eq3.k("Cannot invoke ", str, " on a background thread"));
    }

    public final void b(yy4 yy4Var) {
        if (yy4Var.b) {
            if (!yy4Var.d()) {
                yy4Var.a(false);
                return;
            }
            int i = yy4Var.c;
            int i2 = this.g;
            if (i >= i2) {
                return;
            }
            yy4Var.c = i2;
            yy4Var.a.b(this.e);
        }
    }

    public final void c(yy4 yy4Var) {
        if (this.h) {
            this.i = true;
            return;
        }
        this.h = true;
        do {
            this.i = false;
            if (yy4Var != null) {
                b(yy4Var);
                yy4Var = null;
            } else {
                bx6 bx6Var = this.b;
                bx6Var.getClass();
                yw6 yw6Var = new yw6(bx6Var);
                bx6Var.c.put(yw6Var, Boolean.FALSE);
                while (yw6Var.hasNext()) {
                    b((yy4) ((Map.Entry) yw6Var.next()).getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.h = false;
    }

    public final Object d() {
        Object obj = this.e;
        if (obj != k) {
            return obj;
        }
        return null;
    }

    public void e(fu4 fu4Var, es5 es5Var) {
        Object obj;
        a("observe");
        if (fu4Var.getLifecycle().d == st4.a) {
            return;
        }
        xy4 xy4Var = new xy4(this, fu4Var, es5Var);
        bx6 bx6Var = this.b;
        xw6 xw6VarC = bx6Var.c(es5Var);
        if (xw6VarC != null) {
            obj = xw6VarC.b;
        } else {
            xw6 xw6Var = new xw6(es5Var, xy4Var);
            bx6Var.d++;
            xw6 xw6Var2 = bx6Var.b;
            if (xw6Var2 == null) {
                bx6Var.a = xw6Var;
                bx6Var.b = xw6Var;
            } else {
                xw6Var2.c = xw6Var;
                xw6Var.d = xw6Var2;
                bx6Var.b = xw6Var;
            }
            obj = null;
        }
        yy4 yy4Var = (yy4) obj;
        if (yy4Var != null && !yy4Var.c(fu4Var)) {
            c6.f("Cannot add the same observer with different lifecycles");
        } else {
            if (yy4Var != null) {
                return;
            }
            fu4Var.getLifecycle().a(xy4Var);
        }
    }

    public final void f(es5 es5Var) {
        Object obj;
        a("observeForever");
        wy4 wy4Var = new wy4(this, es5Var);
        bx6 bx6Var = this.b;
        xw6 xw6VarC = bx6Var.c(es5Var);
        if (xw6VarC != null) {
            obj = xw6VarC.b;
        } else {
            xw6 xw6Var = new xw6(es5Var, wy4Var);
            bx6Var.d++;
            xw6 xw6Var2 = bx6Var.b;
            if (xw6Var2 == null) {
                bx6Var.a = xw6Var;
                bx6Var.b = xw6Var;
            } else {
                xw6Var2.c = xw6Var;
                xw6Var.d = xw6Var2;
                bx6Var.b = xw6Var;
            }
            obj = null;
        }
        yy4 yy4Var = (yy4) obj;
        if (yy4Var instanceof xy4) {
            c6.f("Cannot add the same observer with different lifecycles");
        } else {
            if (yy4Var != null) {
                return;
            }
            wy4Var.a(true);
        }
    }

    public void i(Object obj) {
        boolean z;
        synchronized (this.a) {
            z = this.f == k;
            this.f = obj;
        }
        if (z) {
            f40.W().X(this.j);
        }
    }

    public void j(es5 es5Var) {
        a("removeObserver");
        yy4 yy4Var = (yy4) this.b.d(es5Var);
        if (yy4Var == null) {
            return;
        }
        yy4Var.b();
        yy4Var.a(false);
    }

    public void k(Object obj) {
        a("setValue");
        this.g++;
        this.e = obj;
        c(null);
    }

    public void g() {
    }

    public void h() {
    }
}
