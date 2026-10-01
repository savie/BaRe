package com.bare.home.repository;

/** Identity/account boundary. No backend SDK type is allowed above this interface. */
public interface AccountRepository {
    BackendIdentity currentIdentity();
    boolean isRegisteredContributor();
    /** Reference sign-out lifecycle: auth sign-out plus local/migration reset and reinitialization. */
    void signOut();
}
