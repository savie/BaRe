package com.bare.storage;

import java.util.List;

/**
 * Canonical storage boundary for volume inventory, preferred selection and fallback.
 *
 * Filesystem migration, privileged/root fallback and storage-engine execution
 * remain downstream of this contract.
 */
public interface StorageCoordinator {
    String KEY_PREFERRED_STORAGE_DIR = "preferred_storage_dir";

    List<StorageVolumeInfo> listVolumes();

    String readPreferredStorageDir();

    void persistPreferredStorageDir(String rootPath);

    StorageSelection resolveSelection();
}
