package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z21 implements Runnable {
    public final /* synthetic */ a31 a;
    public final /* synthetic */ ic5 b;
    public final /* synthetic */ fc5 c;
    public final /* synthetic */ zq8 d;

    public z21(zq8 zq8Var, a31 a31Var, ic5 ic5Var, fc5 fc5Var) {
        this.d = zq8Var;
        this.a = a31Var;
        this.b = ic5Var;
        this.c = fc5Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b31 b31Var = (b31) this.d.b;
        a31 a31Var = this.a;
        if (a31Var != null) {
            b31Var.S = true;
            a31Var.b.c(false);
            b31Var.S = false;
        }
        ic5 ic5Var = this.b;
        if (ic5Var.isEnabled() && ic5Var.hasSubMenu()) {
            this.c.q(ic5Var, null, 4);
        }
    }
}
