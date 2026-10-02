package com.bare.appslist.data;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class FavoriteAppsRepository {
    private static final String CACHE_DIRECTORY = "favorites";
    private static final String CACHE_FILE = "cached_favorites";

    private final File cacheFile;
    private final LinkedHashMap<String, FavoriteApp> cache = new LinkedHashMap<>();

    public FavoriteAppsRepository(Context context) {
        File directory = new File(context.getApplicationContext().getFilesDir(), CACHE_DIRECTORY);
        cacheFile = new File(directory, CACHE_FILE);
    }

    /**
     * Loads the local anonymous/cache representation. Authenticated cloud
     * load/mutation remains a downstream backend boundary.
     */
    public synchronized Map<String, FavoriteApp> loadLocal() {
        cache.clear();
        if (!cacheFile.isFile()) {
            return new LinkedHashMap<>(cache);
        }

        try (FileInputStream input = new FileInputStream(cacheFile)) {
            byte[] bytes = new byte[(int) cacheFile.length()];
            int count = input.read(bytes);
            if (count <= 0) {
                return new LinkedHashMap<>(cache);
            }

            JSONArray array = new JSONArray(new String(bytes, 0, count, StandardCharsets.UTF_8));
            for (int i = 0; i < array.length(); i++) {
                JSONObject item = array.optJSONObject(i);
                if (item == null) continue;
                String packageName = item.optString("packageName", "");
                String name = item.optString("name", "");
                if (!packageName.isEmpty()) {
                    cache.put(packageName, new FavoriteApp(packageName, name));
                }
            }
        } catch (Exception ignored) {
            cache.clear();
        }

        return new LinkedHashMap<>(cache);
    }

    public synchronized Map<String, FavoriteApp> setFavorite(FavoriteApp app) {
        if (app == null) throw new NullPointerException("app");

        if (cache.containsKey(app.getPackageName())) {
            cache.remove(app.getPackageName());
        } else {
            cache.put(app.getPackageName(), app);
        }
        persistLocal();
        return new LinkedHashMap<>(cache);
    }

    public synchronized List<FavoriteApp> getFavorites() {
        return new ArrayList<>(cache.values());
    }

    public synchronized boolean isFavorite(String packageName) {
        return packageName != null && cache.containsKey(packageName);
    }

    private void persistLocal() {
        File parent = cacheFile.getParentFile();
        if (parent != null && !parent.exists() && !parent.mkdirs() && !parent.isDirectory()) {
            return;
        }

        JSONArray array = new JSONArray();
        for (FavoriteApp app : cache.values()) {
            JSONObject item = new JSONObject();
            try {
                item.put("packageName", app.getPackageName());
                item.put("name", app.getName());
                array.put(item);
            } catch (Exception ignored) {
                // Keep the remaining cache entries serializable.
            }
        }

        try (FileOutputStream output = new FileOutputStream(cacheFile, false)) {
            output.write(array.toString().getBytes(StandardCharsets.UTF_8));
            output.flush();
        } catch (Exception ignored) {
            // Persistence failure must not fabricate cloud success.
        }
    }
}
