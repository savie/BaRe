package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nf4 {
    public final dq a;
    public final hl0 b;
    public final sm c;
    public final k00 d;
    public final ak e;
    public final i54 f;
    public volatile mf4 g = mf4.IDLE;
    public volatile boolean h;

    public nf4(dq dqVar, hl0 hl0Var, sm smVar, k00 k00Var, ak akVar, i54 i54Var) {
        this.a = dqVar;
        this.b = hl0Var;
        this.c = smVar;
        this.d = k00Var;
        this.e = akVar;
        this.f = i54Var;
    }

    public final void a(mf4 mf4Var) {
        this.g = mf4Var;
        this.d.invoke(mf4Var);
    }
}
