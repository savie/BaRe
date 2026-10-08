package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j8 extends yq3 {
    public final /* synthetic */ k8 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j8(k8 k8Var, k8 k8Var2) {
        super(k8Var2);
        this.q = k8Var;
    }

    @Override // defpackage.yq3
    public final af7 b() {
        l8 l8Var = this.q.d.L;
        if (l8Var == null) {
            return null;
        }
        return l8Var.a();
    }

    @Override // defpackage.yq3
    public final boolean c() {
        this.q.d.n();
        return true;
    }

    @Override // defpackage.yq3
    public final boolean d() {
        o8 o8Var = this.q.d;
        if (o8Var.N != null) {
            return false;
        }
        o8Var.b();
        return true;
    }
}
