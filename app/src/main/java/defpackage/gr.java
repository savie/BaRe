package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.edit.ConfigEditActivity;
import org.swiftapps.swiftbackup.home.schedule.data.b;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gr implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gr(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        boolean z;
        boolean z2;
        int i = this.a;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                tr trVar = (tr) obj2;
                trVar.A.invoke(Integer.valueOf(trVar.b()), (ji) obj);
                break;
            case 1:
                Config config = (Config) obj;
                j30 j30Var = (j30) ((ConfigEditActivity) obj2).U.getValue();
                j30Var.getClass();
                gv7 gv7Var = j30Var.R;
                gv7 gv7Var2 = j30Var.S;
                config.getClass();
                ArrayList arrayList = new ArrayList();
                List<ConfigSettings> validSettings = config.getValidSettings();
                if (validSettings == null || validSettings.isEmpty()) {
                    z = false;
                } else {
                    Iterator<T> it = validSettings.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            List<iu> appParts = ((ConfigSettings) it.next()).getAppParts();
                            if (appParts == null || !appParts.isEmpty()) {
                                Iterator<T> it2 = appParts.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        continue;
                                    } else if (!((iu) it2.next()).getBackupReq().isPossible()) {
                                        z = true;
                                    }
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                }
                arrayList.add(new k30("Backup", config, R.string.backup, R.drawable.ic_check_circle_outline, z, R.string.run_backup, R.drawable.ic_check));
                List<ConfigSettings> validSettings2 = config.getValidSettings();
                if (validSettings2 == null || validSettings2.isEmpty()) {
                    z2 = false;
                } else {
                    Iterator<T> it3 = validSettings2.iterator();
                    while (it3.hasNext()) {
                        List<iu> appParts2 = ((ConfigSettings) it3.next()).getAppParts();
                        if (appParts2 == null || !appParts2.isEmpty()) {
                            Iterator<T> it4 = appParts2.iterator();
                            while (it4.hasNext()) {
                                if (!((iu) it4.next()).getBackupReq().isPossible()) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                    z2 = false;
                }
                arrayList.add(new k30("Restore", config, R.string.restore, R.drawable.ic_restore, z2, R.string.run_restore, R.drawable.ic_restore));
                ((QuickRecyclerView) gv7Var.getValue()).setLinearLayoutManager(1);
                ((QuickRecyclerView) gv7Var.getValue()).setAdapter((i30) gv7Var2.getValue());
                ((i30) gv7Var2.getValue()).j = new g30(j30Var, 0);
                ((i30) gv7Var2.getValue()).w(new fm7((List) arrayList, (Set) null, false, (String) null, 30), false);
                j30Var.show();
                break;
            case 2:
                ((q54) obj2).r(zc6.q((zc6) obj, true, false, 3583));
                break;
            case 3:
                b bVar = (b) obj;
                cz czVar = ((j57) obj2).n;
                if (czVar != null) {
                    czVar.invoke(bVar.q.getItemId());
                }
                break;
            case 4:
                pb7 pb7Var = (pb7) obj2;
                String str = (String) obj;
                if (!pe4.d(pb7Var.g, str)) {
                    pb7Var.g = str;
                    gj gjVar = pb7Var.h;
                    if (gjVar != null) {
                        gjVar.invoke();
                    }
                    pb7Var.e();
                    break;
                }
                break;
            default:
                cs8 cs8Var = (cs8) obj2;
                List list = ((fu8) ((gu8) obj)).a;
                dj0 dj0Var = (dj0) cs8Var.k.getValue();
                rb rbVar = new rb(cs8Var, 25);
                dj0Var.getClass();
                list.getClass();
                il0 il0Var = dj0Var.a;
                String string = il0Var.getString(R.string.select_backup_locations);
                string.getClass();
                jj0 jj0Var = new jj0("locations", string, false, (bt3) null, 28);
                q05 q05Var = q05.DEVICE;
                String string2 = q05Var.toString();
                String string3 = il0Var.getString(R.string.device);
                string3.getClass();
                li0 li0Var = new li0(string2, string3, (String) null, Integer.valueOf(R.drawable.ic_device), (Integer) null, q05Var.isCheckedInExpansion(5), (ao) null, 212);
                List list2 = jj0Var.c;
                list2.add(li0Var);
                q05 q05Var2 = q05.CLOUD;
                String string4 = q05Var2.toString();
                String string5 = il0Var.getString(R.string.cloud);
                string5.getClass();
                list2.add(new li0(string4, string5, (String) null, Integer.valueOf(R.drawable.ic_cloud), (Integer) null, q05Var2.isCheckedInExpansion(5), (ao) null, 212));
                mj0 mj0Var = new mj0(fl1.C0(jj0Var), false);
                new lj0(il0Var).j(mj0Var, new lh(rbVar, dj0Var, list, mj0Var));
                break;
        }
    }
}
