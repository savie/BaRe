package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f38 implements bv3 {
    public static final f38 a;
    private static final p77 descriptor;

    static {
        f38 f38Var = new f38();
        a = f38Var;
        d26 d26Var = new d26("com.google.firebase.sessions.Time", f38Var, 3);
        d26Var.k("ms", false);
        d26Var.k("us", true);
        d26Var.k("seconds", true);
        descriptor = d26Var;
    }

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        p77 p77Var = descriptor;
        np7 np7VarA = np7Var.a(p77Var);
        int i = 0;
        long jF = 0;
        long jF2 = 0;
        long jF3 = 0;
        boolean z = true;
        while (z) {
            int iB = np7VarA.b(p77Var);
            if (iB == -1) {
                z = false;
            } else if (iB == 0) {
                jF = np7VarA.f(p77Var, 0);
                i |= 1;
            } else if (iB == 1) {
                jF2 = np7VarA.f(p77Var, 1);
                i |= 2;
            } else {
                if (iB != 2) {
                    throw new ie8(iB);
                }
                jF3 = np7VarA.f(p77Var, 2);
                i |= 4;
            }
        }
        np7VarA.m(p77Var);
        return new i38(i, jF, jF2, jF3);
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        i38 i38Var = (i38) obj;
        i38Var.getClass();
        p77 p77Var = descriptor;
        op7 op7VarA = op7Var.a(p77Var);
        long j = i38Var.a;
        long j2 = i38Var.c;
        long j3 = i38Var.b;
        op7VarA.e(p77Var, 0, j);
        if (op7VarA.l(p77Var) || j3 != j * 1000) {
            op7VarA.e(p77Var, 1, j3);
        }
        if (op7VarA.l(p77Var) || j2 != j / 1000) {
            op7VarA.e(p77Var, 2, j2);
        }
        op7VarA.k(p77Var);
    }

    @Override // defpackage.bv3
    public final do4[] c() {
        u15 u15Var = u15.a;
        return new do4[]{u15Var, u15Var, u15Var};
    }

    @Override // defpackage.do4
    public final p77 d() {
        return descriptor;
    }
}
