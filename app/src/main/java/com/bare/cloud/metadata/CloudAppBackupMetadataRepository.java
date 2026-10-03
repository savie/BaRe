package com.bare.cloud.metadata;

import java.util.List;

/** Provider-neutral owner for app-backup metadata; implementation may be local or remote. */
public interface CloudAppBackupMetadataRepository {
    List<CloudAppBackupMetadata> list(String packageName);
    CloudAppBackupMetadata get(String packageName, String backupId);
    void save(CloudAppBackupMetadata metadata);
    void remove(String packageName, String backupId);
}
