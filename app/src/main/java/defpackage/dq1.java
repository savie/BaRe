package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class dq1 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(dq1.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater b;
    public static final /* synthetic */ long c;
    public static final /* synthetic */ long d;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    static {
        Unsafe unsafe = oh6.a;
        c = unsafe.objectFieldOffset(dq1.class.getDeclaredField("_next$volatile"));
        b = AtomicReferenceFieldUpdater.newUpdater(dq1.class, Object.class, "_prev$volatile");
        d = unsafe.objectFieldOffset(dq1.class.getDeclaredField("_prev$volatile"));
    }

    public dq1(n67 n67Var) {
        this._prev$volatile = n67Var;
    }

    public final void b() {
        b.getClass();
        oh6.a.putObjectVolatile(this, d, (Object) null);
    }

    public final dq1 c() {
        dq1 dq1VarF = f();
        while (dq1VarF != null && dq1VarF.g()) {
            b.getClass();
            dq1VarF = (dq1) oh6.a.getObjectVolatile(dq1VarF, d);
        }
        return dq1VarF;
    }

    public final dq1 d() {
        Object objE = e();
        if (objE == zm5.a) {
            return null;
        }
        return (dq1) objE;
    }

    public final Object e() {
        a.getClass();
        return oh6.a.getObjectVolatile(this, c);
    }

    public final dq1 f() {
        b.getClass();
        return (dq1) oh6.a.getObjectVolatile(this, d);
    }

    public abstract boolean g();

    public final boolean h() {
        du9 du9Var = zm5.a;
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = c;
            dq1 dq1Var = this;
            if (unsafe.compareAndSwapObject(dq1Var, j, (Object) null, du9Var)) {
                return true;
            }
            if (unsafe.getObjectVolatile(dq1Var, j) != null) {
                return false;
            }
            this = dq1Var;
        }
    }

    public final void i() {
        dq1 dq1Var;
        Unsafe unsafe;
        if (d() == null) {
            return;
        }
        while (true) {
            dq1 dq1VarC = c();
            dq1 dq1VarD = d();
            dq1VarD.getClass();
            do {
                dq1Var = dq1VarD;
                if (!dq1Var.g()) {
                    break;
                } else {
                    dq1VarD = dq1Var.d();
                }
            } while (dq1VarD != null);
            while (true) {
                b.getClass();
                Unsafe unsafe2 = oh6.a;
                long j = d;
                Object objectVolatile = unsafe2.getObjectVolatile(dq1Var, j);
                dq1 dq1Var2 = ((dq1) objectVolatile) == null ? null : dq1VarC;
                while (true) {
                    unsafe = oh6.a;
                    if (unsafe.compareAndSwapObject(dq1Var, d, objectVolatile, dq1Var2)) {
                        break;
                    } else if (unsafe.getObjectVolatile(dq1Var, j) != objectVolatile) {
                    }
                }
            }
            if (dq1VarC != null) {
                a.getClass();
                unsafe.putObjectVolatile(dq1VarC, c, dq1Var);
            }
            if (!dq1Var.g() || dq1Var.d() == null) {
                if (dq1VarC == null || !dq1VarC.g()) {
                    return;
                }
            }
        }
    }

    public final boolean j(n67 n67Var) {
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = c;
            dq1 dq1Var = this;
            n67 n67Var2 = n67Var;
            if (unsafe.compareAndSwapObject(dq1Var, j, (Object) null, n67Var2)) {
                return true;
            }
            if (unsafe.getObjectVolatile(dq1Var, j) != null) {
                return false;
            }
            this = dq1Var;
            n67Var = n67Var2;
        }
    }
}
