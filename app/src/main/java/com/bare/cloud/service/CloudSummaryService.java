package com.bare.cloud.service;

import com.bare.cloud.repository.CloudSummaryRepository;

/** Preserves Reference ig1 aggregate semantics without coupling UI to backend snapshots. */
public final class CloudSummaryService {
    private final CloudSummaryRepository repository;

    public CloudSummaryService(CloudSummaryRepository repository) {
        this.repository = repository;
    }

    public CloudSummaryRepository.CloudSummary load(String cloudTag) {
        CloudSummaryRepository.CloudSummary value = repository.load(cloudTag);
        return value == null ? new CloudSummaryRepository.CloudSummary(0, 0L, 0, 0, 0) : value;
    }
}
