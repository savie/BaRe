package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ox8 extends y0 {
    public final byte[] a;
    public final byte[] b;

    public ox8(byte[] bArr, byte[] bArr2) {
        this.a = ms8.k(bArr);
        this.b = ms8.k(bArr2);
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
}
