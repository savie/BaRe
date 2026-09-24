package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a64 implements es5 {
    public boolean a;
    public final /* synthetic */ c64 b;

    public a64(c64 c64Var) {
        this.b = c64Var;
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        boolean z = this.a;
        c64 c64Var = this.b;
        if (z != zBooleanValue) {
            vr6.i$default(vr6.INSTANCE, c64Var.b, dj7.m("Billing connected = ", zBooleanValue), null, 4, null);
            this.a = zBooleanValue;
        }
        if (zBooleanValue) {
            ix6 ix6Var = c64.l;
            zn4.c(new lf(c64Var, 23));
        }
    }
}
