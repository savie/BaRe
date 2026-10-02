package com.bare.settings.appbackuplimits;

public final class AppBackupLimitItem {
    public final String part;
    public final Long localLimitMBs;
    public final Long cloudLimitMBs;

    public AppBackupLimitItem() {
        this("data", null, null);
    }

    public AppBackupLimitItem(String part, Long localLimitMBs, Long cloudLimitMBs) {
        if (part == null) throw new IllegalArgumentException("part");
        this.part = part;
        this.localLimitMBs = localLimitMBs;
        this.cloudLimitMBs = cloudLimitMBs;
    }

    public long getLocalLimitBytes() {
        return localLimitMBs == null ? 0L : localLimitMBs * 1048576L;
    }

    public long getCloudLimitBytes() {
        return cloudLimitMBs == null ? 0L : cloudLimitMBs * 1048576L;
    }

    public boolean hasLimits() {
        return (localLimitMBs != null && localLimitMBs > 0)
                || (cloudLimitMBs != null && cloudLimitMBs > 0);
    }

    public String getItemId() { return part; }
}