package defpackage;

import android.graphics.Typeface;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class l21 extends jb9 {
    public final Typeface M;
    public final nh N;
    public boolean O;

    public l21(nh nhVar, Typeface typeface) {
        this.M = typeface;
        this.N = nhVar;
    }

    @Override // defpackage.jb9
    public final void J(int i) {
        if (this.O) {
            return;
        }
        wk1 wk1Var = (wk1) this.N.b;
        if (wk1Var.l(this.M)) {
            wk1Var.j(false);
        }
    }

    @Override // defpackage.jb9
    public final void K(Typeface typeface, boolean z) {
        if (this.O) {
            return;
        }
        wk1 wk1Var = (wk1) this.N.b;
        if (wk1Var.l(typeface)) {
            wk1Var.j(false);
        }
    }
}
