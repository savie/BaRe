package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class jr4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public /* synthetic */ jr4(String str, int i) {
        this.a = i;
        this.b = str;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        LinkedHashMap linkedHashMap;
        Map<String, LabelledApp> labelledAppsMap;
        Collection<LabelledApp> collectionValues;
        Map<String, LabelParams> labelParamsMap;
        int i = this.a;
        String str = this.b;
        switch (i) {
            case 0:
                if (str != null && str.length() != 0) {
                    LabelsData labelsData = lr4.e;
                    LinkedHashMap linkedHashMap2 = null;
                    if (labelsData == null || (labelParamsMap = labelsData.getLabelParamsMap()) == null) {
                        linkedHashMap = null;
                    } else {
                        linkedHashMap = new LinkedHashMap();
                        for (Map.Entry<String, LabelParams> entry : labelParamsMap.entrySet()) {
                            if (!pe4.d(entry.getKey(), str)) {
                                linkedHashMap.put(entry.getKey(), entry.getValue());
                            }
                        }
                    }
                    LabelsData labelsData2 = lr4.e;
                    if (labelsData2 != null && (labelledAppsMap = labelsData2.getLabelledAppsMap()) != null && (collectionValues = labelledAppsMap.values()) != null) {
                        ArrayList arrayList = new ArrayList();
                        for (LabelledApp labelledAppCopy$default : collectionValues) {
                            if (labelledAppCopy$default.getLabelIds().contains(str)) {
                                labelledAppCopy$default = labelledAppCopy$default.hasLabels() ? LabelledApp.copy$default(labelledAppCopy$default, null, null, el1.e1(labelledAppCopy$default.getLabelIds(), str), 3, null) : null;
                            }
                            if (labelledAppCopy$default != null) {
                                arrayList.add(labelledAppCopy$default);
                            }
                        }
                        int iQ0 = x65.q0(hl1.G0(arrayList, 10));
                        if (iQ0 < 16) {
                            iQ0 = 16;
                        }
                        linkedHashMap2 = new LinkedHashMap(iQ0);
                        for (Object obj : arrayList) {
                            g00 g00Var = g00.a;
                            linkedHashMap2.put(g00.h(((LabelledApp) obj).getPackageName()), obj);
                        }
                    }
                    LabelsData labelsData3 = new LabelsData(linkedHashMap, linkedHashMap2);
                    lr4 lr4Var = lr4.a;
                    zn4.c(new bk(labelsData3, 27));
                    lr4.i();
                }
                return be8.a;
            default:
                g00 g00Var2 = g00.a;
                return g00.r().getPermissionInfo(str, 0);
        }
    }
}
