package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q35 extends f62 {
    public zw2 d;

    @Override // defpackage.f62
    public final int b(Object obj) {
        ll6 ll6Var = (ll6) obj;
        if (ll6Var == null) {
            return 1;
        }
        return ll6Var.c();
    }

    @Override // defpackage.f62
    public final void c(Object obj, Object obj2) {
        ll6 ll6Var = (ll6) obj2;
        zw2 zw2Var = this.d;
        if (zw2Var == null || ll6Var == null) {
            return;
        }
        zw2Var.e.f(ll6Var, true);
    }
}
