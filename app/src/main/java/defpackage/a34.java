package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class a34 extends gx8 {
    public final int e;
    public final int f;

    public a34(z24 z24Var) {
        super(z24Var);
        this.e = z24Var.e;
        this.f = z24Var.f;
    }

    @Override // defpackage.gx8
    public final byte[] a() {
        byte[] bArrA = super.a();
        xx3.n(bArrA, 0, 16);
        xx3.n(bArrA, this.e, 20);
        xx3.n(bArrA, this.f, 24);
        return bArrA;
    }
}
