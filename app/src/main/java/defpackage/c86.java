package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c86 extends zq3 {
    public long b;
    public final e11 c;
    public long d;

    public c86(yw0 yw0Var, long j, e11 e11Var) {
        super(yw0Var);
        this.c = e11Var;
    }

    @Override // defpackage.zq3, defpackage.nh7
    public final void f0(nw0 nw0Var, long j) {
        this.a.f0(nw0Var, j);
        long j2 = this.d + j;
        this.d = j2;
        if (j2 - this.b >= 0) {
            mt3 mt3Var = (mt3) this.c.b;
            if (mt3Var != null) {
                mt3Var.invoke(Long.valueOf(j2));
            }
            this.b = this.d;
        }
    }
}
