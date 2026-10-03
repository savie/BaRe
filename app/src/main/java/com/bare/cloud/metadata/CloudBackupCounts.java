package com.bare.cloud.metadata;

/** Cloud-tag-scoped derived SMS/call-log backup counts. */
public final class CloudBackupCounts {
    private final Integer smsBackupsCount;
    private final Integer callLogBackupsCount;

    public CloudBackupCounts(Integer smsBackupsCount, Integer callLogBackupsCount) {
        if (smsBackupsCount != null && smsBackupsCount < 0) throw new IllegalArgumentException("smsBackupsCount");
        if (callLogBackupsCount != null && callLogBackupsCount < 0) throw new IllegalArgumentException("callLogBackupsCount");
        this.smsBackupsCount = smsBackupsCount;
        this.callLogBackupsCount = callLogBackupsCount;
    }

    public Integer getSmsBackupsCount() { return smsBackupsCount; }
    public Integer getCallLogBackupsCount() { return callLogBackupsCount; }

    public static CloudBackupCounts fromLocalCounts(int smsCount, int callLogCount) {
        return new CloudBackupCounts(smsCount == 0 ? null : smsCount,
                callLogCount == 0 ? null : callLogCount);
    }
}
