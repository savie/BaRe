package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class uq5 extends gx8 {
    public final int e;
    public final int f;
    public final int g;

    public uq5(tq5 tq5Var) {
        super(tq5Var);
        this.e = tq5Var.e;
        this.f = tq5Var.f;
        this.g = tq5Var.g;
    }

    @Override // defpackage.gx8
    public final byte[] a() {
        byte[] bArrA = super.a();
        xx3.n(bArrA, this.e, 16);
        xx3.n(bArrA, this.f, 20);
        xx3.n(bArrA, this.g, 24);
        return bArrA;
    }
}
