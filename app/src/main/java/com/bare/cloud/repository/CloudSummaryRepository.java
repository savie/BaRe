package com.bare.cloud.repository;

/** Reference Home cloud summary aggregate derived from apps/folders/count nodes. */
public interface CloudSummaryRepository {
    CloudSummary load(String cloudTag);

    final class CloudSummary {
        public final int validAppCount;
        public final long totalAppBackupSize;
        public final int smsBackupCount;
        public final int callLogBackupCount;
        public final int validFolderCount;

        public CloudSummary(int validAppCount, long totalAppBackupSize, int smsBackupCount,
                            int callLogBackupCount, int validFolderCount) {
            this.validAppCount = validAppCount;
            this.totalAppBackupSize = totalAppBackupSize;
            this.smsBackupCount = smsBackupCount;
            this.callLogBackupCount = callLogBackupCount;
            this.validFolderCount = validFolderCount;
        }
    }
}
