package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class th4 extends o21 {
    public final ci4 r;

    public th4(jv1 jv1Var, ci4 ci4Var) {
        super(1, jv1Var);
        this.r = ci4Var;
    }

    @Override // defpackage.o21
    public final String A() {
        return "AwaitContinuation";
    }

    @Override // defpackage.o21
    public final Throwable q(ci4 ci4Var) {
        Throwable thD;
        Object objZ = this.r.z();
        if (!(objZ instanceof vh4) || (thD = ((vh4) objZ).d()) == null) {
            return objZ instanceof ln1 ? ((ln1) objZ).a : ci4Var.getCancellationException();
        }
        return thD;
    }
}
