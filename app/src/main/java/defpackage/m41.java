package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m41 extends l41 {
    public final j41 d;

    public m41(j41 j41Var, ox1 ox1Var, int i, pw0 pw0Var) {
        super(ox1Var, i, pw0Var);
        this.d = j41Var;
    }

    @Override // defpackage.l41
    public final Object a(r76 r76Var, k41 k41Var) {
        Object objInvoke = this.d.invoke(r76Var, k41Var);
        return objInvoke == yx1.a ? objInvoke : be8.a;
    }

    @Override // defpackage.l41
    public final l41 b(ox1 ox1Var, int i, pw0 pw0Var) {
        return new m41(this.d, ox1Var, i, pw0Var);
    }

    @Override // defpackage.l41
    public final String toString() {
        return "block[" + this.d + "] -> " + super.toString();
    }
}
