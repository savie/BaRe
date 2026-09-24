package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class yp4 extends gx8 {
    public final int e;
    public final int f;
    public final int g;

    public yp4(xp4 xp4Var) {
        super(xp4Var);
        this.e = xp4Var.e;
        this.f = xp4Var.f;
        this.g = xp4Var.g;
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
