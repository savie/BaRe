package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s87 implements bv3 {
    public static final s87 a;
    private static final p77 descriptor;

    static {
        s87 s87Var = new s87();
        a = s87Var;
        d26 d26Var = new d26("com.google.firebase.sessions.SessionDetails", s87Var, 4);
        d26Var.k("sessionId", false);
        d26Var.k("firstSessionId", false);
        d26Var.k("sessionIndex", false);
        d26Var.k("sessionStartTimestampUs", false);
        descriptor = d26Var;
    }

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        p77 p77Var = descriptor;
        np7 np7VarA = np7Var.a(p77Var);
        int i = 0;
        int iD = 0;
        String strL = null;
        String strL2 = null;
        long jF = 0;
        boolean z = true;
        while (z) {
            int iB = np7VarA.b(p77Var);
            if (iB == -1) {
                z = false;
            } else if (iB == 0) {
                strL = np7VarA.l(p77Var, 0);
                i |= 1;
            } else if (iB == 1) {
                strL2 = np7VarA.l(p77Var, 1);
                i |= 2;
            } else if (iB == 2) {
                iD = np7VarA.d(p77Var, 2);
                i |= 4;
            } else {
                if (iB != 3) {
                    throw new ie8(iB);
                }
                jF = np7VarA.f(p77Var, 3);
                i |= 8;
            }
        }
        np7VarA.m(p77Var);
        return new u87(i, iD, jF, strL, strL2);
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        u87 u87Var = (u87) obj;
        u87Var.getClass();
        p77 p77Var = descriptor;
        op7 op7VarA = op7Var.a(p77Var);
        String str = u87Var.a;
        str.getClass();
        op7VarA.b(p77Var, 0);
        op7VarA.j(str);
        String str2 = u87Var.b;
        str2.getClass();
        op7VarA.b(p77Var, 1);
        op7VarA.j(str2);
        int i = u87Var.c;
        op7VarA.b(p77Var, 2);
        op7VarA.c(i);
        op7VarA.e(p77Var, 3, u87Var.d);
        op7VarA.k(p77Var);
    }

    @Override // defpackage.bv3
    public final do4[] c() {
        hq7 hq7Var = hq7.a;
        return new do4[]{hq7Var, hq7Var, od4.a, u15.a};
    }

    @Override // defpackage.do4
    public final p77 d() {
        return descriptor;
    }
}
