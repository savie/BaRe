package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class y67 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(y67.class, Object.class, "head$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater d;
    public static final /* synthetic */ AtomicReferenceFieldUpdater e;
    public static final /* synthetic */ AtomicLongFieldUpdater f;
    public static final /* synthetic */ AtomicIntegerFieldUpdater k;
    public static final /* synthetic */ long n;
    public static final /* synthetic */ long p;
    private volatile /* synthetic */ int _availablePermits$volatile;
    public final int a;
    public final v67 b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    static {
        Unsafe unsafe = oh6.a;
        n = unsafe.objectFieldOffset(y67.class.getDeclaredField("head$volatile"));
        d = AtomicLongFieldUpdater.newUpdater(y67.class, "deqIdx$volatile");
        e = AtomicReferenceFieldUpdater.newUpdater(y67.class, Object.class, "tail$volatile");
        p = unsafe.objectFieldOffset(y67.class.getDeclaredField("tail$volatile"));
        f = AtomicLongFieldUpdater.newUpdater(y67.class, "enqIdx$volatile");
        k = AtomicIntegerFieldUpdater.newUpdater(y67.class, "_availablePermits$volatile");
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [v67] */
    public y67(int i) {
        this.a = i;
        if (i <= 0) {
            f6.g(fz5.j(i, "Semaphore should have at least 1 permit, but had "));
            throw null;
        }
        if (i < 0) {
            f6.g(fz5.j(i, "The number of acquired permits should be in 0.."));
            throw null;
        }
        b77 b77Var = new b77(0L, null, 2);
        this.head$volatile = b77Var;
        this.tail$volatile = b77Var;
        this._availablePermits$volatile = i;
        this.b = new rt3() { // from class: v67
            @Override // defpackage.rt3
            public final Object a(Object obj, Object obj2, Object obj3) {
                this.a.e();
                return be8.a;
            }
        };
    }

    public final Object c(kv1 kv1Var) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int andDecrement;
        int i;
        do {
            atomicIntegerFieldUpdater = k;
            andDecrement = atomicIntegerFieldUpdater.getAndDecrement(this);
            i = this.a;
        } while (andDecrement > i);
        be8 be8Var = be8.a;
        if (andDecrement <= 0) {
            o21 o21VarT = g67.t(nc8.D(kv1Var));
            try {
                if (!d(o21VarT)) {
                    while (true) {
                        int andDecrement2 = atomicIntegerFieldUpdater.getAndDecrement(this);
                        if (andDecrement2 <= i) {
                            if (andDecrement2 > 0) {
                                o21VarT.e(be8Var, this.b);
                                break;
                            }
                            if (d(o21VarT)) {
                                break;
                            }
                        }
                    }
                }
                Object objS = o21VarT.s();
                yx1 yx1Var = yx1.a;
                if (objS != yx1Var) {
                    objS = be8Var;
                }
                if (objS == yx1Var) {
                    return objS;
                }
            } catch (Throwable th) {
                o21VarT.B();
                throw th;
            }
        }
        return be8Var;
    }

    public final boolean d(wn8 wn8Var) {
        Object objK;
        Unsafe unsafe;
        y67 y67Var = this;
        e.getClass();
        Unsafe unsafe2 = oh6.a;
        long j = p;
        b77 b77Var = (b77) unsafe2.getObjectVolatile(y67Var, j);
        long andIncrement = f.getAndIncrement(y67Var);
        w67 w67Var = w67.a;
        long j2 = andIncrement / ((long) a77.f);
        loop0: while (true) {
            objK = zm5.k(b77Var, j2, w67Var);
            if (lg7.v(objK)) {
                break;
            }
            n67 n67VarS = lg7.s(objK);
            while (true) {
                n67 n67Var = (n67) oh6.a.getObjectVolatile(y67Var, j);
                if (n67Var.e >= n67VarS.e) {
                    y67Var = this;
                    break loop0;
                }
                if (!n67VarS.o()) {
                    break;
                }
                do {
                    unsafe = oh6.a;
                    y67Var = this;
                    if (unsafe.compareAndSwapObject(y67Var, p, n67Var, n67VarS)) {
                        if (!n67Var.k()) {
                            break loop0;
                        }
                        n67Var.i();
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(y67Var, j) == n67Var);
                if (n67VarS.k()) {
                    n67VarS.i();
                }
            }
            y67Var = this;
        }
        b77 b77Var2 = (b77) lg7.s(objK);
        AtomicReferenceArray atomicReferenceArray = b77Var2.g;
        int i = (int) (andIncrement % ((long) a77.f));
        while (!atomicReferenceArray.compareAndSet(i, null, wn8Var)) {
            if (atomicReferenceArray.get(i) != null) {
                du9 du9Var = a77.b;
                du9 du9Var2 = a77.c;
                while (!atomicReferenceArray.compareAndSet(i, du9Var, du9Var2)) {
                    if (atomicReferenceArray.get(i) != du9Var) {
                        return false;
                    }
                }
                ((m21) wn8Var).e(be8.a, y67Var.b);
                return true;
            }
        }
        wn8Var.a(b77Var2, i);
        return true;
    }

    public final void e() {
        int i;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = k;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i2 = this.a;
            if (andIncrement >= i2) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i2) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i2));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i2).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!f());
    }

    public final boolean f() {
        Object objK;
        Unsafe unsafe;
        c.getClass();
        Unsafe unsafe2 = oh6.a;
        long j = n;
        b77 b77Var = (b77) unsafe2.getObjectVolatile(this, j);
        long andIncrement = d.getAndIncrement(this);
        long j2 = andIncrement / ((long) a77.f);
        x67 x67Var = x67.a;
        loop0: while (true) {
            objK = zm5.k(b77Var, j2, x67Var);
            if (lg7.v(objK)) {
                break;
            }
            n67 n67VarS = lg7.s(objK);
            while (true) {
                n67 n67Var = (n67) oh6.a.getObjectVolatile(this, j);
                if (n67Var.e >= n67VarS.e) {
                    break loop0;
                }
                if (!n67VarS.o()) {
                    break;
                }
                do {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(this, n, n67Var, n67VarS)) {
                        if (!n67Var.k()) {
                            break loop0;
                        }
                        n67Var.i();
                        break loop0;
                    }
                } while (unsafe.getObjectVolatile(this, j) == n67Var);
                if (n67VarS.k()) {
                    n67VarS.i();
                }
            }
        }
        b77 b77Var2 = (b77) lg7.s(objK);
        AtomicReferenceArray atomicReferenceArray = b77Var2.g;
        b77Var2.b();
        boolean z = false;
        if (b77Var2.e <= j2) {
            int i = (int) (andIncrement % ((long) a77.f));
            Object andSet = atomicReferenceArray.getAndSet(i, a77.b);
            if (andSet == null) {
                int i2 = a77.a;
                for (int i3 = 0; i3 < i2; i3++) {
                    if (atomicReferenceArray.get(i) == a77.c) {
                        return true;
                    }
                }
                du9 du9Var = a77.b;
                du9 du9Var2 = a77.d;
                while (!atomicReferenceArray.compareAndSet(i, du9Var, du9Var2)) {
                    if (atomicReferenceArray.get(i) != du9Var) {
                        return !z;
                    }
                }
                z = true;
                return !z;
            }
            if (andSet != a77.e) {
                if (!(andSet instanceof m21)) {
                    l0.k(andSet, "unexpected: ");
                    return false;
                }
                m21 m21Var = (m21) andSet;
                du9 du9VarB = m21Var.b(be8.a, this.b);
                if (du9VarB != null) {
                    m21Var.g(du9VarB);
                    return true;
                }
            }
        }
        return false;
    }
}
