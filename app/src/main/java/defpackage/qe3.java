package defpackage;

import java.text.SimpleDateFormat;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qe3 implements bt3 {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;

    public qe3(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        zc2 zc2Var = re3.a;
        String strM = re3.m(this.a);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = ((SimpleDateFormat) re3.c.getValue()).format(Long.valueOf(jCurrentTimeMillis));
        String strY0 = null;
        String str2 = this.b;
        if (str2 != null) {
            if (str2.length() <= 0 || nq7.j0(str2)) {
                str2 = null;
            }
            if (str2 != null) {
                strY0 = el1.Y0(x50.p0(new Object[]{str, Long.valueOf(jCurrentTimeMillis), str2}), null, null, null, null, 63);
            }
        }
        ig3 ig3VarB = ig3.b();
        ig3VarB.a();
        wj6 wj6Var = ig3VarB.c;
        gy5 gy5Var = gy5.d;
        oc6 oc6Var = oc6.f;
        d45.b.getClass();
        MFirebaseUser mFirebaseUserA = d45.a();
        if (mFirebaseUserA == null) {
            throw dj7.f(0, "System.exit returned normally, while it was supposed to halt JVM.");
        }
        String strL = dj7.l("ch/", mFirebaseUserA.getUid(), "/", strM);
        if (gy5Var.isEmpty()) {
            ui8.b(strL);
        } else {
            ui8.a(strL);
        }
        return new zc2(wj6Var, gy5Var.e(new gy5(strL))).i(strY0);
    }
}
