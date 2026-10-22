package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wb implements gf3 {
    public final /* synthetic */ wz5 a;

    public wb(wz5 wz5Var) {
        this.a = wz5Var;
    }

    @Override // defpackage.gf3
    public final void a(boolean z) {
        wz5 wz5Var = this.a;
        if (z) {
            wz5Var.c("app_in_background");
        } else {
            wz5Var.h("app_in_background");
        }
    }
}
