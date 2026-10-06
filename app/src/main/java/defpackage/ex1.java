package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ex1 implements p75 {
    public final /* synthetic */ int a;

    @Override // defpackage.p75
    public final void a(bs2 bs2Var, on5 on5Var) {
        switch (this.a) {
            case 0:
                dv2 dv2Var = (dv2) on5Var;
                int iG = bs2Var.g();
                bs2Var.j(dv2Var);
                bs2Var.h(dv2Var, iG);
                break;
            case 1:
                bs2Var.b();
                int iG2 = bs2Var.g();
                bs2Var.j(on5Var);
                bs2Var.h(on5Var, iG2);
                bs2Var.a(on5Var);
                break;
            default:
                hw7 hw7Var = (hw7) on5Var;
                bs2Var.b();
                int iG3 = bs2Var.g();
                bs2Var.j(hw7Var);
                cx7 cx7Var = new cx7();
                wj7 wj7Var = (wj7) bs2Var.d;
                wj7.c(wj7Var, cx7Var, iG3, wj7Var.a.length());
                bs2Var.a(hw7Var);
                break;
        }
    }
}
