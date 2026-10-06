package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g76 implements bv3 {
    public static final g76 a;
    private static final p77 descriptor;

    static {
        g76 g76Var = new g76();
        a = g76Var;
        d26 d26Var = new d26("com.google.firebase.sessions.ProcessData", g76Var, 2);
        d26Var.k("pid", false);
        d26Var.k("uuid", false);
        descriptor = d26Var;
    }

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        p77 p77Var = descriptor;
        np7 np7VarA = np7Var.a(p77Var);
        String strL = null;
        boolean z = true;
        int i = 0;
        int iD = 0;
        while (z) {
            int iB = np7VarA.b(p77Var);
            if (iB == -1) {
                z = false;
            } else if (iB == 0) {
                iD = np7VarA.d(p77Var, 0);
                i |= 1;
            } else {
                if (iB != 1) {
                    throw new ie8(iB);
                }
                strL = np7VarA.l(p77Var, 1);
                i |= 2;
            }
        }
        np7VarA.m(p77Var);
        return new i76(i, iD, strL);
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        i76 i76Var = (i76) obj;
        i76Var.getClass();
        p77 p77Var = descriptor;
        op7 op7VarA = op7Var.a(p77Var);
        int i = i76Var.a;
        op7VarA.b(p77Var, 0);
        op7VarA.c(i);
        String str = i76Var.b;
        str.getClass();
        op7VarA.b(p77Var, 1);
        op7VarA.j(str);
        op7VarA.k(p77Var);
    }

    @Override // defpackage.bv3
    public final do4[] c() {
        return new do4[]{od4.a, hq7.a};
    }

    @Override // defpackage.do4
    public final p77 d() {
        return descriptor;
    }
}
