package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class o56 implements es5 {
    public boolean a;
    public final /* synthetic */ p56 b;

    public o56(p56 p56Var) {
        this.b = p56Var;
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (this.a != zBooleanValue) {
            vr6.i$default(vr6.INSTANCE, this.b.b, dj7.m("Billing connected = ", zBooleanValue), null, 4, null);
            this.a = zBooleanValue;
        }
        if (zBooleanValue) {
            wq0 wq0Var = wq0.a;
            zn4.c(new jx(4));
        }
    }
}
