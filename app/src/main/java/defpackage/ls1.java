package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ls1 implements nw6 {
    public final nw6 a;

    public ls1(nw6 nw6Var) {
        this.a = nw6Var;
    }

    @Override // defpackage.nw6
    public final void C(int i, String str) {
        str.getClass();
        this.a.C(i, str);
    }

    @Override // defpackage.nw6
    public final boolean F() {
        return this.a.F();
    }

    @Override // defpackage.nw6
    public final String R(int i) {
        return this.a.R(i);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        nw6 nw6Var = this.a;
        nw6Var.reset();
        nw6Var.i();
    }

    @Override // defpackage.nw6
    public final void e(int i, long j) {
        this.a.e(i, j);
    }

    @Override // defpackage.nw6
    public final void f(int i) {
        this.a.f(i);
    }

    @Override // defpackage.nw6
    public final int getColumnCount() {
        return this.a.getColumnCount();
    }

    @Override // defpackage.nw6
    public final String getColumnName(int i) {
        return this.a.getColumnName(i);
    }

    @Override // defpackage.nw6
    public final long getLong(int i) {
        return this.a.getLong(i);
    }

    @Override // defpackage.nw6
    public final void i() {
        this.a.i();
    }

    @Override // defpackage.nw6
    public final boolean i0() {
        return this.a.i0();
    }

    @Override // defpackage.nw6
    public final boolean isNull(int i) {
        return this.a.isNull(i);
    }

    @Override // defpackage.nw6
    public final void reset() {
        this.a.reset();
    }
}
