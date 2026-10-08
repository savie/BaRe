package defpackage;

import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class w52 extends xh2 {
    public final jh1 c;
    public final String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w52(jh1 jh1Var, zv1 zv1Var) {
        super(zv1Var);
        jh1Var.getClass();
        this.c = jh1Var;
        this.d = "CsDeleteSession";
    }

    @Override // defpackage.xh2
    public final boolean b(List list) throws Exception {
        dz5 dz5Var = dz5.a;
        boolean zH = dz5.h("android.permission.ACCESS_LOCAL_NETWORK");
        int i = Build.VERSION.SDK_INT;
        SwiftApp.Companion companion = SwiftApp.d;
        int i2 = SwiftApp.Companion.c().getApplicationInfo().targetSdkVersion;
        tz4 tz4Var = new tz4(0, dz5Var, dz5.class, "grantLocalNetworkPermissionWithRootOrShizuku", "grantLocalNetworkPermissionWithRootOrShizuku()Z", 0);
        jh1 jh1Var = this.c;
        jh1Var.getClass();
        zz4 zz4VarA = uz4.a(jh1Var.g(), uz4.e(jh1Var), zH, i, i2, tz4Var);
        if (zz4VarA != null) {
            throw zz4VarA;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((String) obj).length() > 0) {
                arrayList.add(obj);
            }
        }
        try {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                jh1Var.j((String) it.next());
            }
            return true;
        } catch (Exception e) {
            zz4 zz4VarD = uz4.d(jh1Var, e);
            if (zz4VarD != null) {
                throw zz4VarD;
            }
            throw e;
        }
    }

    @Override // defpackage.xh2
    public final String d() {
        return this.d;
    }
}
