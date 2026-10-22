package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class l33 extends y0 {
    public int a;
    public byte[] b;
    public byte[] c;
    public byte[] d;
    public n33 e;

    public static l33 k(q1 q1Var) {
        n33 n33Var = null;
        if (q1Var != null) {
            v1 v1VarB = v1.B(q1Var);
            l33 l33Var = new l33();
            int iC = t0.x(v1VarB.C(0)).C();
            l33Var.a = iC;
            if (iC == 0) {
                l33Var.b = ms8.k(j1.x(v1VarB.C(1)).a);
                l33Var.c = ms8.k(j1.x(v1VarB.C(2)).a);
                l33Var.d = ms8.k(j1.x(v1VarB.C(3)).a);
                if (v1VarB.size() == 5) {
                    b0 b0VarC = v1VarB.C(4);
                    if (b0VarC instanceof n33) {
                        n33Var = (n33) b0VarC;
                    } else if (b0VarC != null) {
                        v1 v1VarB2 = v1.B(b0VarC);
                        n33Var = new n33();
                        n33Var.a = ms8.k(j1.x(v1VarB2.C(0)).a);
                    }
                    l33Var.e = n33Var;
                }
                return l33Var;
            }
            c6.f("unrecognized version");
        }
        return null;
    }

    @Override // defpackage.y0, defpackage.b0
    public final q1 d() {
        c0 c0Var = new c0();
        c0Var.a(new t0(this.a));
        c0Var.a(new p82(this.b));
        c0Var.a(new p82(this.c));
        c0Var.a(new p82(this.d));
        n33 n33Var = this.e;
        if (n33Var != null) {
            c0Var.a(new n33(n33Var.a));
        }
        t82 t82Var = new t82(c0Var);
        t82Var.c = -1;
        return t82Var;
    }
}
