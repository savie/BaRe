package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class aj implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ rj b;

    public /* synthetic */ aj(rj rjVar, int i) {
        this.a = i;
        this.b = rjVar;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        rj rjVar = this.b;
        switch (i) {
            case 0:
                ji jiVar = rjVar.f;
                rjVar.k = ni.b(jiVar, rjVar.p);
                rjVar.n = ni.a(jiVar, rjVar.q, rjVar.r);
                zn4 zn4Var = zn4.a;
                zn4.e(new bj(rjVar, 0));
                return be8.a;
            default:
                return rjVar.H().p;
        }
    }
}
