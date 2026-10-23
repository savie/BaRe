package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yl5 extends zl5 {
    @Override // defpackage.zl5, defpackage.s51
    public final void c(r2 r2Var) throws fk7 {
        z0 z0VarD = r2Var.d();
        m2 m2Var = r2Var.a;
        if (z0VarD.toString().contains("not_defined_in_RFC4178@please_ignore")) {
            return;
        }
        int i = m2Var.b;
        if (i == 0) {
            h(r2Var.d());
            return;
        }
        if (i != 1) {
            if (i == 2) {
                g(r2Var.d());
            } else if (i != 3 && i != 4) {
                throw new fk7(xs1.m(new StringBuilder("Unknown Object Tag "), m2Var.b, " encountered."));
            }
        }
    }
}
