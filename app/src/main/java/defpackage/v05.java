package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class v05 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(v05.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater b;
    public static final /* synthetic */ AtomicReferenceFieldUpdater c;
    public static final /* synthetic */ long d;
    public static final /* synthetic */ long e;
    public static final /* synthetic */ long f;
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    static {
        Unsafe unsafe = oh6.a;
        d = unsafe.objectFieldOffset(v05.class.getDeclaredField("_next$volatile"));
        b = AtomicReferenceFieldUpdater.newUpdater(v05.class, Object.class, "_prev$volatile");
        e = unsafe.objectFieldOffset(v05.class.getDeclaredField("_prev$volatile"));
        c = AtomicReferenceFieldUpdater.newUpdater(v05.class, Object.class, "_removedRef$volatile");
        f = unsafe.objectFieldOffset(v05.class.getDeclaredField("_removedRef$volatile"));
    }

    public static v05 g(v05 v05Var) {
        while (v05Var.l()) {
            b.getClass();
            v05Var = (v05) oh6.a.getObjectVolatile(v05Var, e);
        }
        return v05Var;
    }

    public final boolean c(v05 v05Var, int i) {
        v05 v05VarK;
        do {
            v05VarK = k();
            if (v05VarK instanceof xw4) {
                return (((xw4) v05VarK).k & i) == 0 && v05VarK.c(v05Var, i);
            }
        } while (!v05VarK.d(v05Var, this));
        return true;
    }

    public final boolean d(v05 v05Var, v05 v05Var2) {
        b.getClass();
        Unsafe unsafe = oh6.a;
        unsafe.putObjectVolatile(v05Var, e, this);
        a.getClass();
        long j = d;
        unsafe.putObjectVolatile(v05Var, j, v05Var2);
        while (true) {
            Unsafe unsafe2 = oh6.a;
            v05 v05Var3 = this;
            v05 v05Var4 = v05Var;
            v05 v05Var5 = v05Var2;
            if (unsafe2.compareAndSwapObject(v05Var3, d, v05Var5, v05Var4)) {
                v05Var4.h(v05Var5);
                return true;
            }
            if (unsafe2.getObjectVolatile(v05Var3, j) != v05Var5) {
                return false;
            }
            this = v05Var3;
            v05Var2 = v05Var5;
            v05Var = v05Var4;
        }
    }

    public final void e(wn5 wn5Var) {
        v05 v05Var;
        wn5 wn5Var2;
        b.getClass();
        Unsafe unsafe = oh6.a;
        unsafe.putObjectVolatile(wn5Var, e, this);
        a.getClass();
        long j = d;
        unsafe.putObjectVolatile(wn5Var, j, this);
        while (this.i() == this) {
            while (true) {
                Unsafe unsafe2 = oh6.a;
                v05Var = this;
                wn5Var2 = wn5Var;
                if (unsafe2.compareAndSwapObject(v05Var, d, this, wn5Var2)) {
                    wn5Var2.h(v05Var);
                    return;
                } else {
                    if (unsafe2.getObjectVolatile(v05Var, j) != v05Var) {
                        break;
                    }
                    this = v05Var;
                    wn5Var = wn5Var2;
                }
            }
            this = v05Var;
            wn5Var = wn5Var2;
        }
    }

    public final v05 f() {
        while (true) {
            b.getClass();
            Unsafe unsafe = oh6.a;
            long j = e;
            v05 v05Var = (v05) unsafe.getObjectVolatile(this, j);
            v05 v05Var2 = null;
            v05 v05Var3 = v05Var;
            while (true) {
                a.getClass();
                if (v05Var3 == null) {
                    e6.d();
                    return null;
                }
                Unsafe unsafe2 = oh6.a;
                long j2 = d;
                Object objectVolatile = unsafe2.getObjectVolatile(v05Var3, j2);
                if (objectVolatile == this) {
                    if (v05Var != v05Var3) {
                        while (true) {
                            Unsafe unsafe3 = oh6.a;
                            v05 v05Var4 = this;
                            boolean zCompareAndSwapObject = unsafe3.compareAndSwapObject(v05Var4, e, v05Var, v05Var3);
                            v05 v05Var5 = v05Var;
                            this = v05Var4;
                            if (!zCompareAndSwapObject) {
                                if (unsafe3.getObjectVolatile(this, j) != v05Var5) {
                                    break;
                                }
                                this = this;
                                v05Var = v05Var5;
                            }
                        }
                    }
                    return v05Var3;
                }
                v05Var = v05Var;
                this = this;
                if (this.l()) {
                    return null;
                }
                if (!(objectVolatile instanceof jj6)) {
                    objectVolatile.getClass();
                    v05Var2 = v05Var3;
                    v05Var3 = (v05) objectVolatile;
                } else if (v05Var2 != null) {
                    v05 v05Var6 = ((jj6) objectVolatile).a;
                    while (true) {
                        v05 v05Var7 = v05Var3;
                        Unsafe unsafe4 = oh6.a;
                        boolean zCompareAndSwapObject2 = unsafe4.compareAndSwapObject(v05Var2, d, v05Var7, v05Var6);
                        v05Var3 = v05Var7;
                        if (zCompareAndSwapObject2) {
                            v05Var3 = v05Var2;
                            v05Var2 = null;
                            break;
                        }
                        if (unsafe4.getObjectVolatile(v05Var2, j2) != v05Var3) {
                            break;
                        }
                    }
                } else {
                    if (v05Var3 == null) {
                        e6.d();
                        return null;
                    }
                    v05Var3 = (v05) unsafe2.getObjectVolatile(v05Var3, j);
                }
            }
            this = this;
        }
    }

    public final void h(v05 v05Var) {
        v05 v05Var2;
        while (true) {
            b.getClass();
            if (v05Var == null) {
                e6.d();
                return;
            }
            Unsafe unsafe = oh6.a;
            long j = e;
            v05 v05Var3 = (v05) unsafe.getObjectVolatile(v05Var, j);
            if (this.i() != v05Var) {
                return;
            }
            while (true) {
                if (v05Var == null) {
                    e6.d();
                    return;
                }
                Unsafe unsafe2 = oh6.a;
                v05Var2 = this;
                v05 v05Var4 = v05Var;
                if (unsafe2.compareAndSwapObject(v05Var4, e, v05Var3, v05Var2)) {
                    if (v05Var2.l()) {
                        v05Var4.f();
                        return;
                    }
                    return;
                } else {
                    if (v05Var4 == null) {
                        e6.d();
                        return;
                    }
                    v05Var = v05Var4;
                    if (unsafe2.getObjectVolatile(v05Var4, j) != v05Var3) {
                        break;
                    } else {
                        this = v05Var2;
                    }
                }
            }
            this = v05Var2;
        }
    }

    public final Object i() {
        a.getClass();
        return oh6.a.getObjectVolatile(this, d);
    }

    public final v05 j() {
        Object objI = i();
        jj6 jj6Var = objI instanceof jj6 ? (jj6) objI : null;
        if (jj6Var != null) {
            return jj6Var.a;
        }
        objI.getClass();
        return (v05) objI;
    }

    public final v05 k() {
        v05 v05VarF = f();
        if (v05VarF != null) {
            return v05VarF;
        }
        b.getClass();
        return g((v05) oh6.a.getObjectVolatile(this, e));
    }

    public boolean l() {
        return i() instanceof jj6;
    }

    public final v05 m() {
        v05 v05Var;
        while (true) {
            Object objI = this.i();
            if (objI instanceof jj6) {
                return ((jj6) objI).a;
            }
            if (objI == this) {
                return (v05) objI;
            }
            objI.getClass();
            v05 v05Var2 = (v05) objI;
            jj6 jj6VarN = v05Var2.n();
            while (true) {
                a.getClass();
                Unsafe unsafe = oh6.a;
                long j = d;
                v05Var = this;
                if (unsafe.compareAndSwapObject(v05Var, j, objI, jj6VarN)) {
                    v05Var2.f();
                    return null;
                }
                if (unsafe.getObjectVolatile(v05Var, j) != objI) {
                    break;
                }
                this = v05Var;
            }
            this = v05Var;
        }
    }

    public final jj6 n() {
        c.getClass();
        Unsafe unsafe = oh6.a;
        long j = f;
        jj6 jj6Var = (jj6) unsafe.getObjectVolatile(this, j);
        if (jj6Var != null) {
            return jj6Var;
        }
        jj6 jj6Var2 = new jj6(this);
        unsafe.putObjectVolatile(this, j, jj6Var2);
        return jj6Var2;
    }

    public String toString() {
        return new u05(this, od2.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + od2.l(this);
    }
}
