package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class cj implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ rj b;

    public /* synthetic */ cj(rj rjVar, int i) {
        this.a = i;
        this.b = rjVar;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        rj rjVar = this.b;
        switch (i) {
            case 0:
                rjVar.j(false);
                return be8.a;
            default:
                wi wiVar = new wi(rjVar.e);
                wiVar.e = rjVar.P;
                wiVar.g = rjVar.O;
                return wiVar;
        }
    }
}
