package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cp4 implements l28 {
    public static final ma2 b = new ma2(10);
    public final t40 a;

    public cp4(t40 t40Var) {
        this.a = t40Var;
    }

    @Override // defpackage.l28
    public final Object a() {
        return xs4.b.a(this.a);
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

    @Override // defpackage.l28
    public final void h(Object obj) throws Exception {
        ((v57) obj).close();
    }

    @Override // defpackage.ox1
    public final ox1 minusKey(nx1 nx1Var) {
        return od2.r(this, nx1Var);
    }

    @Override // defpackage.ox1
    public final ox1 plus(ox1 ox1Var) {
        return iz1.s(this, ox1Var);
    }
}
