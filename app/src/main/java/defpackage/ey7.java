package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.Config;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class ey7 {
    public static vq a(Config config, boolean z) {
        List<ConfigSettings> configSettings;
        config.getClass();
        SwiftApp.Companion companion = SwiftApp.d;
        Context contextC = SwiftApp.Companion.c();
        String string = contextC.getString(R.string.apps);
        string.getClass();
        String string2 = contextC.getString(R.string.config);
        string2.getClass();
        String name = config.getName();
        Set setZ1 = null;
        if (name == null || nq7.j0(name)) {
            name = null;
        }
        String strY0 = el1.Y0(x50.p0(new String[]{string2, name}), ": ", null, null, null, 62);
        if (z && (configSettings = config.getConfigSettings()) != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = configSettings.iterator();
            while (it.hasNext()) {
                ConfigSettings.ApplyData applyData = ((ConfigSettings) it.next()).getApplyData();
                Set<LabelParams> labels = applyData != null ? applyData.getLabels() : null;
                if (labels == null) {
                    labels = sv2.a;
                }
                el1.K0(labels, arrayList);
            }
            setZ1 = el1.z1(arrayList);
        }
        return new vq(string, strY0, setZ1);
    }
}
