package com.bare.home.service;

import com.bare.home.repository.IdentityRepository;

/** Application-level identity lifecycle. Backend-specific auth stays behind IdentityRepository. */
public final class IdentityService {
    private final IdentityRepository repository;

    public IdentityService(IdentityRepository repository) {
        this.repository = repository;
    }

    public void initialize() {
        repository.initialize();
    }

    public boolean hasIdentity() {
        return repository.hasIdentity();
    }

    public void signOut() {
        repository.signOut();
    }
}
