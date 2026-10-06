package defpackage;

import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kz4 extends dv {
    public static final kz4 g;

    static {
        kz4 kz4Var = new kz4(0);
        g = kz4Var;
        hx0.b.i(kz4Var);
    }

    @Override // defpackage.dv
    public final ik6 a() {
        boolean z;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            d6.o();
            return null;
        }
        dz5 dz5Var = dz5.a;
        if (!dz5.n() || !dz5.k()) {
            this.b = false;
            return new ik6(hk6.Empty, null, false, 14);
        }
        v53.a.b();
        lr4.a.a();
        g00 g00Var = g00.a;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            c00 c00VarL = g00Var.l(z);
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) c00VarL.b);
            arrayList.addAll((ArrayList) c00VarL.c);
            this.b = true;
            return arrayList.isEmpty() ? new ik6(hk6.Empty, null, false, 14) : new ik6(hk6.Success, arrayList, false, 12);
        } catch (ClassCastException unused) {
            z = false;
        }
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onAppEvent(oq oqVar) {
        oqVar.getClass();
        String str = oqVar.a;
        if (str == null) {
            return;
        }
        ji jiVar = (ji) b(str);
        String str2 = this.a;
        boolean z = false;
        if (jiVar != null) {
            if (jiVar.isUninstalledWithoutBackup()) {
                Log.d(str2, "Removing app = " + jiVar.asString());
                n(jiVar);
                return;
            }
            Log.d(str2, "Updating app = " + jiVar.asString());
            jiVar.refresh();
            k(ji.copy$default(jiVar, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, null, nh4.k(2, false, false, null, (Random) xe6.b.a.get()), 67108863, null));
            return;
        }
        try {
            g00 g00Var = g00.a;
            PackageInfo packageInfoQ = g00.q(0, str);
            if (packageInfoQ == null) {
                return;
            }
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences.getBoolean("show_system_apps", false);
                if (g00.z(packageInfoQ, z)) {
                    ji jiVarFromPackageInfo = ji.Companion.fromPackageInfo(packageInfoQ);
                    k(jiVarFromPackageInfo);
                    Log.d(str2, "Added app = " + jiVarFromPackageInfo.asString());
                }
            } catch (ClassCastException unused) {
            }
        } catch (Exception unused2) {
        }
    }
}
