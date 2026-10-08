package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class jr6 extends go4 implements jx6 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jr6(int i) {
        super(i);
        if (i == 224 || i == 256 || i == 384 || i == 512) {
        } else {
            c6.f(xs1.h(i, "'bitLength' ", " not supported for SHA-3"));
            throw null;
        }
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        h((jr6) xb5Var);
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        return new jr6(this);
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        g(2, 2);
        k(i, this.f, bArr);
        reset();
        return c();
    }

    @Override // defpackage.hl2
    public final String f() {
        return "SHA3-" + this.f;
    }
}
