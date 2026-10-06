package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d61 extends sh4 {
    public final o21 n;

    public d61(o21 o21Var) {
        this.n = o21Var;
    }

    @Override // defpackage.sh4
    public final boolean p() {
        return true;
    }

    @Override // defpackage.sh4
    public final void q(Throwable th) {
        ci4 ci4VarO = o();
        o21 o21Var = this.n;
        Throwable thQ = o21Var.q(ci4VarO);
        if (!o21Var.y() ? false : ((ym2) o21Var.d).o(thQ)) {
            return;
        }
        o21Var.n(thQ);
        if (o21Var.y()) {
            return;
        }
        o21Var.o();
    }
}
