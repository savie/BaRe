package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xw1 implements p75 {
    public final /* synthetic */ int a;

    public /* synthetic */ xw1(int i) {
        this.a = i;
    }

    @Override // defpackage.p75
    public final void a(bs2 bs2Var, on5 on5Var) {
        switch (this.a) {
            case 0:
                k34 k34Var = (k34) on5Var;
                bs2Var.b();
                int iG = bs2Var.g();
                bs2Var.j(k34Var);
                lg7.d.b((di4) bs2Var.c, Integer.valueOf(k34Var.f));
                bs2Var.h(k34Var, iG);
                bs2Var.a(k34Var);
                break;
            default:
                on5 on5Var2 = (bx4) on5Var;
                q86 q86Var = lg7.a;
                int iG2 = bs2Var.g();
                di4 di4Var = (di4) bs2Var.c;
                bs2Var.j(on5Var2);
                ws0 ws0Var = (ws0) on5Var2.a;
                if (ws0Var instanceof qu5) {
                    qu5 qu5Var = (qu5) ws0Var;
                    int i = qu5Var.g;
                    q86Var.b(di4Var, kx1.b);
                    lg7.c.b(di4Var, Integer.valueOf(i));
                    qu5Var.g++;
                } else {
                    q86Var.b(di4Var, kx1.a);
                    q86 q86Var2 = lg7.b;
                    int i2 = 0;
                    for (on5 on5VarC = (ws0) on5Var2.a; on5VarC != null; on5VarC = on5VarC.c()) {
                        if (on5VarC instanceof bx4) {
                            i2++;
                        }
                    }
                    q86Var2.b(di4Var, Integer.valueOf(i2));
                }
                bs2Var.h(on5Var2, iG2);
                if (on5Var2.e != null) {
                    bs2Var.b();
                }
                break;
        }
    }
}
