package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mf6 implements ji3, du3 {
    public final /* synthetic */ km7 a;
    private final oh4 job = null;

    public mf6(km7 km7Var) {
        this.a = km7Var;
    }

    @Override // defpackage.du3
    public final ji3 j(ox1 ox1Var, int i, pw0 pw0Var) {
        return ((((i < 0 || i >= 2) && i != -2) || pw0Var != pw0.b) && !((i == 0 || i == -3) && pw0Var == pw0.a)) ? new p41(this, ox1Var, i, pw0Var) : this;
    }

    @Override // defpackage.ji3
    public final Object t(li3 li3Var, kv1 kv1Var) {
        this.a.t(li3Var, kv1Var);
        return yx1.a;
    }
}
