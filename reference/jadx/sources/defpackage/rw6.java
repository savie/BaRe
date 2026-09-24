package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rw6 {
    public final Class a;
    public final ex6 b;
    public qw6 c;
    public vq d;
    public boolean e;
    public final gv7 f;

    public rw6(Class cls, bt3 bt3Var) {
        this.a = cls;
        ex6 ex6Var = new ex6();
        ex6Var.k(null);
        this.b = ex6Var;
        this.f = new gv7(new rm(14, bt3Var, this));
    }

    public final void a() {
        pw6 pw6Var;
        qw6 qw6Var = this.c;
        if (qw6Var == null || (pw6Var = qw6Var.a) == null) {
            return;
        }
        gj5 gj5Var = pw6Var.c;
        if (!pw6Var.e().isRunning()) {
            gj5Var.i(gz7.CANCELLED);
            return;
        }
        pw6Var.l = true;
        gz7 gz7Var = gz7.CANCELLED;
        gj5Var.i(gz7Var);
        ag8 ag8Var = pw6Var.k;
        if (ag8Var != null && ag8Var.c.isRunning()) {
            ag8 ag8Var2 = pw6Var.k;
            ag8Var2.getClass();
            ag8Var2.c = gz7Var;
            ag8Var2.b();
        }
        pw6Var.a();
    }
}
