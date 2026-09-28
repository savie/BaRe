package com.bare.cloud.repository;

import com.bare.cloud.model.CloudAppMetadata;

/** Reference tags/{cloudTag}/apps repository boundary. */
public interface CloudAppRepository {
    CloudAppMetadata load(String cloudTag, String packageName);
    void write(String cloudTag, String packageName, CloudAppMetadata metadata);
}
