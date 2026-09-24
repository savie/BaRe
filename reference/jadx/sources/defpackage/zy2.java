package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zy2 extends uy2 implements qg2 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(zy2.class, Object.class, "_queue$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater n;
    public static final /* synthetic */ AtomicIntegerFieldUpdater p;
    public static final /* synthetic */ long q;
    public static final /* synthetic */ long r;
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile;
    private volatile /* synthetic */ Object _queue$volatile;

    static {
        Unsafe unsafe = oh6.a;
        r = unsafe.objectFieldOffset(zy2.class.getDeclaredField("_queue$volatile"));
        n = AtomicReferenceFieldUpdater.newUpdater(zy2.class, Object.class, "_delayed$volatile");
        q = unsafe.objectFieldOffset(zy2.class.getDeclaredField("_delayed$volatile"));
        p = AtomicIntegerFieldUpdater.newUpdater(zy2.class, "_isCompleted$volatile");
    }

    public final Runnable A() {
        zy2 zy2Var;
        Unsafe unsafe;
        while (true) {
            k.getClass();
            Unsafe unsafe2 = oh6.a;
            long j = r;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                return null;
            }
            if (objectVolatile instanceof y05) {
                y05 y05Var = (y05) objectVolatile;
                Object objE = y05Var.e();
                if (objE == y05.g) {
                    y05 y05VarD = y05Var.d();
                    while (true) {
                        Unsafe unsafe3 = oh6.a;
                        zy2Var = this;
                        if (unsafe3.compareAndSwapObject(zy2Var, r, objectVolatile, y05VarD) || unsafe3.getObjectVolatile(zy2Var, j) != objectVolatile) {
                            break;
                        }
                        this = zy2Var;
                    }
                } else {
                    return (Runnable) objE;
                }
            } else {
                zy2Var = this;
                if (objectVolatile == jm1.d) {
                    return null;
                }
                do {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(zy2Var, r, objectVolatile, (Object) null)) {
                        return (Runnable) objectVolatile;
                    }
                } while (unsafe.getObjectVolatile(zy2Var, j) == objectVolatile);
            }
            this = zy2Var;
        }
    }

    public void D(Runnable runnable) {
        G();
        if (!J(runnable)) {
            ge2.t.D(runnable);
            return;
        }
        Thread threadS = S();
        if (Thread.currentThread() != threadS) {
            LockSupport.unpark(threadS);
        }
    }

    public final void G() {
        xy2 xy2VarB;
        n.getClass();
        yy2 yy2Var = (yy2) oh6.a.getObjectVolatile(this, q);
        if (yy2Var == null || t28.b.get(yy2Var) == 0) {
            return;
        }
        long jNanoTime = System.nanoTime();
        do {
            synchronized (yy2Var) {
                try {
                    xy2[] xy2VarArr = yy2Var.a;
                    xy2VarB = null;
                    xy2 xy2Var = xy2VarArr != null ? xy2VarArr[0] : null;
                    if (xy2Var != null) {
                        if (jNanoTime - xy2Var.a >= 0 ? J(xy2Var) : false) {
                            xy2VarB = yy2Var.b(0);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (xy2VarB != null);
    }

    public final boolean J(Runnable runnable) {
        Unsafe unsafe;
        Unsafe unsafe2;
        Unsafe unsafe3;
        while (true) {
            k.getClass();
            Unsafe unsafe4 = oh6.a;
            long j = r;
            Object objectVolatile = unsafe4.getObjectVolatile(this, j);
            if (p.get(this) == 1) {
                return false;
            }
            if (objectVolatile == null) {
                do {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(this, r, (Object) null, runnable)) {
                        return true;
                    }
                } while (unsafe.getObjectVolatile(this, j) == null);
            } else if (objectVolatile instanceof y05) {
                y05 y05Var = (y05) objectVolatile;
                int iA = y05Var.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    y05 y05VarD = y05Var.d();
                    do {
                        unsafe2 = oh6.a;
                        if (unsafe2.compareAndSwapObject(this, r, objectVolatile, y05VarD)) {
                            break;
                        }
                    } while (unsafe2.getObjectVolatile(this, j) == objectVolatile);
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (objectVolatile == jm1.d) {
                    return false;
                }
                y05 y05Var2 = new y05(8, true);
                y05Var2.a((Runnable) objectVolatile);
                y05Var2.a(runnable);
                do {
                    unsafe3 = oh6.a;
                    if (unsafe3.compareAndSwapObject(this, r, objectVolatile, y05Var2)) {
                        return true;
                    }
                } while (unsafe3.getObjectVolatile(this, j) == objectVolatile);
            }
        }
    }

    public final long O() {
        xy2 xy2Var;
        w40 w40Var = this.e;
        if (((w40Var == null || w40Var.isEmpty()) ? Long.MAX_VALUE : 0L) != 0) {
            k.getClass();
            Unsafe unsafe = oh6.a;
            Object objectVolatile = unsafe.getObjectVolatile(this, r);
            if (objectVolatile != null) {
                if (objectVolatile instanceof y05) {
                    long j = y05.f.get((y05) objectVolatile);
                    if (((int) (1073741823 & j)) != ((int) ((j & 1152921503533105152L) >> 30))) {
                        return 0L;
                    }
                } else if (objectVolatile == jm1.d) {
                    return Long.MAX_VALUE;
                }
            }
            n.getClass();
            yy2 yy2Var = (yy2) unsafe.getObjectVolatile(this, q);
            if (yy2Var != null) {
                synchronized (yy2Var) {
                    xy2[] xy2VarArr = yy2Var.a;
                    xy2Var = xy2VarArr != null ? xy2VarArr[0] : null;
                }
                if (xy2Var != null) {
                    long jNanoTime = xy2Var.a - System.nanoTime();
                    if (jNanoTime >= 0) {
                        return jNanoTime;
                    }
                }
            }
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public abstract Thread S();

    public final boolean U() {
        w40 w40Var = this.e;
        if (w40Var != null ? w40Var.isEmpty() : true) {
            n.getClass();
            Unsafe unsafe = oh6.a;
            yy2 yy2Var = (yy2) unsafe.getObjectVolatile(this, q);
            if (yy2Var != null && t28.b.get(yy2Var) != 0) {
                return false;
            }
            k.getClass();
            Object objectVolatile = unsafe.getObjectVolatile(this, r);
            if (objectVolatile != null) {
                if (objectVolatile instanceof y05) {
                    long j = y05.f.get((y05) objectVolatile);
                    return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
                }
                if (objectVolatile == jm1.d) {
                }
            }
            return true;
        }
        return false;
    }

    public void W(long j, xy2 xy2Var) {
        ge2.t.b0(j, xy2Var);
    }

    public final void Y() {
        xy2 xy2VarB;
        long jNanoTime = System.nanoTime();
        while (true) {
            n.getClass();
            yy2 yy2Var = (yy2) oh6.a.getObjectVolatile(this, q);
            if (yy2Var == null) {
                return;
            }
            synchronized (yy2Var) {
                xy2VarB = t28.b.get(yy2Var) > 0 ? yy2Var.b(0) : null;
            }
            if (xy2VarB == null) {
                return;
            } else {
                W(jNanoTime, xy2VarB);
            }
        }
    }

    public final void Z() {
        k.getClass();
        Unsafe unsafe = oh6.a;
        unsafe.putObjectVolatile(this, r, (Object) null);
        n.getClass();
        unsafe.putObjectVolatile(this, q, (Object) null);
    }

    public final void b0(long j, xy2 xy2Var) {
        Thread threadS;
        int iC0 = c0(j, xy2Var);
        if (iC0 == 0) {
            if (!g0(xy2Var) || Thread.currentThread() == (threadS = S())) {
                return;
            }
            LockSupport.unpark(threadS);
            return;
        }
        if (iC0 == 1) {
            W(j, xy2Var);
        } else {
            if (iC0 == 2) {
                return;
            }
            l0.e("unexpected result");
        }
    }

    public final int c0(long j, xy2 xy2Var) {
        zy2 zy2Var;
        Unsafe unsafe;
        if (p.get(this) == 1) {
            return 1;
        }
        n.getClass();
        Unsafe unsafe2 = oh6.a;
        long j2 = q;
        yy2 yy2Var = (yy2) unsafe2.getObjectVolatile(this, j2);
        if (yy2Var == null) {
            yy2 yy2Var2 = new yy2();
            yy2Var2.c = j;
            while (true) {
                unsafe = oh6.a;
                zy2Var = this;
                if (unsafe.compareAndSwapObject(zy2Var, q, (Object) null, yy2Var2) || unsafe.getObjectVolatile(zy2Var, j2) != null) {
                    break;
                }
                this = zy2Var;
            }
            Object objectVolatile = unsafe.getObjectVolatile(zy2Var, j2);
            objectVolatile.getClass();
            yy2Var = (yy2) objectVolatile;
        } else {
            zy2Var = this;
        }
        return xy2Var.b(j, yy2Var, zy2Var);
    }

    @Override // defpackage.qg2
    public final void g(long j, o21 o21Var) {
        long j2 = 0;
        if (j > 0) {
            j2 = j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j;
        }
        if (j2 < 4611686018427387903L) {
            long jNanoTime = System.nanoTime();
            vy2 vy2Var = new vy2(this, j2 + jNanoTime, o21Var);
            b0(jNanoTime, vy2Var);
            o21Var.x(new jn2(vy2Var));
        }
    }

    public final boolean g0(xy2 xy2Var) {
        n.getClass();
        yy2 yy2Var = (yy2) oh6.a.getObjectVolatile(this, q);
        xy2 xy2Var2 = null;
        if (yy2Var != null) {
            synchronized (yy2Var) {
                xy2[] xy2VarArr = yy2Var.a;
                xy2Var2 = xy2VarArr != null ? xy2VarArr[0] : null;
            }
        }
        return xy2Var2 == xy2Var;
    }

    @Override // defpackage.rx1
    public final void j(ox1 ox1Var, Runnable runnable) {
        D(runnable);
    }

    @Override // defpackage.uy2
    public void shutdown() {
        r28.a.set(null);
        p.set(this, 1);
        z();
        while (u() <= 0) {
        }
        Y();
    }

    @Override // defpackage.uy2
    public final long u() {
        if (v()) {
            return 0L;
        }
        G();
        Runnable runnableA = A();
        if (runnableA == null) {
            return O();
        }
        runnableA.run();
        return 0L;
    }

    public final void z() {
        zy2 zy2Var;
        Unsafe unsafe;
        du9 du9Var = jm1.d;
        while (true) {
            k.getClass();
            Unsafe unsafe2 = oh6.a;
            long j = r;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                while (true) {
                    Unsafe unsafe3 = oh6.a;
                    zy2Var = this;
                    if (unsafe3.compareAndSwapObject(zy2Var, r, (Object) null, du9Var)) {
                        return;
                    }
                    if (unsafe3.getObjectVolatile(zy2Var, j) != null) {
                        break;
                    } else {
                        this = zy2Var;
                    }
                }
            } else {
                zy2Var = this;
                if (objectVolatile instanceof y05) {
                    ((y05) objectVolatile).c();
                    return;
                }
                if (objectVolatile == du9Var) {
                    return;
                }
                y05 y05Var = new y05(8, true);
                y05Var.a((Runnable) objectVolatile);
                do {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(zy2Var, r, objectVolatile, y05Var)) {
                        return;
                    }
                } while (unsafe.getObjectVolatile(zy2Var, j) == objectVolatile);
            }
            this = zy2Var;
        }
    }
}
