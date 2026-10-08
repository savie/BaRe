package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ox5 implements mx1 {
    public static final ge b = new ge();
    public final nx5 a;

    public ox5(nx5 nx5Var) {
        this.a = nx5Var;
    }

    @Override // defpackage.ox1
    public final Object fold(Object obj, qt3 qt3Var) {
        return qt3Var.invoke(obj, this);
    }

    @Override // defpackage.ox1
    public final mx1 get(nx1 nx1Var) {
        return od2.k(this, nx1Var);
    }

    @Override // defpackage.mx1
    public final nx1 getKey() {
        return b;
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return od2.r(this, nx1Var);
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return od2.u(this, ox1Var);
    }
}
