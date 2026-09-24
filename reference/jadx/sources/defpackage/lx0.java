package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lx0 implements ra2 {
    public final byte[] a;
    public final kx0 b;

    public lx0(byte[] bArr, kx0 kx0Var) {
        this.a = bArr;
        this.b = kx0Var;
    }

    @Override // defpackage.ra2
    public final Class a() {
        return this.b.a();
    }

    @Override // defpackage.ra2
    public final void d(e66 e66Var, qa2 qa2Var) {
        qa2Var.f(this.b.j(this.a));
    }

    @Override // defpackage.ra2
    public final int e() {
        return 1;
    }

    @Override // defpackage.ra2
    public final void c() {
    }

    @Override // defpackage.ra2
    public final void cancel() {
    }
}
