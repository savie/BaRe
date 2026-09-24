package defpackage;

import java.io.EOFException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pp5 extends qi4 {
    public final qi4 a;

    public pp5(qi4 qi4Var) {
        this.a = qi4Var;
    }

    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) throws EOFException, tj4 {
        if (bn4Var.W() != 9) {
            return this.a.a(bn4Var);
        }
        bn4Var.J();
        return null;
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        if (obj == null) {
            dn4Var.n();
        } else {
            this.a.e(dn4Var, obj);
        }
    }

    public final String toString() {
        return this.a + ".nullSafe()";
    }
}
