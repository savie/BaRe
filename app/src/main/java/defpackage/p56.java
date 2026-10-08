package defpackage;

import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p56 extends qo0 {
    public p56() {
        o56 o56Var = new o56(this);
        lz3 lz3Var = lz3.d;
        SwiftApp.Companion companion = SwiftApp.d;
        int iC = lz3Var.c(SwiftApp.Companion.c(), mz3.a);
        boolean z = iC == 0;
        if (!z) {
            int i = u04.e;
            String strQ = hs1.q(iC);
            if (strQ.length() > 0) {
                vr6.e$default(vr6.INSTANCE, "GmsUtil", "isGooglePlayServicesAvailable: ".concat(strQ), null, 4, null);
            }
        }
        if (!z) {
            vr6.e$default(vr6.INSTANCE, this.b, "No Google Play Services. Can't fetch purchases.", null, 4, null);
            wq0.c.k(new qq0(V.INSTANCE.getA()));
        } else {
            vr6.i$default(vr6.INSTANCE, this.b, "Google Play services found, connecting with it.", null, 4, null);
            wq0.a.f();
            wq0.b.f(o56Var);
        }
    }
}
