package com.bare.blacklist.repository;

import android.content.Context;
import android.content.SharedPreferences;

import com.bare.blacklist.data.BlacklistApp;
import com.bare.blacklist.data.BlacklistData;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Local F123 owner.
 *
 * Reference persists the normalized BlacklistData aggregate under the
 * blacklist_data preference and indexes entries by package identity.
 * Cloud fetch/sync remains a separate downstream adapter boundary.
 */
public final class BlacklistRepository {
    public static final String PREF_KEY = "blacklist_data";

    private final SharedPreferences prefs;
    private BlacklistData cached;

    public BlacklistRepository(Context context) {
        if (context == null) throw new NullPointerException("context");
        prefs = context.getSharedPreferences(
                context.getPackageName() + "_preferences",
                Context.MODE_PRIVATE);
    }

    public synchronized BlacklistData load() {
        String encoded = prefs.getString(PREF_KEY, null);
        if (encoded == null || encoded.isEmpty()) {
            cached = new BlacklistData(null);
            return cached;
        }

        try {
            JSONArray entries = new JSONArray(encoded);
            Map<String, BlacklistApp> data = new LinkedHashMap<>();
            for (int i = 0; i < entries.length(); i++) {
                JSONObject item = entries.optJSONObject(i);
                if (item == null) continue;
                String name = item.optString("name", "");
                String packageName = item.optString("packageName", "");
                if (packageName.isEmpty()) continue;
                int type = item.optInt("blackListType", BlacklistApp.HIDE);
                data.put(packageName, new BlacklistApp(name, packageName, type));
            }
            cached = new BlacklistData(data);
        } catch (Exception ignored) {
            cached = new BlacklistData(null);
        }
        return cached;
    }

    public synchronized void save(BlacklistData data) {
        if (data == null) throw new NullPointerException("data");

        JSONArray entries = new JSONArray();
        for (BlacklistApp item : data.getItems()) {
            JSONObject json = new JSONObject();
            json.put("name", item.getName());
            json.put("packageName", item.getPackageName());
            json.put("blackListType", item.getBlackListType());
            entries.put(json);
        }

        prefs.edit().putString(PREF_KEY, entries.toString()).apply();
        cached = new BlacklistData(data.getDataMap());
    }

    public synchronized BlacklistData getCached() {
        return cached == null ? load() : new BlacklistData(cached.getDataMap());
    }

    public synchronized boolean matches(String packageName, int blacklistType) {
        if (packageName == null) return false;
        BlacklistApp item = getCached().get(packageName);
        return item != null && item.getBlackListType() == blacklistType;
    }

    public synchronized boolean isHidden(String packageName) {
        return matches(packageName, BlacklistApp.HIDE);
    }

    public synchronized boolean suppressesData(String packageName) {
        return matches(packageName, BlacklistApp.NO_DATA);
    }

    public synchronized void remove(String packageName) {
        BlacklistData data = getCached();
        data.remove(packageName);
        save(data);
    }

    public synchronized void clear() {
        save(new BlacklistData(null));
    }
}
