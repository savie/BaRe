package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vo2 implements ox1 {
    public final /* synthetic */ ox1 a;
    public final Throwable b;

    public vo2(ox1 ox1Var, Throwable th) {
        this.a = ox1Var;
        this.b = th;
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        return this.a.fold(obj, qt3Var);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        return this.a.get(nx1Var);
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return this.a.minusKey(nx1Var);
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return this.a.plus(ox1Var);
    }
}
