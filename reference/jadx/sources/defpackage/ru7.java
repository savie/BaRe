package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ru7 extends iz1 {
    public final /* synthetic */ qn5 i;
    public final /* synthetic */ yf1 j;
    public final /* synthetic */ gu2 k;
    public final /* synthetic */ ArrayList l;
    public final /* synthetic */ bv7 m;

    public ru7(bv7 bv7Var, qn5 qn5Var, yf1 yf1Var, gu2 gu2Var, ArrayList arrayList) {
        this.m = bv7Var;
        this.i = qn5Var;
        this.j = yf1Var;
        this.k = gu2Var;
        this.l = arrayList;
    }

    @Override // defpackage.iz1
    public final void B(Object obj, Object obj2) {
        m61 m61Var = (m61) obj;
        ua4 ua4Var = (ua4) obj2;
        qn5 qn5Var = this.i;
        qn5 qn5VarM = qn5Var != null ? qn5Var.m(m61Var) : null;
        yf1 yf1Var = this.j;
        yf1 yf1Var2 = new yf1(13, ((gy5) yf1Var.b).d(m61Var), (vq) yf1Var.c);
        gu2 gu2VarX = this.k.x(m61Var);
        if (gu2VarX != null) {
            this.l.addAll(this.m.e(gu2VarX, ua4Var, qn5VarM, yf1Var2));
        }
    }
}
