package com.bare.home.storageswitch;

import java.io.File;

/**
 * Reference storage-footprint projection used by the storage-switch preflight.
 *
 * A negative value means the footprint could not be measured and must not be
 * treated as zero.
 */
public final class StorageBackupFootprint {
    private StorageBackupFootprint() {
    }

    public static long measure(File storageRoot) {
        if (storageRoot == null) return -1L;
        if (!storageRoot.exists()) return 0L;
        if (!storageRoot.canRead()) return -1L;
        return sizeOf(storageRoot);
    }

    private static long sizeOf(File file) {
        if (file.isFile()) return Math.max(file.length(), 0L);

        File[] children = file.listFiles();
        if (children == null) return -1L;

        long total = 0L;
        for (File child : children) {
            long size = sizeOf(child);
            if (size < 0L || Long.MAX_VALUE - total < size) return -1L;
            total += size;
        }
        return total;
    }
}
