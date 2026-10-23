package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ym2 extends an2 implements zx1, jv1 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(ym2.class, Object.class, "_reusableCancellableContinuation$volatile");
    public static final /* synthetic */ long p = oh6.a.objectFieldOffset(ym2.class.getDeclaredField("_reusableCancellableContinuation$volatile"));
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    public final rx1 d;
    public final kv1 e;
    public Object f;
    public final Object k;

    public ym2(rx1 rx1Var, kv1 kv1Var) {
        super(-1);
        this.d = rx1Var;
        this.e = kv1Var;
        this.f = ly8.a;
        this.k = pe4.E(kv1Var.getContext());
    }

    @Override // defpackage.zx1
    public final zx1 getCallerFrame() {
        return this.e;
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return this.e.getContext();
    }

    @Override // defpackage.an2
    public final Object j() {
        Object obj = this.f;
        this.f = ly8.a;
        return obj;
    }

    public final void k() {
        do {
            n.getClass();
        } while (oh6.a.getObjectVolatile(this, p) == ly8.b);
    }

    public final o21 l() {
        ym2 ym2Var;
        du9 du9Var = ly8.b;
        while (true) {
            n.getClass();
            Unsafe unsafe = oh6.a;
            long j = p;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(this, j, du9Var);
                return null;
            }
            if (objectVolatile instanceof o21) {
                while (true) {
                    Unsafe unsafe2 = oh6.a;
                    ym2 ym2Var2 = this;
                    boolean zCompareAndSwapObject = unsafe2.compareAndSwapObject(ym2Var2, p, objectVolatile, du9Var);
                    ym2Var = ym2Var2;
                    if (zCompareAndSwapObject) {
                        return (o21) objectVolatile;
                    }
                    if (unsafe2.getObjectVolatile(ym2Var, j) != objectVolatile) {
                        break;
                    }
                    this = ym2Var;
                }
            } else {
                ym2Var = this;
                if (objectVolatile != du9Var && !(objectVolatile instanceof Throwable)) {
                    l0.k(objectVolatile, "Inconsistent state ");
                    return null;
                }
            }
            this = ym2Var;
        }
    }

    public final o21 m() {
        n.getClass();
        Object objectVolatile = oh6.a.getObjectVolatile(this, p);
        if (objectVolatile instanceof o21) {
            return (o21) objectVolatile;
        }
        return null;
    }

    public final boolean n() {
        n.getClass();
        return oh6.a.getObjectVolatile(this, p) != null;
    }

    public final boolean o(Throwable th) {
        ym2 ym2Var;
        Throwable th2;
        Unsafe unsafe;
        while (true) {
            n.getClass();
            Unsafe unsafe2 = oh6.a;
            long j = p;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            du9 du9Var = ly8.b;
            if (pe4.d(objectVolatile, du9Var)) {
                while (true) {
                    Unsafe unsafe3 = oh6.a;
                    ym2 ym2Var2 = this;
                    th2 = th;
                    ym2Var = ym2Var2;
                    if (unsafe3.compareAndSwapObject(ym2Var2, p, du9Var, th2)) {
                        return true;
                    }
                    if (unsafe3.getObjectVolatile(ym2Var, j) != du9Var) {
                        break;
                    }
                    this = ym2Var;
                    th = th2;
                }
            } else {
                ym2Var = this;
                th2 = th;
                if (objectVolatile instanceof Throwable) {
                    return true;
                }
                do {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(ym2Var, p, objectVolatile, (Object) null)) {
                        return false;
                    }
                } while (unsafe.getObjectVolatile(ym2Var, j) == objectVolatile);
            }
            this = ym2Var;
            th = th2;
        }
    }

    public final Throwable p(o21 o21Var) {
        Unsafe unsafe;
        ym2 ym2Var;
        o21 o21Var2;
        while (true) {
            n.getClass();
            Unsafe unsafe2 = oh6.a;
            long j = p;
            Object objectVolatile = unsafe2.getObjectVolatile(this, j);
            du9 du9Var = ly8.b;
            if (objectVolatile != du9Var) {
                ym2 ym2Var2 = this;
                if (!(objectVolatile instanceof Throwable)) {
                    l0.k(objectVolatile, "Inconsistent state ");
                    return null;
                }
                do {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(ym2Var2, p, objectVolatile, (Object) null)) {
                        return (Throwable) objectVolatile;
                    }
                } while (unsafe.getObjectVolatile(ym2Var2, j) == objectVolatile);
                c6.f("Failed requirement.");
                return null;
            }
            while (true) {
                Unsafe unsafe3 = oh6.a;
                ym2Var = this;
                o21Var2 = o21Var;
                if (unsafe3.compareAndSwapObject(ym2Var, p, du9Var, o21Var2)) {
                    return null;
                }
                if (unsafe3.getObjectVolatile(ym2Var, j) != du9Var) {
                    break;
                }
                this = ym2Var;
                o21Var = o21Var2;
            }
            this = ym2Var;
            o21Var = o21Var2;
        }
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) throws xm2 {
        Throwable thA = en6.a(obj);
        Object ln1Var = thA == null ? obj : new ln1(thA, false);
        kv1 kv1Var = this.e;
        ox1 context = kv1Var.getContext();
        rx1 rx1Var = this.d;
        if (ly8.N(rx1Var, context)) {
            this.f = ln1Var;
            this.c = 0;
            ly8.M(rx1Var, kv1Var.getContext(), this);
            return;
        }
        uy2 uy2VarA = r28.a();
        if (uy2VarA.c >= 4294967296L) {
            this.f = ln1Var;
            this.c = 0;
            w40 w40Var = uy2VarA.e;
            if (w40Var == null) {
                w40Var = new w40();
                uy2VarA.e = w40Var;
            }
            w40Var.addLast(this);
            return;
        }
        uy2VarA.r(true);
        try {
            ox1 context2 = kv1Var.getContext();
            Object objJ = pe4.J(context2, this.k);
            try {
                kv1Var.resumeWith(obj);
                pe4.y(context2, objJ);
                while (uy2VarA.v()) {
                }
            } catch (Throwable th) {
                pe4.y(context2, objJ);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                i(th2);
            } finally {
                uy2VarA.q(true);
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.d + ", " + od2.z(this.e) + ']';
    }

    @Override // defpackage.an2
    public final jv1 d() {
        return this;
    }
}
