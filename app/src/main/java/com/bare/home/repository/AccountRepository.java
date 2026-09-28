package com.bare.home.repository;

/** Identity/account boundary. No Firebase SDK type is allowed above this interface. */
public interface AccountRepository {
    BackendIdentity currentIdentity();
    boolean isRegisteredContributor();
    void signOut();
}
