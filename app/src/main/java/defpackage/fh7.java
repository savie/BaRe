package defpackage;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fh7 implements kk6 {
    public static final boolean D = Log.isLoggable("GlideRequest", 2);
    public boolean A;
    public final RuntimeException B;
    public int C;
    public final String a;
    public final rm7 b;
    public final Object c;
    public final vk6 d;
    public final qk6 e;
    public final Context f;
    public final dy3 g;
    public final Object h;
    public final Class i;
    public final mm0 j;
    public final int k;
    public final int l;
    public final e66 m;
    public final px7 n;
    public final List o;
    public final z98 p;
    public final Executor q;
    public ll6 r;
    public e41 s;
    public long t;
    public volatile zw2 u;
    public Drawable v;
    public Drawable w;
    public Drawable x;
    public int y;
    public int z;

    public fh7(Context context, dy3 dy3Var, Object obj, Object obj2, Class cls, mm0 mm0Var, int i, int i2, e66 e66Var, px7 px7Var, vk6 vk6Var, ArrayList arrayList, qk6 qk6Var, zw2 zw2Var, z98 z98Var, Executor executor) {
        this.a = D ? String.valueOf(hashCode()) : null;
        this.b = new rm7();
        this.c = obj;
        this.f = context;
        this.g = dy3Var;
        this.h = obj2;
        this.i = cls;
        this.j = mm0Var;
        this.k = i;
        this.l = i2;
        this.m = e66Var;
        this.n = px7Var;
        this.d = vk6Var;
        this.o = arrayList;
        this.e = qk6Var;
        this.u = zw2Var;
        this.p = z98Var;
        this.q = executor;
        this.C = 1;
        if (this.B == null && dy3Var.h.a.containsKey(xx3.class)) {
            this.B = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // defpackage.kk6
    public final boolean a() {
        boolean z;
        synchronized (this.c) {
            z = this.C == 4;
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean b(kk6 kk6Var) {
        int i;
        int i2;
        Object obj;
        Class cls;
        mm0 mm0Var;
        e66 e66Var;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class cls2;
        mm0 mm0Var2;
        e66 e66Var2;
        int size2;
        boolean zEquals;
        boolean zF;
        if (!(kk6Var instanceof fh7)) {
            return false;
        }
        synchronized (this.c) {
            try {
                i = this.k;
                i2 = this.l;
                obj = this.h;
                cls = this.i;
                mm0Var = this.j;
                e66Var = this.m;
                List list = this.o;
                size = list != null ? list.size() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        fh7 fh7Var = (fh7) kk6Var;
        synchronized (fh7Var.c) {
            try {
                i3 = fh7Var.k;
                i4 = fh7Var.l;
                obj2 = fh7Var.h;
                cls2 = fh7Var.i;
                mm0Var2 = fh7Var.j;
                e66Var2 = fh7Var.m;
                List list2 = fh7Var.o;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i == i3 && i2 == i4) {
            if (obj == null) {
                zEquals = obj2 == null;
            } else {
                zEquals = obj.equals(obj2);
            }
            if (zEquals && cls.equals(cls2)) {
                if (mm0Var == null) {
                    zF = mm0Var2 == null;
                } else {
                    zF = mm0Var.f(mm0Var2);
                }
                if (zF && e66Var == e66Var2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void c() {
        if (this.A) {
            l0.e("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            return;
        }
        this.b.a();
        this.n.a(this);
        e41 e41Var = this.s;
        if (e41Var != null) {
            synchronized (((zw2) e41Var.d)) {
                ((dx2) e41Var.b).g((fh7) e41Var.c);
            }
            this.s = null;
        }
    }

    @Override // defpackage.kk6
    public final void clear() {
        synchronized (this.c) {
            try {
                if (this.A) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.b.a();
                if (this.C == 6) {
                    return;
                }
                c();
                ll6 ll6Var = this.r;
                if (ll6Var != null) {
                    this.r = null;
                } else {
                    ll6Var = null;
                }
                qk6 qk6Var = this.e;
                if (qk6Var == null || qk6Var.f(this)) {
                    this.n.l(d());
                }
                this.C = 6;
                if (ll6Var != null) {
                    this.u.getClass();
                    zw2.f(ll6Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Drawable d() {
        int i;
        if (this.w == null) {
            mm0 mm0Var = this.j;
            BitmapDrawable bitmapDrawable = mm0Var.d;
            this.w = bitmapDrawable;
            if (bitmapDrawable == null && (i = mm0Var.e) > 0) {
                mm0Var.getClass();
                Context context = this.f;
                this.w = w13.j(context, context, i, context.getTheme());
            }
        }
        return this.w;
    }

    @Override // defpackage.kk6
    public final void e() {
        synchronized (this.c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(String str) {
        StringBuilder sbN = fz5.n(str, " this: ");
        sbN.append(this.a);
        Log.v("GlideRequest", sbN.toString());
    }

    public final void g(fy3 fy3Var, int i) {
        Drawable drawableD;
        this.b.a();
        synchronized (this.c) {
            try {
                fy3Var.getClass();
                int i2 = this.g.i;
                if (i2 <= i) {
                    Log.w("Glide", "Load failed for [" + this.h + "] with dimensions [" + this.y + "x" + this.z + "]", fy3Var);
                    if (i2 <= 4) {
                        fy3Var.d();
                    }
                }
                this.s = null;
                this.C = 5;
                qk6 qk6Var = this.e;
                if (qk6Var != null) {
                    qk6Var.c(this);
                }
                boolean z = true;
                this.A = true;
                try {
                    List<vk6> list = this.o;
                    if (list != null) {
                        for (vk6 vk6Var : list) {
                            px7 px7Var = this.n;
                            qk6 qk6Var2 = this.e;
                            if (qk6Var2 != null) {
                                qk6Var2.getRoot().a();
                            }
                            vk6Var.f(fy3Var, px7Var);
                        }
                    }
                    vk6 vk6Var2 = this.d;
                    if (vk6Var2 != null) {
                        px7 px7Var2 = this.n;
                        qk6 qk6Var3 = this.e;
                        if (qk6Var3 != null) {
                            qk6Var3.getRoot().a();
                        }
                        vk6Var2.f(fy3Var, px7Var2);
                    }
                    qk6 qk6Var4 = this.e;
                    if (qk6Var4 != null && !qk6Var4.g(this)) {
                        z = false;
                    }
                    if (z) {
                        if (this.h == null) {
                            if (this.x == null) {
                                this.x = this.j.r;
                            }
                            drawableD = this.x;
                        } else {
                            drawableD = null;
                        }
                        if (drawableD == null) {
                            if (this.v == null) {
                                this.j.getClass();
                                this.v = null;
                            }
                            drawableD = this.v;
                        }
                        if (drawableD == null) {
                            drawableD = d();
                        }
                        this.n.g(drawableD);
                    }
                    this.A = false;
                } catch (Throwable th) {
                    this.A = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void h(ll6 ll6Var, int i) {
        this.b.a();
        ll6 ll6Var2 = null;
        try {
            synchronized (this.c) {
                try {
                    this.s = null;
                    if (ll6Var == null) {
                        g(new fy3("Expected to receive a Resource<R> with an object of " + this.i + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = ll6Var.get();
                    try {
                        if (obj == null || !this.i.isAssignableFrom(obj.getClass())) {
                            this.r = null;
                            StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                            sb.append(this.i);
                            sb.append(" but instead got ");
                            sb.append(obj != null ? obj.getClass() : "");
                            sb.append("{");
                            sb.append(obj);
                            sb.append("} inside Resource{");
                            sb.append(ll6Var);
                            sb.append("}.");
                            sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            g(new fy3(sb.toString()), 5);
                        } else {
                            qk6 qk6Var = this.e;
                            if (qk6Var == null || qk6Var.h(this)) {
                                l(ll6Var, obj, i);
                                return;
                            } else {
                                this.r = null;
                                this.C = 4;
                            }
                        }
                        this.u.getClass();
                        zw2.f(ll6Var);
                    } catch (Throwable th) {
                        ll6Var2 = ll6Var;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (ll6Var2 != null) {
                this.u.getClass();
                zw2.f(ll6Var2);
            }
            throw th3;
        }
    }

    @Override // defpackage.kk6
    public final boolean i() {
        boolean z;
        synchronized (this.c) {
            z = this.C == 6;
        }
        return z;
    }

    @Override // defpackage.kk6
    public final boolean isRunning() {
        boolean z;
        synchronized (this.c) {
            int i = this.C;
            z = i == 2 || i == 3;
        }
        return z;
    }

    @Override // defpackage.kk6
    public final void j() {
        synchronized (this.c) {
            try {
                if (this.A) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.b.a();
                int i = g15.b;
                this.t = SystemClock.elapsedRealtimeNanos();
                if (this.h == null) {
                    if (xh8.u(this.k, this.l)) {
                        this.y = this.k;
                        this.z = this.l;
                    }
                    if (this.x == null) {
                        this.x = this.j.r;
                    }
                    g(new fy3("Received null model"), this.x == null ? 5 : 3);
                    return;
                }
                int i2 = this.C;
                if (i2 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i2 == 4) {
                    h(this.r, 5);
                    return;
                }
                List<vk6> list = this.o;
                if (list != null) {
                    for (vk6 vk6Var : list) {
                    }
                }
                this.C = 3;
                if (xh8.u(this.k, this.l)) {
                    m(this.k, this.l);
                } else {
                    this.n.c(this);
                }
                int i3 = this.C;
                if (i3 == 2 || i3 == 3) {
                    qk6 qk6Var = this.e;
                    if (qk6Var == null || qk6Var.g(this)) {
                        this.n.j(d());
                    }
                }
                if (D) {
                    f("finished run method in " + g15.a(this.t));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.kk6
    public final boolean k() {
        boolean z;
        synchronized (this.c) {
            z = this.C == 4;
        }
        return z;
    }

    public final void l(ll6 ll6Var, Object obj, int i) {
        qk6 qk6Var = this.e;
        if (qk6Var != null) {
            qk6Var.getRoot().a();
        }
        this.C = 4;
        this.r = ll6Var;
        int i2 = this.g.i;
        Object obj2 = this.h;
        if (i2 <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + xs1.v(i) + " for " + obj2 + " with size [" + this.y + "x" + this.z + "] in " + g15.a(this.t) + " ms");
        }
        if (qk6Var != null) {
            qk6Var.d(this);
        }
        this.A = true;
        try {
            List list = this.o;
            px7 px7Var = this.n;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((vk6) it.next()).i(obj, obj2, px7Var, i);
                }
            }
            vk6 vk6Var = this.d;
            if (vk6Var != null) {
                vk6Var.i(obj, obj2, px7Var, i);
            }
            px7Var.b(obj, this.p.o(i));
        } finally {
            this.A = false;
        }
    }

    public final void m(int i, int i2) {
        Object obj;
        int iRound = i;
        this.b.a();
        Object obj2 = this.c;
        synchronized (obj2) {
            try {
                try {
                    boolean z = D;
                    if (z) {
                        f("Got onSizeReady in " + g15.a(this.t));
                    }
                    if (this.C != 3) {
                        return;
                    }
                    this.C = 2;
                    this.j.getClass();
                    if (iRound != Integer.MIN_VALUE) {
                        iRound = Math.round(iRound * 1.0f);
                    }
                    this.y = iRound;
                    this.z = i2 == Integer.MIN_VALUE ? i2 : Math.round(1.0f * i2);
                    if (z) {
                        f("finished setup for calling load in " + g15.a(this.t));
                    }
                    zw2 zw2Var = this.u;
                    dy3 dy3Var = this.g;
                    Object obj3 = this.h;
                    mm0 mm0Var = this.j;
                    try {
                        try {
                            try {
                                try {
                                    this.s = zw2Var.a(dy3Var, obj3, mm0Var.p, this.y, this.z, mm0Var.y, this.i, this.m, mm0Var.b, mm0Var.x, mm0Var.q, mm0Var.I, mm0Var.t, mm0Var.f, mm0Var.J, this, this.q);
                                    if (this.C != 2) {
                                        this.s = null;
                                    }
                                    if (z) {
                                        f("finished onSizeReady in " + g15.a(this.t));
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    obj = obj2;
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                obj = obj2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        obj = obj2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                obj = obj2;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.c) {
            obj = this.h;
            cls = this.i;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
