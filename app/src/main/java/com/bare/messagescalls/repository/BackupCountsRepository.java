package com.bare.messagescalls.repository;

/** Reference counts stored below tags/{cloudTag}. */
public interface BackupCountsRepository {
    BackupCounts load(String cloudTag);

    final class BackupCounts {
        public final int smsBackupsCount;
        public final int callLogBackupsCount;
        public BackupCounts(int smsBackupsCount, int callLogBackupsCount) {
            this.smsBackupsCount = smsBackupsCount;
            this.callLogBackupsCount = callLogBackupsCount;
        }
    }
}
