package defpackage;

import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s08 extends g67 {
    public final /* synthetic */ jb9 k;
    public final /* synthetic */ u08 n;

    public s08(u08 u08Var, jb9 jb9Var) {
        this.n = u08Var;
        this.k = jb9Var;
    }

    @Override // defpackage.g67
    public final void x(int i) {
        this.n.n = true;
        this.k.J(i);
    }

    @Override // defpackage.g67
    public final void y(Typeface typeface) {
        u08 u08Var = this.n;
        Typeface typefaceCreate = Typeface.create(typeface, u08Var.d);
        u08Var.p = typefaceCreate;
        u08Var.n = true;
        this.k.K(typefaceCreate, false);
    }
}
