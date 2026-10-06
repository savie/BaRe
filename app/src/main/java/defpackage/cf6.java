package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cf6 extends bf6 {
    public final byte[] m;
    public int n;

    public cf6(v40 v40Var) {
        this.m = v40Var.a(65536);
        Y();
    }

    @Override // defpackage.bf6
    public final int V() {
        return this.n + ((int) this.j) + 4;
    }

    @Override // defpackage.bf6
    public final void X(int i) {
        int i2 = this.n;
        this.n = i2 + 1;
        this.m[i2] = (byte) i;
    }

    public final void Y() {
        this.h = 0L;
        this.i = -1;
        this.k = (byte) 0;
        this.j = 1L;
        this.n = 0;
    }
}
