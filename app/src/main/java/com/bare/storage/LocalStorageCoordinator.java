package com.bare.storage;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.Collections;
import java.util.List;

/**
 * Local owner for the Reference preferred_storage_dir state.
 *
 * Inventory is deliberately supplied by a separate adapter; this class only
 * owns persistence and deterministic selection/fallback semantics.
 */
public final class LocalStorageCoordinator implements StorageCoordinator {
    private final SharedPreferences prefs;
    private final List<StorageVolumeInfo> volumes;

    public LocalStorageCoordinator(Context context, List<StorageVolumeInfo> volumes) {
        this.prefs = context.getSharedPreferences(
                context.getPackageName() + "_preferences",
                Context.MODE_PRIVATE);
        this.volumes = volumes == null ? Collections.emptyList() : volumes;
    }

    @Override
    public List<StorageVolumeInfo> listVolumes() {
        return volumes;
    }

    @Override
    public String readPreferredStorageDir() {
        return prefs.getString(KEY_PREFERRED_STORAGE_DIR, null);
    }

    @Override
    public void persistPreferredStorageDir(String rootPath) {
        prefs.edit().putString(KEY_PREFERRED_STORAGE_DIR, rootPath).commit();
    }

    @Override
    public StorageSelection resolveSelection() {
        StorageVolumeInfo fallback = null;
        String preferred = readPreferredStorageDir();

        for (StorageVolumeInfo volume : volumes) {
            if (fallback == null && volume.isValid()) {
                fallback = volume;
            }
            if (preferred != null
                    && preferred.equals(volume.rootPath)
                    && volume.isValid()) {
                return new StorageSelection(volume, false);
            }
        }

        if (fallback == null && !volumes.isEmpty()) {
            fallback = volumes.get(0);
        }

        if (fallback == null) {
            return null;
        }

        if (preferred != null && !preferred.equals(fallback.rootPath)) {
            persistPreferredStorageDir(fallback.rootPath);
        }

        return new StorageSelection(fallback, true);
    }
}
