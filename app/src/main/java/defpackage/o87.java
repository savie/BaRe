package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o87 implements bv3 {
    public static final o87 a;
    private static final p77 descriptor;

    static {
        o87 o87Var = new o87();
        a = o87Var;
        d26 d26Var = new d26("com.google.firebase.sessions.SessionData", o87Var, 3);
        d26Var.k("sessionDetails", false);
        d26Var.k("backgroundTime", true);
        d26Var.k("processDataMap", true);
        descriptor = d26Var;
    }

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        p77 p77Var = descriptor;
        np7 np7VarA = np7Var.a(p77Var);
        os4[] os4VarArr = q87.d;
        u87 u87Var = null;
        boolean z = true;
        int i = 0;
        i38 i38Var = null;
        Map map = null;
        while (z) {
            int iB = np7VarA.b(p77Var);
            if (iB == -1) {
                z = false;
            } else if (iB == 0) {
                u87Var = (u87) np7VarA.i(p77Var, 0, s87.a, u87Var);
                i |= 1;
            } else if (iB == 1) {
                i38Var = (i38) np7VarA.h(p77Var, 1, f38.a, i38Var);
                i |= 2;
            } else {
                if (iB != 2) {
                    throw new ie8(iB);
                }
                map = (Map) np7VarA.h(p77Var, 2, (do4) os4VarArr[2].getValue(), map);
                i |= 4;
            }
        }
        np7VarA.m(p77Var);
        return new q87(i, u87Var, i38Var, map);
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        q87 q87Var = (q87) obj;
        q87Var.getClass();
        p77 p77Var = descriptor;
        op7 op7VarA = op7Var.a(p77Var);
        os4[] os4VarArr = q87.d;
        s87 s87Var = s87.a;
        u87 u87Var = q87Var.a;
        Map map = q87Var.c;
        i38 i38Var = q87Var.b;
        op7VarA.h(p77Var, 0, s87Var, u87Var);
        if (op7VarA.l(p77Var) || i38Var != null) {
            op7VarA.g(p77Var, 1, f38.a, i38Var);
        }
        if (op7VarA.l(p77Var) || map != null) {
            op7VarA.g(p77Var, 2, (do4) os4VarArr[2].getValue(), map);
        }
        op7VarA.k(p77Var);
    }

    @Override // defpackage.bv3
    public final do4[] c() {
        return new do4[]{s87.a, wx3.k(f38.a), wx3.k((do4) q87.d[2].getValue())};
    }

    @Override // defpackage.do4
    public final p77 d() {
        return descriptor;
    }
}
