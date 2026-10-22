package defpackage;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gk7 {
    public static final qr2 p = new qr2();
    public static final rr2 q = new rr2();
    public static final sr2 r = new sr2();
    public static final tr2 s = new tr2();
    public static final ur2 t = new ur2();
    public static final pr2 u = new pr2();
    public final Object d;
    public final wx3 e;
    public float j;
    public hk7 m;
    public float n;
    public boolean o;
    public float a = 0.0f;
    public float b = Float.MAX_VALUE;
    public boolean c = false;
    public boolean f = false;
    public final float g = Float.MAX_VALUE;
    public final float h = -3.4028235E38f;
    public long i = 0;
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    public gk7(Object obj, wx3 wx3Var) {
        this.d = obj;
        this.e = wx3Var;
        if (wx3Var == r || wx3Var == s || wx3Var == t) {
            this.j = 0.1f;
        } else if (wx3Var == u) {
            this.j = 0.00390625f;
        } else if (wx3Var == p || wx3Var == q) {
            this.j = 0.002f;
        } else {
            this.j = 1.0f;
        }
        this.m = null;
        this.n = Float.MAX_VALUE;
        this.o = false;
    }

    public static dd b() {
        ThreadLocal threadLocal = dd.i;
        if (threadLocal.get() == null) {
            threadLocal.set(new dd(new cd(0)));
        }
        return (dd) threadLocal.get();
    }

    public final void a(float f) {
        if (this.f) {
            this.n = f;
            return;
        }
        if (this.m == null) {
            this.m = new hk7(f);
        }
        hk7 hk7Var = this.m;
        double d = f;
        hk7Var.i = d;
        double d2 = (float) d;
        float f2 = this.g;
        if (d2 > f2) {
            g84.j("Final position of the spring cannot be greater than the max value.");
            return;
        }
        float f3 = this.h;
        if (d2 < f3) {
            g84.j("Final position of the spring cannot be less than the min value.");
            return;
        }
        double dAbs = Math.abs(this.j * 0.75f);
        hk7Var.d = dAbs;
        hk7Var.e = dAbs * 62.5d;
        cd cdVar = b().e;
        cdVar.getClass();
        if (Thread.currentThread() != ((Looper) cdVar.c).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        boolean z = this.f;
        if (z || z) {
            return;
        }
        this.f = true;
        if (!this.c) {
            this.b = this.e.m(this.d);
        }
        float f4 = this.b;
        if (f4 > f2 || f4 < f3) {
            c6.f("Starting value need to be in between min value and max value");
        } else {
            b().a(this);
        }
    }

    public final void c(float f) {
        if (f > 0.0f) {
            this.j = f;
        } else {
            c6.f("Minimum visible change must be positive.");
        }
    }

    public final void d(float f) {
        this.e.A(this.d, f);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.l;
            if (i >= arrayList.size()) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (arrayList.get(size) == null) {
                        arrayList.remove(size);
                    }
                }
                return;
            }
            if (arrayList.get(i) != null) {
                ((u98) arrayList.get(i)).getClass();
                throw null;
            }
            i++;
        }
    }

    public final void e() {
        if (this.m.b <= 0.0d) {
            g84.j("Spring animations can only come to an end when there is damping");
            return;
        }
        cd cdVar = b().e;
        cdVar.getClass();
        if (Thread.currentThread() != ((Looper) cdVar.c).getThread()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.f) {
            this.o = true;
        }
    }
}
