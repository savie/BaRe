package defpackage;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelParams;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelledApp;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsData;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class gr4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ LabelParams b;

    public /* synthetic */ gr4(LabelParams labelParams, int i) {
        this.a = i;
        this.b = labelParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bt3
    public final Object invoke() {
        LabelsData labelsData;
        Collection<LabelledApp> collectionValues;
        Map<String, LabelParams> labelParamsMap;
        int i = this.a;
        LabelParams labelParams = this.b;
        switch (i) {
            case 0:
                return Double.valueOf(LabelParams.blackTextContrast_delegate$lambda$0(labelParams));
            default:
                lr4 lr4Var = lr4.a;
                if (V.INSTANCE.getA()) {
                    y13.z(labelParams, "LabelRepo.saveLabelParams");
                    LabelsData labelsData2 = lr4.e;
                    LinkedHashMap linkedHashMap = (labelsData2 == null || (labelParamsMap = labelsData2.getLabelParamsMap()) == null) ? new LinkedHashMap() : new LinkedHashMap(labelParamsMap);
                    String id = labelParams.getId();
                    id.getClass();
                    linkedHashMap.put(id, labelParams);
                    LabelsData labelsData3 = lr4.e;
                    int i2 = 2;
                    Map map = null;
                    Object[] objArr = 0;
                    if (labelsData3 == null || (labelsData = LabelsData.copy$default(labelsData3, linkedHashMap, null, 2, null)) == null) {
                        labelsData = new LabelsData(linkedHashMap, map, i2, objArr == true ? 1 : 0);
                    }
                    zn4.c(new bk(labelsData, 27));
                    Map<String, LabelledApp> labelledAppsMap = labelsData.getLabelledAppsMap();
                    if (labelledAppsMap != null && (collectionValues = labelledAppsMap.values()) != null) {
                        for (LabelledApp labelledApp : collectionValues) {
                            if (labelledApp.getLabelIds().contains(labelParams.getId())) {
                                lr4.j(labelledApp.getPackageName());
                            }
                        }
                    }
                }
                return be8.a;
        }
    }
}
