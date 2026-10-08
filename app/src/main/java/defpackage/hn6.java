package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hn6 extends sh4 {
    public final th4 n;

    public hn6(th4 th4Var) {
        this.n = th4Var;
    }

    @Override // defpackage.sh4
    public final boolean p() {
        return false;
    }

    @Override // defpackage.sh4
    public final void q(Throwable th) {
        Object objZ = o().z();
        boolean z = objZ instanceof ln1;
        th4 th4Var = this.n;
        if (z) {
            th4Var.resumeWith(lg7.e(((ln1) objZ).a));
        } else {
            th4Var.resumeWith(pe4.I(objZ));
        }
    }
}
