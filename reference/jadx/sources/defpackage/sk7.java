package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sk7 implements jv1, zx1 {
    public final n41 a;
    public final ox1 b;

    public sk7(n41 n41Var, ox1 ox1Var) {
        this.a = n41Var;
        this.b = ox1Var;
    }

    @Override // defpackage.zx1
    public final zx1 getCallerFrame() {
        return this.a;
    }

    @Override // defpackage.jv1
    public final ox1 getContext() {
        return this.b;
    }

    @Override // defpackage.jv1
    public final void resumeWith(Object obj) {
        this.a.resumeWith(obj);
    }
}
