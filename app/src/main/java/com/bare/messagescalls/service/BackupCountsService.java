package com.bare.messagescalls.service;

import com.bare.messagescalls.repository.BackupCountsRepository;

/** Maps Reference SMS/call backup counters into a stable service contract. */
public final class BackupCountsService {
    private final BackupCountsRepository repository;

    public BackupCountsService(BackupCountsRepository repository) {
        this.repository = repository;
    }

    public BackupCountsRepository.BackupCounts load(String cloudTag) {
        BackupCountsRepository.BackupCounts result = repository.load(cloudTag);
        return result == null ? new BackupCountsRepository.BackupCounts(0, 0) : result;
    }
}
