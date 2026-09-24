package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zq3 implements nh7 {
    public final nh7 a;

    public zq3(nh7 nh7Var) {
        nh7Var.getClass();
        this.a = nh7Var;
    }

    @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.close();
    }

    @Override // defpackage.nh7
    public final f48 d() {
        return this.a.d();
    }

    @Override // defpackage.nh7
    public void f0(nw0 nw0Var, long j) {
        this.a.f0(nw0Var, j);
    }

    @Override // defpackage.nh7, java.io.Flushable
    public void flush() {
        this.a.flush();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.a + ')';
    }
}
