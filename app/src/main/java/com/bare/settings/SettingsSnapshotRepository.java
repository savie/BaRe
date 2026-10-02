package com.bare.settings;

import android.content.Context;

import com.bare.appslist.data.FavoriteApp;
import com.bare.appslist.data.FavoriteAppsRepository;
import com.bare.blacklist.data.BlacklistApp;
import com.bare.blacklist.data.BlacklistData;
import com.bare.blacklist.repository.BlacklistRepository;
import com.bare.core.state.LocalState;
import com.bare.settings.model.AppSettings;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public final class SettingsSnapshotRepository {
    private final SettingsRepository settingsRepository;
    private final FavoriteAppsRepository favoritesRepository;
    private final BlacklistRepository blacklistRepository;

    public SettingsSnapshotRepository(Context context) {
        LocalState localState = new LocalState(context);
        settingsRepository = new SettingsRepository(localState);
        favoritesRepository = new FavoriteAppsRepository(context);
        blacklistRepository = new BlacklistRepository(context);
    }

    /**
     * Reference-shaped settings snapshot containing the target-owned local
     * settings plus Favorites and Blacklist aggregates.
     */
    public String exportSnapshot() {
        JSONObject root = new JSONObject();
        try {
            AppSettings settings = settingsRepository.read();
            root.put("play_notification_sounds",
                    settings.isPlayNotificationSounds() != null
                            && settings.isPlayNotificationSounds());

            JSONArray favorites = new JSONArray();
            for (FavoriteApp item : favoritesRepository.loadLocal().values()) {
                JSONObject value = new JSONObject();
                value.put("packageName", item.getPackageName());
                value.put("name", item.getName());
                favorites.put(value);
            }
            root.put("favorites", favorites);

            JSONArray blacklist = new JSONArray();
            for (BlacklistApp item : blacklistRepository.load().getItems()) {
                JSONObject value = new JSONObject();
                value.put("name", item.getName());
                value.put("packageName", item.getPackageName());
                value.put("blackListType", item.getBlackListType());
                blacklist.put(value);
            }
            root.put("blacklist", blacklist);
            return root.toString();
        } catch (Exception e) {
            throw new IllegalStateException("Unable to export settings snapshot", e);
        }
    }

    public boolean restoreSnapshot(String serialized) {
        if (serialized == null || serialized.isEmpty()) return false;

        try {
            JSONObject root = new JSONObject(serialized);

            if (root.has("play_notification_sounds")) {
                settingsRepository.setPlayNotificationSounds(
                        root.optBoolean("play_notification_sounds", true));
            }

            List<FavoriteApp> favorites = new ArrayList<>();
            JSONArray favoriteArray = root.optJSONArray("favorites");
            if (favoriteArray != null) {
                for (int i = 0; i < favoriteArray.length(); i++) {
                    JSONObject value = favoriteArray.optJSONObject(i);
                    if (value == null) continue;
                    String packageName = value.optString("packageName", "");
                    String name = value.optString("name", "");
                    if (!packageName.isEmpty()) {
                        favorites.add(new FavoriteApp(packageName, name));
                    }
                }
            }
            favoritesRepository.replaceAll(favorites);

            java.util.LinkedHashMap<String, BlacklistApp> blacklist = new java.util.LinkedHashMap<>();
            JSONArray blacklistArray = root.optJSONArray("blacklist");
            if (blacklistArray != null) {
                for (int i = 0; i < blacklistArray.length(); i++) {
                    JSONObject value = blacklistArray.optJSONObject(i);
                    if (value == null) continue;
                    String packageName = value.optString("packageName", "");
                    if (packageName.isEmpty()) continue;
                    blacklist.put(packageName, new BlacklistApp(
                            value.optString("name", ""),
                            packageName,
                            value.optInt("blackListType", BlacklistApp.HIDE)));
                }
            }
            blacklistRepository.save(new BlacklistData(blacklist));
            return true;
        } catch (Exception ignored) {
            return false;
        }
    }
}
