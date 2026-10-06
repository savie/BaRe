package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pu9 {
    public static final mu9 a;
    public static final mu9 b;
    public static final eu9 c;

    static {
        lu9 lu9Var = lu9.f;
        lu9 lu9Var2 = lu9.d;
        ku9 ku9Var = ku9.b;
        try {
            kc kcVarB = mu9.b();
            kcVarB.b = 32;
            kcVarB.c = 16;
            kcVarB.e = ku9Var;
            kcVarB.d = lu9Var2;
            a = kcVarB.c();
            try {
                kc kcVarB2 = mu9.b();
                kcVarB2.b = 32;
                kcVarB2.c = 32;
                kcVarB2.e = ku9Var;
                kcVarB2.d = lu9Var2;
                kcVarB2.c();
                try {
                    kc kcVarB3 = mu9.b();
                    kcVarB3.b = 64;
                    kcVarB3.c = 32;
                    kcVarB3.e = ku9Var;
                    kcVarB3.d = lu9Var;
                    kcVarB3.c();
                    try {
                        kc kcVarB4 = mu9.b();
                        kcVarB4.b = 64;
                        kcVarB4.c = 64;
                        kcVarB4.e = ku9Var;
                        kcVarB4.d = lu9Var;
                        b = kcVarB4.c();
                        try {
                            l22 l22VarB = eu9.b();
                            l22VarB.r(32);
                            l22VarB.s(16);
                            l22VarB.d = du9.c;
                            c = l22VarB.q();
                        } catch (Exception e) {
                            throw new yt9(e);
                        }
                    } catch (Exception e2) {
                        throw new yt9(e2);
                    }
                } catch (Exception e3) {
                    throw new yt9(e3);
                }
            } catch (Exception e4) {
                throw new yt9(e4);
            }
        } catch (Exception e5) {
            throw new yt9(e5);
        }
    }
}
