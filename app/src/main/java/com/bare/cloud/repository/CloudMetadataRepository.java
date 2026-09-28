package com.bare.cloud.repository;

import com.bare.cloud.model.CloudAppMetadata;

import java.util.List;

/** Reference cloud_v1/apps metadata repository boundary. */
public interface CloudMetadataRepository {
    List<CloudAppMetadata> listApps(String cloudTag);
    CloudAppMetadata getApp(String cloudTag, String packageName);
    void upsertApp(String cloudTag, CloudAppMetadata metadata);
    void removeApp(String cloudTag, String packageName);
}
