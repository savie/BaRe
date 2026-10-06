package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sj6 implements cl6 {
    public final /* synthetic */ gy5 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ ci8 c;
    public final /* synthetic */ wj6 d;

    public sj6(wj6 wj6Var, gy5 gy5Var, long j, ci8 ci8Var) {
        this.d = wj6Var;
        this.a = gy5Var;
        this.b = j;
        this.c = ci8Var;
    }

    @Override // defpackage.cl6
    public final void d(String str, String str2) {
        wc2 wc2VarB = str != null ? wc2.b(str, str2) : null;
        wj6 wj6Var = this.d;
        gy5 gy5Var = this.a;
        wj6.b(wj6Var, "setValue", gy5Var, wc2VarB);
        wj6.c(wj6Var, this.b, gy5Var, wc2VarB);
        ci8 ci8Var = this.c;
        if (ci8Var != null) {
            m61 m61VarI = gy5Var.i();
            wj6Var.i(new s60(ci8Var, wc2VarB, (m61VarI == null || !m61VarI.equals(m61.d)) ? new zc2(wj6Var, gy5Var) : new zc2(wj6Var, gy5Var.l())));
        }
    }
}
