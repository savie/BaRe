package com.bare.appslist.labels;

import android.content.Context;
import android.content.SharedPreferences;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Local implementation of the labels snapshot boundary. */
public final class LocalLabelsRepository implements LabelsRepository {
    private static final String PREFS = "bare_labels";
    private static final String KEY_DATA = "labels_data";
    private final SharedPreferences prefs;

    public LocalLabelsRepository(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    @Override
    public synchronized LabelsData load() {
        String raw = prefs.getString(KEY_DATA, null);
        if (raw == null || raw.isEmpty()) return new LabelsData(null, null);
        try {
            JSONObject root = new JSONObject(raw);
            Map<String, LabelParams> labels = new LinkedHashMap<>();
            JSONArray labelArray = root.optJSONArray("labels");
            if (labelArray != null) for (int i = 0; i < labelArray.length(); i++) {
                JSONObject value = labelArray.optJSONObject(i);
                if (value == null) continue;
                LabelParams label = new LabelParams(
                        value.optString("id", ""),
                        value.optString("name", ""),
                        value.optString("color", null));
                if (label.isValid()) labels.put(label.id, label);
            }

            Map<String, LabelledApp> apps = new LinkedHashMap<>();
            JSONArray appArray = root.optJSONArray("apps");
            if (appArray != null) for (int i = 0; i < appArray.length(); i++) {
                JSONObject value = appArray.optJSONObject(i);
                if (value == null) continue;
                String packageName = value.optString("packageName", "");
                List<String> ids = new ArrayList<>();
                JSONArray idArray = value.optJSONArray("labelIds");
                if (idArray != null) for (int j = 0; j < idArray.length(); j++) {
                    String id = idArray.optString(j, "");
                    if (!id.isEmpty() && labels.containsKey(id)) ids.add(id);
                }
                LabelledApp app = new LabelledApp(
                        packageName, value.optString("name", ""), ids);
                if (app.isValid() && !app.labelIds.isEmpty()) apps.put(packageName, app);
            }
            return new LabelsData(labels, apps);
        } catch (Exception ignored) {
            return new LabelsData(null, null);
        }
    }

    @Override
    public synchronized void save(LabelsData value) {
        if (value == null) throw new IllegalArgumentException("data");
        Map<String, LabelParams> labels = new LinkedHashMap<>();
        for (Map.Entry<String, LabelParams> entry : value.labelParamsMap.entrySet()) {
            LabelParams label = entry.getValue();
            if (label != null && label.isValid()) labels.put(label.id, label);
        }

        Map<String, LabelledApp> apps = new LinkedHashMap<>();
        for (Map.Entry<String, LabelledApp> entry : value.labelledAppsMap.entrySet()) {
            LabelledApp app = entry.getValue();
            if (app == null || !app.isValid() || app.labelIds.isEmpty()) continue;
            List<String> validIds = new ArrayList<>();
            for (String id : app.labelIds) if (labels.containsKey(id)) validIds.add(id);
            if (!validIds.isEmpty()) apps.put(app.packageName,
                    new LabelledApp(app.packageName, app.name, validIds));
        }

        try {
            JSONArray labelArray = new JSONArray();
            for (LabelParams label : labels.values()) {
                labelArray.put(new JSONObject()
                        .put("id", label.id)
                        .put("name", label.name)
                        .put("color", label.color));
            }
            JSONArray appArray = new JSONArray();
            for (LabelledApp app : apps.values()) {
                JSONArray ids = new JSONArray();
                for (String id : app.labelIds) ids.put(id);
                appArray.put(new JSONObject()
                        .put("packageName", app.packageName)
                        .put("name", app.name)
                        .put("labelIds", ids));
            }
            prefs.edit().putString(KEY_DATA,
                    new JSONObject().put("labels", labelArray).put("apps", appArray).toString()).apply();
        } catch (Exception e) {
            throw new IllegalStateException("labels serialization failed", e);
        }
    }

    @Override
    public synchronized void clear() {
        prefs.edit().remove(KEY_DATA).apply();
    }
}
