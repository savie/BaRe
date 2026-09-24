package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g21 implements hy2 {
    public final gy5 a;
    public final ez2 b;
    public final wc2 c;

    public g21(ez2 ez2Var, wc2 wc2Var, gy5 gy5Var) {
        this.b = ez2Var;
        this.a = gy5Var;
        this.c = wc2Var;
    }

    @Override // defpackage.hy2
    public final void a() {
        this.b.c(this.c);
    }

    @Override // defpackage.hy2
    public final String toString() {
        return this.a + ":CANCEL";
    }
}
