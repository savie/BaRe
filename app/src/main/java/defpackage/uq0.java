package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uq0 implements eq0 {
    @Override // defpackage.eq0
    public final void a(yq0 yq0Var) {
        yq0Var.getClass();
        boolean z = yq0Var.a == 0;
        wq0 wq0Var = wq0.a;
        wq0Var.getClass();
        ex6 ex6Var = wq0.b;
        if (pe4.d(ex6Var.d(), Boolean.valueOf(z))) {
            return;
        }
        wq0Var.getClass();
        ex6Var.k(Boolean.valueOf(z));
        vr6.d$default(vr6.INSTANCE, "BillingManager", "Setup finished: result=" + yq0Var, null, 4, null);
    }

    @Override // defpackage.eq0
    public final void b() {
        wq0 wq0Var = wq0.a;
        ex6 ex6Var = wq0.b;
        Object objD = ex6Var.d();
        Boolean bool = Boolean.FALSE;
        if (!pe4.d(objD, bool)) {
            vr6.e$default(vr6.INSTANCE, "BillingManager", "Service disconnected", null, 4, null);
            ex6Var.k(bool);
        }
        wq0Var.f();
    }
}
