package com.bare.folders.repository;

import android.content.Context;
import android.content.SharedPreferences;

import com.bare.folders.data.FolderItem;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/** Reference-shaped local FolderItem persistence owner. */
public final class LocalFolderSetupRepository {
    private static final String PREFS_SUFFIX = "_preferences";
    private static final String KEY = "bare_folder_setups_v1";

    private final SharedPreferences prefs;

    public LocalFolderSetupRepository(Context context) {
        Context app = context.getApplicationContext();
        prefs = app.getSharedPreferences(app.getPackageName() + PREFS_SUFFIX,
                Context.MODE_PRIVATE);
    }

    public synchronized List<FolderItem> list() {
        ArrayList<FolderItem> result = new ArrayList<>();
        String raw = prefs.getString(KEY, null);
        if (raw == null || raw.isEmpty()) return result;
        try {
            JSONArray array = new JSONArray(raw);
            for (int i = 0; i < array.length(); i++) {
                JSONObject o = array.optJSONObject(i);
                if (o == null) continue;
                FolderItem item = new FolderItem(
                        o.optString("id", ""),
                        o.optString("displayName", ""),
                        o.optString("sourceFolder", ""),
                        o.optLong("setupCreationTime", 0L));
                if (item.isValid()) result.add(item);
            }
        } catch (Exception ignored) {
        }
        result.sort(Comparator.comparingLong(FolderItem::getSetupCreationTime).reversed()
                .thenComparing(FolderItem::getDisplayName));
        return Collections.unmodifiableList(result);
    }

    public synchronized FolderItem find(String id) {
        if (id == null) return null;
        for (FolderItem item : list()) if (id.equals(item.getId())) return item;
        return null;
    }

    public synchronized void save(FolderItem item) {
        if (item == null || !item.isValid()) throw new IllegalArgumentException("Invalid folder item");
        ArrayList<FolderItem> items = new ArrayList<>(list());
        boolean replaced = false;
        for (int i = 0; i < items.size(); i++) {
            if (items.get(i).getId().equals(item.getId())) {
                items.set(i, item);
                replaced = true;
                break;
            }
        }
        if (!replaced) items.add(item);
        write(items);
    }

    public synchronized void remove(String id) {
        if (id == null) return;
        ArrayList<FolderItem> items = new ArrayList<>(list());
        items.removeIf(item -> id.equals(item.getId()));
        write(items);
    }

    private void write(List<FolderItem> items) {
        JSONArray array = new JSONArray();
        try {
            for (FolderItem item : items) {
                JSONObject o = new JSONObject();
                o.put("id", item.getId());
                o.put("displayName", item.getDisplayName());
                o.put("sourceFolder", item.getSourceFolder());
                o.put("setupCreationTime", item.getSetupCreationTime());
                array.put(o);
            }
        } catch (Exception e) {
            throw new IllegalStateException("Unable to serialize folder setups", e);
        }
        prefs.edit().putString(KEY, array.toString()).commit();
    }
}
