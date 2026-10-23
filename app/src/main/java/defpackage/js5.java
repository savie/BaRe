package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class js5 extends us2 {
    public final h75 k;
    public final float n;

    public js5(h75 h75Var, float f) {
        super(0);
        this.k = h75Var;
        this.n = f;
    }

    @Override // defpackage.us2
    public final void A(float f, float f2, float f3, mc7 mc7Var) {
        this.k.A(f, f2 - this.n, f3, mc7Var);
    }

    @Override // defpackage.us2
    public final boolean z() {
        return true;
    }
}
