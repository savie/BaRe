package defpackage;

import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y08 extends jb9 {
    public final /* synthetic */ a18 M;

    public y08(a18 a18Var) {
        this.M = a18Var;
    }

    @Override // defpackage.jb9
    public final void J(int i) {
        a18 a18Var = this.M;
        a18Var.e = true;
        z08 z08Var = (z08) a18Var.f.get();
        if (z08Var != null) {
            z08Var.a();
        }
    }

    @Override // defpackage.jb9
    public final void K(Typeface typeface, boolean z) {
        if (z) {
            return;
        }
        a18 a18Var = this.M;
        a18Var.e = true;
        z08 z08Var = (z08) a18Var.f.get();
        if (z08Var != null) {
            z08Var.a();
        }
    }
}
