package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ys5 implements au4 {
    public final /* synthetic */ rs5 a;
    public final /* synthetic */ hu4 b;

    public ys5(rs5 rs5Var, zs5 zs5Var, hu4 hu4Var) {
        this.a = rs5Var;
        this.b = hu4Var;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        int i = xs5.a[rt4Var.ordinal()];
        rs5 rs5Var = this.a;
        if (i == 1) {
            rs5Var.b(true);
            return;
        }
        if (i == 2) {
            rs5Var.b(false);
        } else {
            if (i != 3) {
                return;
            }
            rs5Var.a();
            this.b.f(this);
        }
    }
}
