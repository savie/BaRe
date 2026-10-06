package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class j92 extends ci0 {
    public final boolean d;

    public j92(int i, int i2, boolean z, z1 z1Var) {
        super(i, i2, z1Var);
        this.d = z;
    }

    @Override // defpackage.ci0, defpackage.cb4
    public final q1 g() {
        boolean z = this.d;
        z1 z1Var = this.c;
        int i = this.a;
        int i2 = this.b;
        if (!z) {
            return new bi0(4, i, i2, new p82(((mg2) ((ou4) z1Var.c)).b()), 1);
        }
        c0 c0VarC = z1Var.c();
        return c0VarC.b == 1 ? new bi0(3, i, i2, c0VarC.b(0), 1) : new bi0(4, i, i2, f92.a(c0VarC), 1);
    }
}
