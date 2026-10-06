package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ww1 implements p75 {
    public final /* synthetic */ int a;

    public /* synthetic */ ww1(int i) {
        this.a = i;
    }

    @Override // defpackage.p75
    public final void a(bs2 bs2Var, on5 on5Var) {
        switch (this.a) {
            case 0:
                on5 on5Var2 = (a28) on5Var;
                bs2Var.b();
                int iG = bs2Var.g();
                ((wj7) bs2Var.d).a((char) 160);
                bs2Var.h(on5Var2, iG);
                bs2Var.a(on5Var2);
                break;
            default:
                wj7 wj7Var = (wj7) bs2Var.d;
                s94 s94Var = (s94) on5Var;
                j75 j75Var = (j75) bs2Var.b;
                sj7 sj7VarA = ((ky3) j75Var.k).a(s94.class);
                if (sj7VarA != null) {
                    int iG2 = bs2Var.g();
                    bs2Var.j(s94Var);
                    if (iG2 == bs2Var.g()) {
                        wj7Var.a((char) 65532);
                    }
                    boolean z = s94Var.a instanceof lv4;
                    hx0 hx0Var = (hx0) j75Var.e;
                    String str = s94Var.f;
                    hx0Var.getClass();
                    di4 di4Var = (di4) bs2Var.c;
                    xx3.b.b(di4Var, str);
                    xx3.c.b(di4Var, Boolean.valueOf(z));
                    xx3.d.b(di4Var, null);
                    wj7.c(wj7Var, sj7VarA.a(j75Var, di4Var), iG2, wj7Var.a.length());
                } else {
                    bs2Var.j(s94Var);
                }
                break;
        }
    }
}
