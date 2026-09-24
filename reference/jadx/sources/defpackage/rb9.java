package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rb9 implements bk0 {
    public final /* synthetic */ vb9 a;

    public rb9(vb9 vb9Var) {
        this.a = vb9Var;
    }

    @Override // defpackage.bk0
    public final void a(boolean z) {
        vb9 vb9Var = this.a;
        if (z) {
            vb9Var.c = true;
            y89 y89Var = this.a.b;
            y89Var.d.removeCallbacks(y89Var.e);
        } else {
            vb9Var.c = false;
            vb9 vb9Var2 = this.a;
            if (vb9Var2.a <= 0 || vb9Var2.c) {
                return;
            }
            this.a.b.a();
        }
    }
}
