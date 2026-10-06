package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class ir6 extends q15 {
    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        i((ir6) xb5Var);
    }

    @Override // defpackage.hl2
    public final int c() {
        return 48;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        ir6 ir6Var = new ir6(this);
        zh8.r(ir6Var);
        e42.a();
        return ir6Var;
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        j();
        xx3.u(i, this.f, bArr);
        xx3.u(i + 8, this.g, bArr);
        xx3.u(i + 16, this.h, bArr);
        xx3.u(i + 24, this.i, bArr);
        xx3.u(i + 32, this.j, bArr);
        xx3.u(i + 40, this.k, bArr);
        reset();
        return 48;
    }

    @Override // defpackage.hl2
    public final String f() {
        return "SHA-384";
    }

    @Override // defpackage.q15, defpackage.hl2
    public final void reset() {
        super.reset();
        this.f = -3766243637369397544L;
        this.g = 7105036623409894663L;
        this.h = -7973340178411365097L;
        this.i = 1526699215303891257L;
        this.j = 7436329637833083697L;
        this.k = -8163818279084223215L;
        this.l = -2662702644619276377L;
        this.m = 5167115440072839076L;
    }
}
