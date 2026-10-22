package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k87 implements bv3 {
    public static final k87 a;
    private static final p77 descriptor;

    static {
        k87 k87Var = new k87();
        a = k87Var;
        d26 d26Var = new d26("com.google.firebase.sessions.settings.SessionConfigs", k87Var, 5);
        d26Var.k("sessionsEnabled", false);
        d26Var.k("sessionSamplingRate", false);
        d26Var.k("sessionTimeoutSeconds", false);
        d26Var.k("cacheDurationSeconds", false);
        d26Var.k("cacheUpdatedTimeSeconds", false);
        descriptor = d26Var;
    }

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        p77 p77Var = descriptor;
        np7 np7VarA = np7Var.a(p77Var);
        int i = 0;
        Boolean bool = null;
        Double d = null;
        Integer num = null;
        Integer num2 = null;
        Long l = null;
        boolean z = true;
        while (z) {
            int iB = np7VarA.b(p77Var);
            if (iB == -1) {
                z = false;
            } else if (iB == 0) {
                bool = (Boolean) np7VarA.h(p77Var, 0, pt0.a, bool);
                i |= 1;
            } else if (iB == 1) {
                d = (Double) np7VarA.h(p77Var, 1, do2.a, d);
                i |= 2;
            } else if (iB == 2) {
                num = (Integer) np7VarA.h(p77Var, 2, od4.a, num);
                i |= 4;
            } else if (iB == 3) {
                num2 = (Integer) np7VarA.h(p77Var, 3, od4.a, num2);
                i |= 8;
            } else {
                if (iB != 4) {
                    throw new ie8(iB);
                }
                l = (Long) np7VarA.h(p77Var, 4, u15.a, l);
                i |= 16;
            }
        }
        np7VarA.m(p77Var);
        return new m87(i, bool, d, num, num2, l);
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        m87 m87Var = (m87) obj;
        m87Var.getClass();
        p77 p77Var = descriptor;
        op7 op7VarA = op7Var.a(p77Var);
        op7VarA.g(p77Var, 0, pt0.a, m87Var.a);
        op7VarA.g(p77Var, 1, do2.a, m87Var.b);
        od4 od4Var = od4.a;
        op7VarA.g(p77Var, 2, od4Var, m87Var.c);
        op7VarA.g(p77Var, 3, od4Var, m87Var.d);
        op7VarA.g(p77Var, 4, u15.a, m87Var.e);
        op7VarA.k(p77Var);
    }

    @Override // defpackage.bv3
    public final do4[] c() {
        do4 do4VarK = wx3.k(pt0.a);
        do4 do4VarK2 = wx3.k(do2.a);
        od4 od4Var = od4.a;
        return new do4[]{do4VarK, do4VarK2, wx3.k(od4Var), wx3.k(od4Var), wx3.k(u15.a)};
    }

    @Override // defpackage.do4
    public final p77 d() {
        return descriptor;
    }
}
