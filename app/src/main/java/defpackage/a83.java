package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a83 implements r73 {
    public final /* synthetic */ int a;

    public /* synthetic */ a83(int i) {
        this.a = i;
    }

    @Override // defpackage.r73
    public final int a() {
        switch (this.a) {
            case 0:
                return 2;
            default:
                return 22;
        }
    }

    @Override // defpackage.r73
    public final t73 c(ow0 ow0Var) throws iw0 {
        switch (this.a) {
            case 0:
                long jE = ow0Var.b.e(ow0Var);
                vw2 vw2Var = ow0Var.b;
                vw2Var.e(ow0Var);
                ms8.H(ow0Var);
                ms8.H(ow0Var);
                ms8.H(ow0Var);
                ms8.H(ow0Var);
                vw2Var.f(ow0Var);
                vw2Var.f(ow0Var);
                vw2Var.e(ow0Var);
                long jE2 = vw2Var.e(ow0Var);
                vw2Var.e(ow0Var);
                return new n73(jE, ow0Var.q(h51.c, ((int) jE2) / 2));
            default:
                ArrayList arrayList = new ArrayList();
                long j = 0;
                long j2 = 0;
                while (true) {
                    j += j2;
                    ow0Var.c = (int) j;
                    vw2 vw2Var2 = ow0Var.b;
                    long jE3 = vw2Var2.e(ow0Var);
                    long jE4 = vw2Var2.e(ow0Var);
                    vw2Var2.a(ow0Var);
                    vw2Var2.a(ow0Var);
                    ow0Var.q(h51.c, ((int) jE4) / 2);
                    arrayList.add(new fo8(9));
                    if (jE3 == 0) {
                        return new da3();
                    }
                    j2 = jE3;
                }
                break;
        }
    }
}
