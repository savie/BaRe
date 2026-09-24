package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uh4 extends sh4 {
    public final ci4 n;
    public final vh4 p;
    public final h61 q;
    public final Object r;

    public uh4(ci4 ci4Var, vh4 vh4Var, h61 h61Var, Object obj) {
        this.n = ci4Var;
        this.p = vh4Var;
        this.q = h61Var;
        this.r = obj;
    }

    @Override // defpackage.sh4
    public final boolean p() {
        return false;
    }

    @Override // defpackage.sh4
    public final void q(Throwable th) {
        h61 h61Var = this.q;
        h61 h61VarJ = ci4.J(h61Var);
        ci4 ci4Var = this.n;
        vh4 vh4Var = this.p;
        Object obj = this.r;
        if (h61VarJ == null || !ci4Var.X(vh4Var, h61VarJ, obj)) {
            vh4Var.a.c(new xw4(2), 2);
            h61 h61VarJ2 = ci4.J(h61Var);
            if (h61VarJ2 == null || !ci4Var.X(vh4Var, h61VarJ2, obj)) {
                ci4Var.i(ci4Var.s(vh4Var, obj));
            }
        }
    }
}
