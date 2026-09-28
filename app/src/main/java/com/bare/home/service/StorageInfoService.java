package com.bare.home.service;

/** Local storage metrics contract matching Reference StorageInfoLocal.Success. */
public final class StorageInfoService {
    public StorageInfo read() {
        // Provider implementation belongs to the storage/runtime layer; no fake values are emitted.
        return null;
    }

    public static final class StorageInfo {
        public final long totalMemory;
        public final long usedMemory;
        public final int usedPercent;
        public final long appUsage;
        public final float appUsagePercent;

        public StorageInfo(long totalMemory, long usedMemory, int usedPercent,
                           long appUsage, float appUsagePercent) {
            this.totalMemory = totalMemory;
            this.usedMemory = usedMemory;
            this.usedPercent = usedPercent;
            this.appUsage = appUsage;
            this.appUsagePercent = appUsagePercent;
        }
    }
}
