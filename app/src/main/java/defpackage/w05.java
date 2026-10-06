package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class w05 {
    public static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(w05.class, Object.class, "_cur$volatile");
    public static final /* synthetic */ long b = oh6.a.objectFieldOffset(w05.class.getDeclaredField("_cur$volatile"));
    private volatile /* synthetic */ Object _cur$volatile = new y05(8, false);

    public final boolean a(Runnable runnable) {
        w05 w05Var;
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = b;
            y05 y05Var = (y05) unsafe.getObjectVolatile(this, j);
            int iA = y05Var.a(runnable);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                y05 y05VarD = y05Var.d();
                while (true) {
                    Unsafe unsafe2 = oh6.a;
                    w05Var = this;
                    if (unsafe2.compareAndSwapObject(w05Var, b, y05Var, y05VarD) || unsafe2.getObjectVolatile(w05Var, j) != y05Var) {
                        break;
                    }
                    this = w05Var;
                }
            } else {
                if (iA == 2) {
                    return false;
                }
                w05Var = this;
            }
            this = w05Var;
        }
    }

    public final void b() {
        w05 w05Var;
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = b;
            y05 y05Var = (y05) unsafe.getObjectVolatile(this, j);
            if (y05Var.c()) {
                return;
            }
            y05 y05VarD = y05Var.d();
            while (true) {
                Unsafe unsafe2 = oh6.a;
                w05Var = this;
                if (unsafe2.compareAndSwapObject(w05Var, b, y05Var, y05VarD) || unsafe2.getObjectVolatile(w05Var, j) != y05Var) {
                    break;
                } else {
                    this = w05Var;
                }
            }
            this = w05Var;
        }
    }

    public final int c() {
        a.getClass();
        y05 y05Var = (y05) oh6.a.getObjectVolatile(this, b);
        y05Var.getClass();
        long j = y05.f.get(y05Var);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j)));
    }

    public final Object d() {
        w05 w05Var;
        while (true) {
            a.getClass();
            Unsafe unsafe = oh6.a;
            long j = b;
            y05 y05Var = (y05) unsafe.getObjectVolatile(this, j);
            Object objE = y05Var.e();
            if (objE != y05.g) {
                return objE;
            }
            y05 y05VarD = y05Var.d();
            while (true) {
                Unsafe unsafe2 = oh6.a;
                w05Var = this;
                if (unsafe2.compareAndSwapObject(w05Var, b, y05Var, y05VarD) || unsafe2.getObjectVolatile(w05Var, j) != y05Var) {
                    break;
                }
                this = w05Var;
            }
            this = w05Var;
        }
    }
}
