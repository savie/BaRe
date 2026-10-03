package com.bare.appslist.labels;

import java.util.LinkedHashMap;
import java.util.Map;

/** Local implementation of the labels snapshot boundary. */
public final class LocalLabelsRepository implements LabelsRepository {
    private LabelsData data = new LabelsData(null, null);

    @Override
    public synchronized LabelsData load() {
        return new LabelsData(
                new LinkedHashMap<>(data.labelParamsMap),
                new LinkedHashMap<>(data.labelledAppsMap)
        );
    }

    @Override
    public synchronized void save(LabelsData value) {
        if (value == null) throw new IllegalArgumentException("data");
        Map<String, LabelParams> labels = new LinkedHashMap<>();
        for (Map.Entry<String, LabelParams> entry : value.labelParamsMap.entrySet()) {
            LabelParams label = entry.getValue();
            if (label != null && label.isValid()) labels.put(entry.getKey(), label);
        }

        Map<String, LabelledApp> apps = new LinkedHashMap<>();
        for (Map.Entry<String, LabelledApp> entry : value.labelledAppsMap.entrySet()) {
            LabelledApp app = entry.getValue();
            if (app == null || !app.isValid() || app.labelIds.isEmpty()) continue;
            apps.put(entry.getKey(), app);
        }

        data = new LabelsData(labels, apps);
    }

    @Override
    public synchronized void clear() {
        data = new LabelsData(null, null);
    }
}
