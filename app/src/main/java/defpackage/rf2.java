package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rf2 extends lz2 {
    public static final rf2 d;
    public wx1 c;

    static {
        int i = jz7.c;
        int i2 = jz7.d;
        long j = jz7.e;
        String str = jz7.a;
        rf2 rf2Var = new rf2();
        rf2Var.c = new wx1(i, i2, j, str);
        d = rf2Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // defpackage.rx1
    public final void j(ox1 ox1Var, Runnable runnable) {
        this.c.b(runnable, false);
    }

    @Override // defpackage.rx1
    public final String toString() {
        return "Dispatchers.Default";
    }
}
