package com.bare.storage;

import java.util.List;

/** Source boundary for Reference storage-volume enumeration. */
public interface StorageInventory {
    List<StorageVolumeInfo> listVolumes();
}
