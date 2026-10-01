package com.bare.home.repository;

/** Full account lifecycle boundary corresponding to Reference d45 without backend SDK types. */
public interface IdentityRepository extends AccountRepository {
    void initialize();
    boolean hasIdentity();
}
