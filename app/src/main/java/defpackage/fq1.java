package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class fq1 {
    public static ArrayList a(List list) {
        if (list.size() > 1) {
            vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", xs1.h(list.size(), "getAppTaskPropertiesForBackup: Loading apps list for ", " custom settings"), null, 4, null);
        } else {
            vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", "getAppTaskPropertiesForBackup: Loading apps list for custom settings", null, 4, null);
        }
        g00 g00Var = g00.a;
        g00.C();
        List listM = g00.m(true);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listM) {
            if (((ji) obj).isInstalled()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj2 : list) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            ConfigSettings configSettings = (ConfigSettings) obj2;
            vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", fz5.j(i2, "Getting apps for ConfigSettings #"), null, 4, null);
            ConfigSettings.ApplyData applyData = configSettings.getApplyData();
            if (applyData == null) {
                c6.f("Required value was null.");
                return null;
            }
            if (!applyData.isValid(true)) {
                c6.f("Failed requirement.");
                return null;
            }
            List<String> labelIds = applyData.getLabelIds();
            if (labelIds != null) {
                if (labelIds.isEmpty()) {
                    labelIds = null;
                }
                if (labelIds != null) {
                    ArrayList arrayList3 = new ArrayList();
                    for (Object obj3 : labelIds) {
                        LabelParams.Companion.getClass();
                        if (!hr4.c((String) obj3)) {
                            arrayList3.add(obj3);
                        }
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj4 : labelIds) {
                        LabelParams.Companion.getClass();
                        if (hr4.c((String) obj4)) {
                            arrayList4.add(obj4);
                        }
                    }
                    iy iyVar = iy.a;
                    List listC0 = h77.C0(new me3(new me3(new ll1(iy.f(arrayList, null)), true, new cz(arrayList2, 2)), true, new xs(2, arrayList4, arrayList3)));
                    vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", fz5.j(listC0.size(), "Num of apps matching Labels="), null, 4, null);
                    Iterator it = new q98(new ll1(listC0), new v10(configSettings, 6)).iterator();
                    while (true) {
                        p98 p98Var = (p98) it;
                        if (p98Var.hasNext()) {
                            arrayList2.add(p98Var.next());
                        }
                    }
                }
            }
            i = i2;
        }
        vr6.i$default(vr6.INSTANCE, "ConfigAppsLoader", fz5.j(arrayList2.size(), "Apps list compiled with size "), null, 4, null);
        return arrayList2;
    }
}
