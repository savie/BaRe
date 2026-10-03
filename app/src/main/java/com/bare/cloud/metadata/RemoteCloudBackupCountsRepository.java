package com.bare.cloud.metadata;

/** Cloud-tag scoped remote boundary for derived backup counts. */
public interface RemoteCloudBackupCountsRepository {
    CloudBackupCounts load();
    void save(CloudBackupCounts counts);
}
