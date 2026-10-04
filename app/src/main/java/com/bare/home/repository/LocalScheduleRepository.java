package com.bare.home.repository;

import android.content.Context;
import android.content.SharedPreferences;

import org.json.JSONArray;
import org.json.JSONObject;

/** Local persistence for schedule configuration; backup execution remains a service boundary. */
public final class LocalScheduleRepository implements ScheduleRepository {
    private static final String PREFS = "bare_schedule";
    private static final String KEY_SNAPSHOT = "schedule_snapshot_v2";
    private final SharedPreferences prefs;

    public LocalScheduleRepository(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    @Override public ScheduleState load() {
        ScheduleState state = new ScheduleState();
        String snapshot = prefs.getString(KEY_SNAPSHOT, null);
        if (snapshot != null && !snapshot.isEmpty()) {
            try {
                readSnapshot(state, new JSONObject(snapshot));
                return state;
            } catch (Exception ignored) {
                // Fall through to the pre-P6.3 scalar/list keys for backward compatibility.
            }
        }

        state.startHour = prefs.getInt("start_hour", 3);
        state.startMinute = prefs.getInt("start_minute", 0);
        state.batteryRequirement = prefs.getInt("battery_requirement", 0);
        state.batteryPercentRequirement = prefs.getInt("battery_percent_requirement", 50);
        state.enabled = prefs.getBoolean("enabled", false);
        state.globalError = prefs.getString("global_error", null);
        loadList(state.appsQuickActionIds, "apps_quick_actions");
        loadList(state.appsLabelIds, "apps_labels");
        loadList(state.appConfigIds, "app_configs");
        loadList(state.messageIds, "messages");
        loadList(state.callLogIds, "call_logs");
        loadList(state.wallIds, "walls");
        loadList(state.wifiIds, "wifi");
        loadList(state.folderIds, "folders");
        loadList(state.orderIds, "order_ids");
        return state;
    }

    @Override public void save(ScheduleState state) {
        if (state == null) return;
        JSONObject root = new JSONObject();
        try {
            root.put("startHour", state.startHour);
            root.put("startMinute", state.startMinute);
            root.put("batteryRequirement", state.batteryRequirement);
            root.put("batteryPercentRequirement", state.batteryPercentRequirement);
            root.put("enabled", state.enabled);
            if (state.globalError == null) root.put("globalError", JSONObject.NULL);
            else root.put("globalError", state.globalError);
            root.put("orderIds", toArray(state.orderIds));
            root.put("appsQuickActionIds", toArray(state.appsQuickActionIds));
            root.put("appsLabelIds", toArray(state.appsLabelIds));
            root.put("appConfigIds", toArray(state.appConfigIds));
            root.put("messageIds", toArray(state.messageIds));
            root.put("callLogIds", toArray(state.callLogIds));
            root.put("wallIds", toArray(state.wallIds));
            root.put("wifiIds", toArray(state.wifiIds));
            root.put("folderIds", toArray(state.folderIds));

            JSONArray items = new JSONArray();
            for (ScheduleState.ScheduleItemState item : state.items) {
                if (item == null) continue;
                JSONObject value = new JSONObject();
                putNullable(value, "id", item.id);
                putNullable(value, "type", item.type);
                putNullable(value, "repeatDays", item.repeatDays);
                value.put("enabled", item.enabled);
                putNullable(value, "locations", item.locations);
                putNullable(value, "syncOption", item.syncOption);
                putNullable(value, "configId", item.configId);
                putNullable(value, "appParts", item.appParts);
                putNullable(value, "labelIds", item.labelIds);
                putNullable(value, "quickActionIntIds", item.quickActionIntIds);
                putNullable(value, "allowedApps", item.allowedApps);
                value.put("backupAllFolders", item.backupAllFolders);
                putNullable(value, "backupStrategy", item.backupStrategy);
                JSONArray folders = new JSONArray();
                for (ScheduleState.FolderItemState folder : item.folderItems) {
                    if (folder == null) continue;
                    JSONObject fv = new JSONObject();
                    putNullable(fv, "id", folder.id);
                    putNullable(fv, "displayName", folder.displayName);
                    putNullable(fv, "sourceFolder", folder.sourceFolder);
                    fv.put("setupCreationTime", folder.setupCreationTime);
                    folders.put(fv);
                }
                value.put("folderItems", folders);
                items.put(value);
            }
            root.put("items", items);
            prefs.edit()
                    .putString(KEY_SNAPSHOT, root.toString())
                    .putInt("start_hour", state.startHour)
                    .putInt("start_minute", state.startMinute)
                    .putInt("battery_requirement", state.batteryRequirement)
                    .putInt("battery_percent_requirement", state.batteryPercentRequirement)
                    .putBoolean("enabled", state.enabled)
                    .putString("global_error", state.globalError)
                    .putString("apps_quick_actions", join(state.appsQuickActionIds))
                    .putString("apps_labels", join(state.appsLabelIds))
                    .putString("app_configs", join(state.appConfigIds))
                    .putString("messages", join(state.messageIds))
                    .putString("call_logs", join(state.callLogIds))
                    .putString("walls", join(state.wallIds))
                    .putString("wifi", join(state.wifiIds))
                    .putString("folders", join(state.folderIds))
                    .putString("order_ids", join(state.orderIds))
                    .apply();
        } catch (Exception ignored) {
            // Keep the legacy scalar/list persistence path usable even if snapshot encoding fails.
            prefs.edit()
                    .putInt("start_hour", state.startHour)
                    .putInt("start_minute", state.startMinute)
                    .putInt("battery_requirement", state.batteryRequirement)
                    .putInt("battery_percent_requirement", state.batteryPercentRequirement)
                    .putBoolean("enabled", state.enabled)
                    .putString("global_error", state.globalError)
                    .apply();
        }
    }

    private void readSnapshot(ScheduleState state, JSONObject root) throws Exception {
        state.startHour = root.optInt("startHour", 3);
        state.startMinute = root.optInt("startMinute", 0);
        state.batteryRequirement = root.optInt("batteryRequirement", 0);
        state.batteryPercentRequirement = root.optInt("batteryPercentRequirement", 50);
        state.enabled = root.optBoolean("enabled", false);
        state.globalError = root.isNull("globalError") ? null : root.optString("globalError", null);
        readList(state.orderIds, root.optJSONArray("orderIds"));
        readList(state.appsQuickActionIds, root.optJSONArray("appsQuickActionIds"));
        readList(state.appsLabelIds, root.optJSONArray("appsLabelIds"));
        readList(state.appConfigIds, root.optJSONArray("appConfigIds"));
        readList(state.messageIds, root.optJSONArray("messageIds"));
        readList(state.callLogIds, root.optJSONArray("callLogIds"));
        readList(state.wallIds, root.optJSONArray("wallIds"));
        readList(state.wifiIds, root.optJSONArray("wifiIds"));
        readList(state.folderIds, root.optJSONArray("folderIds"));

        JSONArray items = root.optJSONArray("items");
        if (items == null) return;
        for (int i = 0; i < items.length(); i++) {
            JSONObject value = items.optJSONObject(i);
            if (value == null) continue;
            ScheduleState.ScheduleItemState item = new ScheduleState.ScheduleItemState();
            item.id = optNullable(value, "id");
            item.type = optNullable(value, "type");
            item.repeatDays = optNullable(value, "repeatDays");
            item.enabled = value.optBoolean("enabled", true);
            item.locations = optNullable(value, "locations");
            item.syncOption = optNullable(value, "syncOption");
            item.configId = optNullable(value, "configId");
            item.appParts = optNullable(value, "appParts");
            item.labelIds = optNullable(value, "labelIds");
            item.quickActionIntIds = optNullable(value, "quickActionIntIds");
            item.allowedApps = optNullable(value, "allowedApps");
            item.backupAllFolders = value.optBoolean("backupAllFolders", false);
            item.backupStrategy = optNullable(value, "backupStrategy");
            JSONArray folders = value.optJSONArray("folderItems");
            if (folders != null) {
                for (int j = 0; j < folders.length(); j++) {
                    JSONObject fv = folders.optJSONObject(j);
                    if (fv == null) continue;
                    ScheduleState.FolderItemState folder = new ScheduleState.FolderItemState();
                    folder.id = optNullable(fv, "id");
                    folder.displayName = optNullable(fv, "displayName");
                    folder.sourceFolder = optNullable(fv, "sourceFolder");
                    folder.setupCreationTime = fv.optLong("setupCreationTime", 0L);
                    item.folderItems.add(folder);
                }
            }
            state.items.add(item);
        }
    }

    private JSONArray toArray(java.util.List<String> values) {
        JSONArray array = new JSONArray();
        if (values == null) return array;
        for (String value : values) {
            if (value != null && !value.isEmpty()) array.put(value);
        }
        return array;
    }

    private void readList(java.util.List<String> target, JSONArray values) {
        target.clear();
        if (values == null) return;
        for (int i = 0; i < values.length(); i++) {
            String value = values.optString(i, null);
            if (value != null && !value.isEmpty()) target.add(value);
        }
    }

    private void putNullable(JSONObject object, String key, String value) throws Exception {
        object.put(key, value == null ? JSONObject.NULL : value);
    }

    private String optNullable(JSONObject object, String key) {
        return object.isNull(key) ? null : object.optString(key, null);
    }

    private void loadList(java.util.List<String> target, String key) {
        target.clear();
        String raw = prefs.getString(key, "");
        if (raw == null || raw.isEmpty()) return;
        for (String value : raw.split("\\n")) {
            if (!value.isEmpty()) target.add(value);
        }
    }

    private String join(java.util.List<String> values) {
        StringBuilder out = new StringBuilder();
        if (values == null) return "";
        for (String value : values) {
            if (value == null || value.isEmpty() || value.indexOf('\\n') >= 0) continue;
            if (out.length() > 0) out.append('\\n');
            out.append(value);
        }
        return out.toString();
    }
}
