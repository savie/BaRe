package defpackage;

import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h87 extends p61 {
    public final /* synthetic */ ji8 i;
    public final /* synthetic */ HashMap j;
    public final /* synthetic */ nh k;

    public h87(ji8 ji8Var, HashMap map, nh nhVar) {
        this.i = ji8Var;
        this.j = map;
        this.k = nhVar;
    }

    @Override // defpackage.p61
    public final void G(m61 m61Var, qn5 qn5Var) {
        qn5 qn5VarL = ms8.L(qn5Var, this.i.o(m61Var), this.j);
        if (qn5VarL != qn5Var) {
            gy5 gy5Var = new gy5(m61Var.a);
            nh nhVar = this.k;
            nhVar.b = ((qn5) nhVar.b).h0(gy5Var, qn5VarL);
        }
    }
}
