package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i21 implements j21 {
    public final mt3 a;

    public i21(mt3 mt3Var) {
        this.a = mt3Var;
    }

    @Override // defpackage.j21
    public final void a(Throwable th) {
        this.a.invoke(th);
    }

    public final String toString() {
        return "CancelHandler.UserSupplied[" + this.a.getClass().getSimpleName() + '@' + od2.l(this) + ']';
    }
}
