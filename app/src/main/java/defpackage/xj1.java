package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class xj1 extends dv {
    public static final xj1 g = new xj1(2);

    @Override // defpackage.dv
    public final ik6 a() {
        ai8.b();
        tb1 tb1Var = tb1.a;
        if (!qb1.m()) {
            return new ik6(hk6.DriveNotConnected, null, false, 14);
        }
        SwiftApp.Companion companion = SwiftApp.d;
        if (!ai8.i(SwiftApp.Companion.c())) {
            return new ik6(hk6.NetworkError, null, false, 14);
        }
        ui1 ui1VarK = qb1.c().k();
        Exception exc = ui1VarK.b;
        String str = this.a;
        if (exc != null) {
            Log.e(str, "getCloudBackups: ", exc);
            return new ik6(hk6.CloudError, null, false, 14);
        }
        List<pg1> list = ui1VarK.a;
        if (list.isEmpty()) {
            Log.w(str, "getCloudBackups: FileList is EMPTY");
            this.b = true;
            return new ik6(hk6.Empty, null, false, 14);
        }
        ArrayList arrayList = new ArrayList(hl1.G0(list, 10));
        for (pg1 pg1Var : list) {
            pg1Var.getClass();
            String str2 = ry5.u;
            q63 q63Var = new q63(eq3.j(qy5.f(false, null).r, pg1Var.a), 2);
            arrayList.add(new yn8(q63Var, pg1Var.e, pg1Var.c, pg1Var.a, pg1Var.b, pg1Var.f, q63Var.j()));
        }
        this.b = true;
        return new ik6(hk6.Success, arrayList, false, 12);
    }
}
