package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bj implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ rj b;

    public /* synthetic */ bj(rj rjVar, int i) {
        this.a = i;
        this.b = rjVar;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        int i = this.a;
        rj rjVar = this.b;
        switch (i) {
            case 0:
                ho hoVar = (ho) rjVar.b;
                if (hoVar != null && hoVar.isShowing()) {
                    ArrayList arrayList = rjVar.k;
                    ArrayList arrayList2 = rjVar.n;
                    rjVar.k = arrayList;
                    rjVar.n = arrayList2;
                    rjVar.J();
                    r35.m((wi) rjVar.L.getValue(), rjVar.k);
                    r35.m((wi) rjVar.N.getValue(), rjVar.n);
                }
                return be8.a;
            default:
                return rjVar.H().k;
        }
    }
}
