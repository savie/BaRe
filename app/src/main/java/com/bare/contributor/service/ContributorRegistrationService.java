package com.bare.contributor.service;

import com.bare.contributor.data.ContributorRegistrationData;
import com.bare.contributor.repository.ContributorRegistrationRepository;

/** Contributor registration orchestration; no provider SDK crosses this layer. */
public final class ContributorRegistrationService {
    private final ContributorRegistrationRepository repository;

    public ContributorRegistrationService(ContributorRegistrationRepository repository) {
        this.repository = repository;
    }

    public ContributorRegistrationData load(String uidPrefix) {
        return repository.load(uidPrefix);
    }

    public boolean isRegistered(String uidPrefix) {
        return repository.isRegistered(uidPrefix);
    }
}
