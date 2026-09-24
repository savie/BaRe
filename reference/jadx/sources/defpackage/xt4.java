package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xt4 implements au4, xx1 {
    public final hu4 a;
    public final ox1 b;

    public xt4(hu4 hu4Var, ox1 ox1Var) {
        oh4 oh4Var;
        ox1Var.getClass();
        this.a = hu4Var;
        this.b = ox1Var;
        if (hu4Var.d != st4.a || (oh4Var = (oh4) ox1Var.get(nh4.b)) == null) {
            return;
        }
        oh4Var.cancel(null);
    }

    @Override // defpackage.xx1
    public final ox1 d() {
        return this.b;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        hu4 hu4Var = this.a;
        if (hu4Var.d.compareTo(st4.a) <= 0) {
            hu4Var.f(this);
            oh4 oh4Var = (oh4) this.b.get(nh4.b);
            if (oh4Var != null) {
                oh4Var.cancel(null);
            }
        }
    }
}
