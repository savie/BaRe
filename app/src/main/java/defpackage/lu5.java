package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lu5 implements ga6 {
    public static final m0 c = new m0();
    public static final ku5 d = new ku5();
    public ig2 a;
    public volatile ga6 b;

    public lu5(m0 m0Var, ga6 ga6Var) {
        this.a = m0Var;
        this.b = ga6Var;
    }

    public final void a(ig2 ig2Var) {
        ga6 ga6Var;
        ga6 ga6Var2;
        ga6 ga6Var3 = this.b;
        ku5 ku5Var = d;
        if (ga6Var3 != ku5Var) {
            ig2Var.c(ga6Var3);
            return;
        }
        synchronized (this) {
            ga6Var = this.b;
            if (ga6Var != ku5Var) {
                ga6Var2 = ga6Var;
            } else {
                this.a = new gp3(this.a, ig2Var);
                ga6Var2 = null;
            }
        }
        if (ga6Var2 != null) {
            ig2Var.c(ga6Var);
        }
    }

    @Override // defpackage.ga6
    public final Object get() {
        return this.b.get();
    }
}
