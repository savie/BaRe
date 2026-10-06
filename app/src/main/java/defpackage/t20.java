package defpackage;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.appslist.ui.listconfig.AppsConfigRunActivity;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.detail.DetailActivity;
import org.swiftapps.swiftbackup.messagescalls.dash.CallsDashActivity;
import org.swiftapps.swiftbackup.model.app.AppCloudBackup;
import org.swiftapps.swiftbackup.model.app.CloudMetadata;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class t20 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ t20(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = 14;
        int i2 = 0;
        switch (this.a) {
            case 0:
                AppsConfigRunActivity appsConfigRunActivity = (AppsConfigRunActivity) this.b;
                k30 k30Var = (k30) this.c;
                f30 f30Var = appsConfigRunActivity.j0;
                if (f30Var == null) {
                    pe4.F("mAdapter");
                    throw null;
                }
                if (f30Var.e.b.isEmpty()) {
                    String string = appsConfigRunActivity.getString(R.string.select_some_items);
                    string.getClass();
                    zn4 zn4Var = zn4.a;
                    zn4.e(new cv(i, appsConfigRunActivity, string));
                    return;
                }
                String str = k30Var.a;
                int iHashCode = str.hashCode();
                if (iHashCode == -1532794258) {
                    if (str.equals("Restore")) {
                        f30 f30Var2 = appsConfigRunActivity.j0;
                        if (f30Var2 == null) {
                            pe4.F("mAdapter");
                            throw null;
                        }
                        List listL = f30Var2.l();
                        ArrayList arrayList = appsConfigRunActivity.V().i;
                        arrayList.getClass();
                        ArrayList<kz> arrayList2 = new ArrayList();
                        for (Object obj : arrayList) {
                            kz kzVar = (kz) obj;
                            if (!listL.isEmpty()) {
                                Iterator it = listL.iterator();
                                while (it.hasNext()) {
                                    if (pe4.d(((ji) it.next()).getPackageName(), kzVar.a().getPackageName())) {
                                        arrayList2.add(obj);
                                    }
                                    break;
                                }
                            }
                        }
                        if (arrayList2.isEmpty()) {
                            vr6.e$default(vr6.INSTANCE, appsConfigRunActivity.r(), "runRestore: propsList empty!", null, 4, null);
                            String string2 = appsConfigRunActivity.getString(R.string.apps_empty_list_error);
                            string2.getClass();
                            zn4 zn4Var2 = zn4.a;
                            zn4.e(new cv(i, appsConfigRunActivity, string2));
                            return;
                        }
                        v20 v20Var = new v20(i2, appsConfigRunActivity, arrayList2, new ry7(false));
                        if (!arrayList2.isEmpty()) {
                            for (kz kzVar2 : arrayList2) {
                                kzVar2.getClass();
                                if (((jz) kzVar2).h != null) {
                                    sa1.R(appsConfigRunActivity, null, v20Var, 1);
                                    return;
                                }
                            }
                        }
                        v20Var.invoke();
                        return;
                    }
                    return;
                }
                if (iHashCode == 1346201143) {
                    if (str.equals("Premium")) {
                        zn4 zn4Var3 = zn4.a;
                        zn4.e(new b56(appsConfigRunActivity, i2));
                        return;
                    }
                    return;
                }
                if (iHashCode == 1982161378 && str.equals("Backup")) {
                    f30 f30Var3 = appsConfigRunActivity.j0;
                    if (f30Var3 == null) {
                        pe4.F("mAdapter");
                        throw null;
                    }
                    List listL2 = f30Var3.l();
                    ArrayList arrayList3 = appsConfigRunActivity.V().i;
                    arrayList3.getClass();
                    ArrayList<kz> arrayList4 = new ArrayList();
                    for (Object obj2 : arrayList3) {
                        kz kzVar3 = (kz) obj2;
                        if (!listL2.isEmpty()) {
                            Iterator it2 = listL2.iterator();
                            while (it2.hasNext()) {
                                if (pe4.d(((ji) it2.next()).getPackageName(), kzVar3.a().getPackageName())) {
                                    arrayList4.add(obj2);
                                }
                                break;
                            }
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        vr6.e$default(vr6.INSTANCE, appsConfigRunActivity.r(), "runBackup: propsList empty!", null, 4, null);
                        String string3 = appsConfigRunActivity.getString(R.string.apps_empty_list_error);
                        string3.getClass();
                        zn4 zn4Var4 = zn4.a;
                        zn4.e(new cv(i, appsConfigRunActivity, string3));
                        return;
                    }
                    u20 u20Var = new u20(i2, appsConfigRunActivity, arrayList4, new ky7(2, 0));
                    if (!arrayList4.isEmpty()) {
                        for (kz kzVar4 : arrayList4) {
                            kzVar4.getClass();
                            if (ji8.r(((hz) kzVar4).d)) {
                                sa1.R(appsConfigRunActivity, null, u20Var, 1);
                                return;
                            }
                        }
                    }
                    u20Var.invoke();
                    return;
                }
                return;
            case 1:
                CallsDashActivity callsDashActivity = (CallsDashActivity) this.b;
                ArrayList arrayList5 = (ArrayList) this.c;
                int i3 = CallsDashActivity.T;
                Const.K(callsDashActivity, R.string.delete_all, new qf(3, callsDashActivity, arrayList5), null);
                return;
            case 2:
                Config config = (Config) this.b;
                ConfigEditActivity configEditActivity = (ConfigEditActivity) this.c;
                int i4 = ConfigEditActivity.V;
                if (sq1.a(config, false)) {
                    qq1 qq1VarV = configEditActivity.V();
                    config.getClass();
                    synchronized (br1.a) {
                        zn4 zn4Var5 = zn4.a;
                        zn4.c(new d76(config, 15));
                    }
                    qq1VarV.l(config, true);
                    String string4 = configEditActivity.getString(R.string.config_updated);
                    string4.getClass();
                    zn4.e(new cv(i, configEditActivity, string4));
                }
                ViewGroup viewGroupA = io4.a(configEditActivity);
                Context context = viewGroupA.getContext();
                InputMethodManager inputMethodManager = context != null ? (InputMethodManager) context.getSystemService(InputMethodManager.class) : null;
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(viewGroupA.getWindowToken(), 0);
                    return;
                }
                return;
            default:
                pj2 pj2Var = (pj2) this.b;
                wj2 wj2Var = (wj2) this.c;
                DetailActivity detailActivity = pj2Var.a;
                xi0 xi0Var = (xi0) detailActivity.S.getValue();
                AppCloudBackup appCloudBackup = wj2Var.a;
                CloudMetadata metadata = appCloudBackup.getMetadata();
                mk2 mk2Var = pj2Var.b;
                boolean zIsInstalled = mk2Var.k().isInstalled();
                boolean zIsBundled = mk2Var.k().isBundled();
                cd cdVar = new cd(4, null, appCloudBackup);
                fu fuVar = detailActivity.a0;
                xi0Var.getClass();
                metadata.getClass();
                fuVar.getClass();
                if (!zIsInstalled && !metadata.hasApk()) {
                    xi0Var.f(new nj0(), false, cdVar, fuVar);
                    return;
                } else {
                    zn4 zn4Var6 = zn4.a;
                    zn4.b(null, new vi0(xi0Var, detailActivity, zIsBundled, zIsInstalled, metadata, cdVar, fuVar, null));
                    return;
                }
        }
    }
}
