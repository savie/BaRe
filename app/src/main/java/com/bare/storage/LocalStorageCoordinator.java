package com.bare.storage;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.Collections;
import java.util.List;

/**
 * Canonical local owner for Reference preferred_storage_dir state and selection.
 *
 * Inventory is supplied by the storage adapter; persistence/fallback remains
 * provider-neutral and deterministic.
 */
public final class LocalStorageCoordinator implements StorageCoordinator {
    private final SharedPreferences prefs;
    private final StorageInventory inventory;

    public LocalStorageCoordinator(Context context, StorageInventory inventory) {
        this.prefs = context.getSharedPreferences(
                context.getPackageName() + "_preferences",
                Context.MODE_PRIVATE);
        this.inventory = inventory;
    }

    @Override
    public List<StorageVolumeInfo> listVolumes() {
        if (inventory == null) return Collections.emptyList();
        List<StorageVolumeInfo> volumes = inventory.listVolumes();
        return volumes == null ? Collections.emptyList() : volumes;
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
        List<StorageVolumeInfo> volumes = listVolumes();
        StorageVolumeInfo defaultVolume = null;
        String preferred = readPreferredStorageDir();

        for (StorageVolumeInfo volume : volumes) {
            if (defaultVolume == null && volume.isValid()) {
                defaultVolume = volume;
            }
            if (preferred != null
                    && preferred.equals(volume.rootPath)
                    && volume.isValid()) {
                return new StorageSelection(volume, false);
            }
        }

        if (defaultVolume == null) {
            return null;
        }

        if (preferred != null && !preferred.equals(defaultVolume.rootPath)) {
            persistPreferredStorageDir(defaultVolume.rootPath);
        }

        return new StorageSelection(defaultVolume, true);
    }
}
