package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dl0 {
    public final /* synthetic */ il0 a;

    public /* synthetic */ dl0(il0 il0Var) {
        this.a = il0Var;
    }

    public final void a(int i) {
        boolean z = i == 0;
        il0 il0Var = this.a;
        if (z) {
            vr6.i$default(vr6.INSTANCE, il0Var.r(), "Shizuku permission granted", null, 4, null);
        } else {
            vr6.i$default(vr6.INSTANCE, il0Var.r(), xs1.h(i, "Shizuku permission denied (", ")"), null, 4, null);
        }
        mt3 mt3Var = il0Var.y;
        if (mt3Var != null) {
            mt3Var.invoke(Boolean.valueOf(z));
        }
    }
}
