package com.bare.messagescalls.repository;

/** Reference SMS/call-log backup count nodes below tags/{cloudTag}. */
public interface BackupCountsRepository {
    BackupCounts load(String cloudTag);
    void writeSmsCount(String cloudTag, Integer count);
    void writeCallLogCount(String cloudTag, Integer count);

    final class BackupCounts {
        public final Integer smsBackupsCount;
        public final Integer callLogBackupsCount;
        public BackupCounts(Integer smsBackupsCount, Integer callLogBackupsCount) {
            this.smsBackupsCount = smsBackupsCount;
            this.callLogBackupsCount = callLogBackupsCount;
        }
    }
}
