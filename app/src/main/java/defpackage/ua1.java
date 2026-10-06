package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.model.app.AppCloudBackups;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ua1 extends dv {
    public static final ua1 g;
    public static zc2 h;
    public static final gv7 i;

    static {
        ua1 ua1Var = new ua1(0);
        g = ua1Var;
        hx0.b.i(ua1Var);
        i = new gv7(new sm(4));
    }

    public static ji q(eb2 eb2Var) {
        AppCloudBackups appCloudBackupsFromSnapshot = AppCloudBackups.Companion.fromSnapshot(eb2Var);
        if (appCloudBackupsFromSnapshot == null) {
            return null;
        }
        ji jiVarFromCloudBackups = ji.Companion.fromCloudBackups(appCloudBackupsFromSnapshot);
        if (g00.A(g00.a, jiVarFromCloudBackups.getPackageName())) {
            return jiVarFromCloudBackups;
        }
        return null;
    }

    @Override // defpackage.dv
    public final ik6 a() {
        zc2 zc2Var = re3.a;
        zc2 zc2Var2 = h;
        gv7 gv7Var = i;
        e61 e61Var = (e61) gv7Var.getValue();
        if (zc2Var2 != null && e61Var != null) {
            zc2Var2.h(new f61(zc2Var2.a, e61Var, zc2Var2.f()));
        }
        tb1 tb1Var = tb1.a;
        if (!qb1.m()) {
            return new ik6(hk6.DriveNotConnected, null, false, 14);
        }
        zc2 zc2VarC = re3.c();
        h = zc2VarC;
        if (!ai8.h()) {
            return new ik6(hk6.NetworkError, null, false, 14);
        }
        ArrayList arrayList = new ArrayList();
        l73 l73VarA = cf3.a(zc2VarC, true);
        boolean z = l73VarA instanceof xe3;
        if (z) {
            db2 db2VarB = ((xe3) l73VarA).n.b();
            Iterator it = (Iterator) db2VarB.b;
            while (it.hasNext()) {
                hk5 hk5Var = (hk5) it.next();
                ji jiVarQ = q(new eb2(((eb2) db2VarB.c).b.d(hk5Var.a.a), sb4.d(hk5Var.b)));
                if (jiVarQ != null) {
                    arrayList.add(jiVarQ);
                }
            }
            zc2VarC.a(new f61(zc2VarC.a, (e61) gv7Var.getValue(), zc2VarC.f()));
        }
        if (z) {
            this.b = true;
            return arrayList.isEmpty() ? new ik6(hk6.Empty, null, false, 14) : new ik6(hk6.Success, arrayList, false, 12);
        }
        if (l73VarA instanceof we3) {
            Log.e(this.a, ((we3) l73VarA).n.b);
            return new ik6(hk6.CloudError, null, false, 14);
        }
        q.j();
        return null;
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onAppEvent(oq oqVar) {
        ji jiVar;
        oqVar.getClass();
        String str = oqVar.a;
        if (str == null || (jiVar = (ji) b(str)) == null) {
            return;
        }
        boolean zIsUninstalledWithoutBackup = jiVar.isUninstalledWithoutBackup();
        String str2 = this.a;
        if (zIsUninstalledWithoutBackup) {
            Log.d(str2, "Removing app = " + jiVar.asString());
            n(jiVar);
            return;
        }
        Log.d(str2, "Updating app = " + jiVar.asString());
        jiVar.refresh();
        k(ji.copy$default(jiVar, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, null, nh4.k(2, false, false, null, (Random) xe6.b.a.get()), 67108863, null));
    }
}
