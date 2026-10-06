package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qn3 implements mt3 {
    public final /* synthetic */ sn3 a;
    public final /* synthetic */ eo3 b;
    public final /* synthetic */ int c;

    public /* synthetic */ qn3(sn3 sn3Var, eo3 eo3Var, int i) {
        this.a = sn3Var;
        this.b = eo3Var;
        this.c = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Integer num = (Integer) obj;
        int iIntValue = num.intValue();
        qp3 qp3Var = this.a.a;
        qp3Var.k(new r62(num, ((do3) this.b).a.getId()));
        qp3Var.n(this.c + iIntValue);
        return be8.a;
    }
}
