package defpackage;

import android.view.ViewGroup;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r31 extends aa8 {
    public boolean a = false;
    public final ViewGroup b;

    public r31(ViewGroup viewGroup) {
        this.b = viewGroup;
    }

    @Override // defpackage.aa8, defpackage.v98
    public final void b() {
        bb9.L(this.b, false);
    }

    @Override // defpackage.aa8, defpackage.v98
    public final void c(y98 y98Var) {
        if (!this.a) {
            bb9.L(this.b, false);
        }
        y98Var.C(this);
    }

    @Override // defpackage.aa8, defpackage.v98
    public final void e() {
        bb9.L(this.b, true);
    }

    @Override // defpackage.aa8, defpackage.v98
    public final void f(y98 y98Var) {
        bb9.L(this.b, false);
        this.a = true;
    }
}
