package com.bare.storage;

/** Selected storage state derived from inventory plus persisted preferred_storage_dir. */
public final class StorageSelection {
    public final StorageVolumeInfo selected;
    public final boolean fellBackToDefault;

    public StorageSelection(StorageVolumeInfo selected, boolean fellBackToDefault) {
        if (selected == null) throw new NullPointerException("selected");
        this.selected = selected;
        this.fellBackToDefault = fellBackToDefault;
    }
}
