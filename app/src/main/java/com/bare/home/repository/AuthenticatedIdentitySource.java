package com.bare.home.repository;

import com.bare.account.BackendIdentity;

/** App-side source for the currently authenticated account; provider SDK types stay outside this contract. */
public interface AuthenticatedIdentitySource {
    BackendIdentity current();
    boolean isSignedIn();
}
