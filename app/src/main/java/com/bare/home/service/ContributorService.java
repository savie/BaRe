package com.bare.home.service;

import com.bare.home.repository.ContributorRepository;

/** Mirrors r7 contributorDetails listener lifecycle without exposing remote SDK types. */
public final class ContributorService {
    private final ContributorRepository repository;

    public ContributorService(ContributorRepository repository) {
        this.repository = repository;
    }

    public void start(ContributorRepository.Listener listener) {
        repository.start(listener);
    }

    public boolean current() {
        return repository.isRegistered();
    }

    public void stop() {
        repository.stop();
    }
}
