package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mj5 extends y67 implements kj5 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(mj5.class, Object.class, "owner$volatile");
    public static final /* synthetic */ long r = oh6.a.objectFieldOffset(mj5.class.getDeclaredField("owner$volatile"));
    private volatile /* synthetic */ Object owner$volatile;

    public mj5() {
        super(1);
        this.owner$volatile = nc8.b;
    }

    @Override // defpackage.kj5
    public final Object a(kv1 kv1Var) {
        boolean zH = h();
        be8 be8Var = be8.a;
        if (!zH) {
            o21 o21VarT = g67.t(nc8.D(kv1Var));
            try {
                lj5 lj5Var = new lj5(this, o21VarT);
                while (true) {
                    int andDecrement = y67.k.getAndDecrement(this);
                    if (andDecrement <= this.a) {
                        if (andDecrement > 0) {
                            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = q;
                            mj5 mj5Var = lj5Var.b;
                            atomicReferenceFieldUpdater.set(mj5Var, null);
                            o21 o21Var = lj5Var.a;
                            o21Var.D(be8Var, o21Var.c, new n21(new zs(mj5Var, lj5Var)));
                            break;
                        }
                        if (d(lj5Var)) {
                            break;
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

    @Override // defpackage.kj5
    public final void b(Object obj) {
        while (this.g()) {
            q.getClass();
            Unsafe unsafe = oh6.a;
            long j = r;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            du9 du9Var = nc8.b;
            if (objectVolatile != du9Var) {
                if (objectVolatile != obj && obj != null) {
                    q.g("This mutex is locked by ", objectVolatile, ", but ", obj, " is expected");
                    return;
                }
                while (true) {
                    Unsafe unsafe2 = oh6.a;
                    mj5 mj5Var = this;
                    if (unsafe2.compareAndSwapObject(mj5Var, r, objectVolatile, du9Var)) {
                        mj5Var.e();
                        return;
                    } else {
                        if (unsafe2.getObjectVolatile(mj5Var, j) != objectVolatile) {
                            this = mj5Var;
                            break;
                        }
                        this = mj5Var;
                    }
                }
            }
        }
        l0.e("This mutex is not locked");
    }

    public final boolean g() {
        return Math.max(y67.k.get(this), 0) == 0;
    }

    public final boolean h() {
        int i = i();
        if (i == 0) {
            return true;
        }
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            l0.e("unexpected");
            return false;
        }
        g84.f("This mutex is already locked by the specified owner: null");
        return false;
    }

    public final int i() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = y67.k;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.a;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i3) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return 1;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    q.getClass();
                    oh6.a.putObjectVolatile(this, r, (Object) null);
                    return 0;
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(od2.l(this));
        sb.append("[isLocked=");
        sb.append(g());
        sb.append(",owner=");
        q.getClass();
        sb.append(oh6.a.getObjectVolatile(this, r));
        sb.append(']');
        return sb.toString();
    }
}
