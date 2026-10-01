package com.bare.core.model;

/** Reference StorageInfoLocal contract: Loading, Error, or Success. */
public final class StorageInfo {
    public enum Status {
        LOADING,
        ERROR,
        SUCCESS
    }

    public final Status status;
    public final long totalMemory;
    public final long usedMemory;
    public final int usedPercent;
    public final long appUsage;
    public final float appUsagePercent;

    private StorageInfo(Status status, long totalMemory, long usedMemory, int usedPercent,
                        long appUsage, float appUsagePercent) {
        this.status = status;
        this.totalMemory = totalMemory;
        this.usedMemory = usedMemory;
        this.usedPercent = usedPercent;
        this.appUsage = appUsage;
        this.appUsagePercent = appUsagePercent;
    }

    public static StorageInfo loading() {
        return new StorageInfo(Status.LOADING, 0L, 0L, 0, 0L, 0.0f);
    }

    public static StorageInfo error() {
        return new StorageInfo(Status.ERROR, 0L, 0L, 0, 0L, 0.0f);
    }

    public static StorageInfo success(long totalMemory, long usedMemory, int usedPercent,
                                      long appUsage, float appUsagePercent) {
        return new StorageInfo(Status.SUCCESS, totalMemory, usedMemory, usedPercent,
                appUsage, appUsagePercent);
    }
}
