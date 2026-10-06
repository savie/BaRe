package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o50 extends ob4 {
    public final /* synthetic */ p50 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o50(p50 p50Var) {
        super(p50Var.c);
        this.d = p50Var;
    }

    @Override // defpackage.ob4
    public final Object a(int i) {
        return this.d.b[i];
    }

    @Override // defpackage.ob4
    public final void b(int i) {
        this.d.d(i);
    }
}
