package com.bare.cloud;

import com.bare.cloud.metadata.CloudBackupTag;
import java.util.List;

/** Cloud-account/tag metadata boundary; provider artifacts remain external. */
public interface RemoteCloudBackupTagRepository {
    CloudBackupTag get(String cloudTag);
    List<CloudBackupTag> list();
    void save(CloudBackupTag tag);
    void markForDeletion(String cloudTag);
    void remove(String cloudTag);
}
