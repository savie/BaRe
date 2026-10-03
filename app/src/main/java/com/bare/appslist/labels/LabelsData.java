package com.bare.appslist.labels;

import java.util.LinkedHashMap;
import java.util.Map;

/** Full persisted labels snapshot: definitions plus app assignments. */
public final class LabelsData {
    public final Map<String, LabelParams> labelParamsMap;
    public final Map<String, LabelledApp> labelledAppsMap;

    public LabelsData(Map<String, LabelParams> labelParamsMap,
                      Map<String, LabelledApp> labelledAppsMap) {
        this.labelParamsMap = labelParamsMap == null
                ? new LinkedHashMap<String, LabelParams>()
                : new LinkedHashMap<>(labelParamsMap);
        this.labelledAppsMap = labelledAppsMap == null
                ? new LinkedHashMap<String, LabelledApp>()
                : new LinkedHashMap<>(labelledAppsMap);
    }

    public boolean isEmpty() {
        return labelParamsMap.isEmpty() && labelledAppsMap.isEmpty();
    }
}
