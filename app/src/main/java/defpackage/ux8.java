package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ux8 extends y0 {
    public final byte[] a;
    public final byte[] b;

    public ux8(v1 v1Var) {
        if (!t0.x(v1Var.C(0)).y(0)) {
            c6.f("unknown version of sequence");
            throw null;
        }
        this.a = ms8.k(j1.x(v1Var.C(1)).a);
        this.b = ms8.k(j1.x(v1Var.C(2)).a);
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(new t0(0L));
        c0Var.a(new p82(this.a));
        c0Var.a(new p82(this.b));
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }

    public ux8(byte[] bArr, byte[] bArr2) {
        this.a = ms8.k(bArr);
        this.b = ms8.k(bArr2);
    }
}
