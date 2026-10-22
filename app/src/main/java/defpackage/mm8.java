package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mm8 extends jb9 {
    public boolean M = false;
    public int N = 0;
    public final /* synthetic */ nm8 O;

    public mm8(nm8 nm8Var) {
        this.O = nm8Var;
    }

    @Override // defpackage.jb9, defpackage.om8
    public final void b() {
        if (this.M) {
            return;
        }
        this.M = true;
        om8 om8Var = this.O.d;
        if (om8Var != null) {
            om8Var.b();
        }
    }

    @Override // defpackage.om8
    public final void d() {
        int i = this.N + 1;
        this.N = i;
        nm8 nm8Var = this.O;
        if (i == nm8Var.a.size()) {
            om8 om8Var = nm8Var.d;
            if (om8Var != null) {
                om8Var.d();
            }
            this.N = 0;
            this.M = false;
            nm8Var.e = false;
        }
    }
}
