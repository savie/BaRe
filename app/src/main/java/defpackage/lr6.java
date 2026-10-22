package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class lr6 extends go4 implements jx6 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lr6(int i) {
        super(i);
        if (i == 128 || i == 256) {
        } else {
            c6.f(xs1.h(i, "'bitStrength' ", " not supported for SHAKE"));
            throw null;
        }
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        h((lr6) xb5Var);
    }

    @Override // defpackage.go4, defpackage.hl2
    public final int c() {
        return this.f / 4;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        return new lr6(this);
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        int i2 = this.f / 4;
        l(bArr, i, i2);
        return i2;
    }

    @Override // defpackage.hl2
    public final String f() {
        return "SHAKE" + this.f;
    }

    @Override // defpackage.go4
    public final a42 i() {
        return new ef9(f(), 2);
    }

    public final void l(byte[] bArr, int i, int i2) {
        m(bArr, i, i2);
        reset();
    }

    public final void m(byte[] bArr, int i, int i2) {
        if (!this.g) {
            g(15, 4);
        }
        k(i, ((long) i2) * 8, bArr);
    }
}
