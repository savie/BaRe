package org.swiftapps.swiftbackup.appslist.ui.labels;

import defpackage.jz2;
import defpackage.pe4;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class LabelsData {
    private final Map<String, LabelParams> labelParamsMap;
    private final Map<String, LabelledApp> labelledAppsMap;

    public /* synthetic */ LabelsData(Map map, Map map2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : map, (i & 2) != 0 ? null : map2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LabelsData copy$default(LabelsData labelsData, Map map, Map map2, int i, Object obj) {
        if ((i & 1) != 0) {
            map = labelsData.labelParamsMap;
        }
        if ((i & 2) != 0) {
            map2 = labelsData.labelledAppsMap;
        }
        return labelsData.copy(map, map2);
    }

    public final Map<String, LabelParams> component1() {
        return this.labelParamsMap;
    }

    public final Map<String, LabelledApp> component2() {
        return this.labelledAppsMap;
    }

    public final LabelsData copy(Map<String, LabelParams> map, Map<String, LabelledApp> map2) {
        return new LabelsData(map, map2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LabelsData)) {
            return false;
        }
        LabelsData labelsData = (LabelsData) obj;
        return pe4.d(this.labelParamsMap, labelsData.labelParamsMap) && pe4.d(this.labelledAppsMap, labelsData.labelledAppsMap);
    }

    public final Map<String, LabelParams> getLabelParamsMap() {
        return this.labelParamsMap;
    }

    public final Map<String, LabelledApp> getLabelledAppsMap() {
        return this.labelledAppsMap;
    }

    public int hashCode() {
        Map<String, LabelParams> map = this.labelParamsMap;
        int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
        Map<String, LabelledApp> map2 = this.labelledAppsMap;
        return iHashCode + (map2 != null ? map2.hashCode() : 0);
    }

    @jz2
    public String toString() {
        Map<String, LabelParams> map = this.labelParamsMap;
        Integer numValueOf = map != null ? Integer.valueOf(map.size()) : null;
        Map<String, LabelledApp> map2 = this.labelledAppsMap;
        return "LabelsData(labels=" + numValueOf + ", labelled apps=" + (map2 != null ? Integer.valueOf(map2.size()) : null) + ")";
    }

    public LabelsData(Map<String, LabelParams> map, Map<String, LabelledApp> map2) {
        this.labelParamsMap = map;
        this.labelledAppsMap = map2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LabelsData() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
