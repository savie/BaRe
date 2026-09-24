package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class kr6 extends q15 {
    public kr6() {
        zh8.r(this);
        e42.a();
        reset();
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        i((kr6) xb5Var);
    }

    @Override // defpackage.hl2
    public final int c() {
        return 64;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        kr6 kr6Var = new kr6(this);
        zh8.r(kr6Var);
        e42.a();
        return kr6Var;
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
        xx3.u(i + 48, this.l, bArr);
        xx3.u(i + 56, this.m, bArr);
        reset();
        return 64;
    }

    @Override // defpackage.hl2
    public final String f() {
        return "SHA-512";
    }

    @Override // defpackage.q15, defpackage.hl2
    public final void reset() {
        super.reset();
        this.f = 7640891576956012808L;
        this.g = -4942790177534073029L;
        this.h = 4354685564936845355L;
        this.i = -6534734903238641935L;
        this.j = 5840696475078001361L;
        this.k = -7276294671716946913L;
        this.l = 2270897969802886507L;
        this.m = 6620516959819538809L;
    }
}
