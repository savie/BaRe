package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class se2 extends lz2 implements Executor {
    public static final se2 c = new se2();
    public static final rx1 d;

    static {
        me8 me8Var = me8.c;
        int i = pv7.a;
        if (64 >= i) {
            i = 64;
        }
        d = me8Var.n(nc8.n0(i, 12, "kotlinx.coroutines.io.parallelism"));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        j(lv2.a, runnable);
    }

    @Override // defpackage.rx1
    public final void j(ox1 ox1Var, Runnable runnable) {
        d.j(ox1Var, runnable);
    }

    @Override // defpackage.rx1
    public final String toString() {
        return "Dispatchers.IO";
    }
}
