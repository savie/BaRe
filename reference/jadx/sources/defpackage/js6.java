package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class js6 extends rt6 {
    @Override // defpackage.rt6
    public final void f(zu6 zu6Var) throws iw0 {
        zu6Var.t(2);
        vw2 vw2Var = zu6Var.b;
        int iD = vw2Var.d(zu6Var);
        int iS = zu6Var.s();
        if (iD > 0 && iS > 0) {
            ArrayList arrayList = new ArrayList();
            zu6Var.c = ((ut6) this.a).n + iD;
            while (true) {
                int i = zu6Var.c;
                y40 y40Var = new y40();
                y40Var.b = zu6Var.s();
                y40Var.c = (z83) sz8.k0(vw2Var.e(zu6Var), z83.class, null);
                y40Var.d = zu6Var.q(h51.c, ((int) vw2Var.e(zu6Var)) / 2);
                arrayList.add(y40Var);
                int i2 = y40Var.b;
                if (i2 == 0) {
                    break;
                } else {
                    zu6Var.c = i + i2;
                }
            }
        }
        zu6Var.c = ((ut6) this.a).n + iD + iS;
    }
}
