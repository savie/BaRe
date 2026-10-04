package com.bare.cloud.metadata;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Cloud-account-scoped tag metadata; child records remain separate contracts. */
public final class CloudBackupTag {
    private final String cloudTag;
    private final boolean userCreated;
    private final boolean toBeDeleted;
    private final List<String> cloudBackupsList;
    private final Integer smsBackupsCount;
    private final Integer callLogBackupsCount;

    public CloudBackupTag(String cloudTag, boolean userCreated, boolean toBeDeleted,
                          List<String> cloudBackupsList, Integer smsBackupsCount, Integer callLogBackupsCount) {
        if (cloudTag == null || cloudTag.isEmpty()) throw new IllegalArgumentException("cloudTag");
        if (smsBackupsCount != null && smsBackupsCount < 0) throw new IllegalArgumentException("smsBackupsCount");
        if (callLogBackupsCount != null && callLogBackupsCount < 0) throw new IllegalArgumentException("callLogBackupsCount");
        this.cloudTag = cloudTag;
        this.userCreated = userCreated;
        this.toBeDeleted = toBeDeleted;
        this.cloudBackupsList = cloudBackupsList == null
                ? new ArrayList<String>() : new ArrayList<>(cloudBackupsList);
        this.smsBackupsCount = smsBackupsCount;
        this.callLogBackupsCount = callLogBackupsCount;
    }

    public String getCloudTag() { return cloudTag; }
    public boolean isUserCreated() { return userCreated; }
    public boolean isToBeDeleted() { return toBeDeleted; }
    public List<String> getCloudBackupsList() {
        return Collections.unmodifiableList(cloudBackupsList);
    }
    public Integer getSmsBackupsCount() { return smsBackupsCount; }
    public Integer getCallLogBackupsCount() { return callLogBackupsCount; }
}
