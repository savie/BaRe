package defpackage;

import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lr4 {
    public static boolean b;
    public static kr4 d;
    public static LabelsData e;
    public static Set h;
    public static final lr4 a = new lr4();
    public static final gv7 c = new gv7(new jx(12));
    public static final gv7 f = new gv7(new b7(20));
    public static final gv7 g = new gv7(new ov(10));

    public static LabelParams c(String str) {
        Map<String, LabelParams> labelParamsMap;
        LabelParams.Companion.getClass();
        Object obj = null;
        if (!hr4.c(str)) {
            LabelsData labelsData = e;
            if (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null) {
                return null;
            }
            return labelParamsMap.get(str);
        }
        for (Object obj2 : (ArrayList) hr4.a()) {
            if (pe4.d(((LabelParams) obj2).getId(), str)) {
                obj = obj2;
                break;
            }
        }
        return (LabelParams) obj;
    }

    public static Set d(String str) {
        Map<String, LabelledApp> labelledAppsMap;
        LabelledApp labelledApp;
        str.getClass();
        LabelsData labelsData = e;
        if (labelsData == null || (labelledAppsMap = labelsData.getLabelledAppsMap()) == null || (labelledApp = labelledAppsMap.get(str)) == null) {
            return null;
        }
        return labelledApp.getLabelParams();
    }

    public static Set e(String str) {
        str.getClass();
        g00 g00Var = g00.a;
        return d(uq7.T(str, ".", ""));
    }

    public static Set f() {
        Set set = h;
        if (set == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (h((String) obj)) {
                arrayList.add(obj);
            }
        }
        return el1.z1(arrayList);
    }

    public static boolean g() {
        LabelsData labelsData = e;
        Map<String, LabelParams> labelParamsMap = labelsData != null ? labelsData.getLabelParamsMap() : null;
        return !(labelParamsMap == null || labelParamsMap.isEmpty());
    }

    public static boolean h(String str) {
        Map<String, LabelParams> labelParamsMap;
        Collection<LabelParams> collectionValues;
        if (str == null || str.length() == 0) {
            return false;
        }
        LabelParams.Companion.getClass();
        if (hr4.c(str)) {
            return true;
        }
        LabelsData labelsData = e;
        if (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null || (collectionValues = labelParamsMap.values()) == null || collectionValues.isEmpty()) {
            return false;
        }
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(((LabelParams) it.next()).getId())) {
                return true;
            }
        }
        return false;
    }

    public static void i() {
        Iterator it = kz4.g.c.a().iterator();
        while (it.hasNext()) {
            j(((ji) it.next()).getPackageName());
        }
        Iterator it2 = ua1.g.c.a().iterator();
        while (it2.hasNext()) {
            j(((ji) it2.next()).getPackageName());
        }
    }

    public static void j(String str) {
        kz4 kz4Var = kz4.g;
        ji jiVar = (ji) kz4Var.b(str);
        if (jiVar != null) {
            kz4Var.k(ji.copy$default(jiVar, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, e(jiVar.getPackageName()), null, 100663295, null));
        }
        ua1 ua1Var = ua1.g;
        ji jiVar2 = (ji) ua1Var.b(str);
        if (jiVar2 != null) {
            ua1Var.k(ji.copy$default(jiVar2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, null, null, null, false, null, false, e(jiVar2.getPackageName()), null, 100663295, null));
        }
        w13.q(lr4.class, str);
    }

    public static void k(List list) {
        LabelsData labelsDataCopy$default;
        Set setZ1;
        Map<String, LabelledApp> labelledAppsMap;
        if (V.INSTANCE.getA()) {
            LabelsData labelsData = e;
            LinkedHashMap linkedHashMap = (labelsData == null || (labelledAppsMap = labelsData.getLabelledAppsMap()) == null) ? new LinkedHashMap() : new LinkedHashMap(labelledAppsMap);
            Iterator it = list.iterator();
            while (true) {
                LabelledApp labelledApp = null;
                if (!it.hasNext()) {
                    break;
                }
                pw5 pw5Var = (pw5) it.next();
                ji jiVar = (ji) pw5Var.a;
                Set set = (Set) pw5Var.b;
                LabelledApp.Companion.getClass();
                jiVar.getClass();
                if (set != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = set.iterator();
                    while (it2.hasNext()) {
                        String id = ((LabelParams) it2.next()).getId();
                        if (id != null) {
                            arrayList.add(id);
                        }
                    }
                    setZ1 = el1.z1(arrayList);
                } else {
                    setZ1 = null;
                }
                if (setZ1 != null && !setZ1.isEmpty()) {
                    labelledApp = new LabelledApp(jiVar.getPackageName(), jiVar.getName(), el1.v1(setZ1));
                }
                if (labelledApp == null) {
                    linkedHashMap.remove(jiVar.getAppId());
                } else {
                    linkedHashMap.put(jiVar.getAppId(), labelledApp);
                }
            }
            LabelsData labelsData2 = e;
            if (labelsData2 == null || (labelsDataCopy$default = LabelsData.copy$default(labelsData2, null, linkedHashMap, 1, null)) == null) {
                return;
            }
            zn4.c(new bk(labelsDataCopy$default, 27));
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                j(((ji) ((pw5) it3.next()).a).getPackageName());
            }
        }
    }

    public final synchronized void a() {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            throw new IllegalThreadStateException("Method called from main thread");
        }
        try {
            gv7 gv7Var = g;
            if (((q63) gv7Var.getValue()).j()) {
                gv7 gv7Var2 = w14.a;
                l((LabelsData) w14.b((q63) gv7Var.getValue(), LabelsData.class, true));
            }
        } catch (Exception e2) {
            vr6.de$default(vr6.INSTANCE, "LabelRepo", io4.b(e2), null, 4, null);
        }
    }

    public final boolean b() {
        Log.d("LabelRepo", "Fetching on demand");
        ai8.b();
        if (!ai8.h()) {
            vr6.i$default(vr6.INSTANCE, "LabelRepo", "Internet not available, fetching from cache", null, 4, null);
            a();
            return true;
        }
        l73 l73VarA = cf3.a((zc2) c.getValue(), true);
        if (l73VarA instanceof xe3) {
            LabelsData labelsData = (LabelsData) ((xe3) l73VarA).n.c(LabelsData.class);
            l(labelsData);
            zn4.c(new d76(labelsData, "fetchFromLocalOrCloud"));
            return true;
        }
        if (!(l73VarA instanceof we3)) {
            q.j();
            return false;
        }
        vr6 vr6Var = vr6.INSTANCE;
        String str = ((we3) l73VarA).n.b;
        str.getClass();
        vr6.e$default(vr6Var, "LabelRepo", str, null, 4, null);
        return false;
    }

    public final synchronized void l(LabelsData labelsData) {
        LabelsData labelsDataCopy$default = null;
        if (labelsData != null) {
            try {
                labelsDataCopy$default = LabelsData.copy$default(labelsData, null, null, 3, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        e = labelsDataCopy$default;
        ((ex6) f.getValue()).k(e);
        ny2.b().e(new vr4());
    }
}
