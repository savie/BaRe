package com.bare.backend;

import com.bare.account.data.UserInfo;
import com.bare.home.repository.BackendIdentity;

/**
 * Provider-neutral backend boundary for account/session metadata.
 *
 * The decompile directly supports identity/userInfo and current cloud-directory
 * path derivation. Provider SDK execution and backend mutation remain downstream.
 */
public interface BaReBackendRepository {
    BackendIdentity currentIdentity();
    UserInfo loadUserInfo(String uid);
    void saveUserInfo(String uid, UserInfo userInfo);
    boolean isRegisteredContributor(String uid);
    void signOut();

    /** Reference re3 cloud_v1 path uses FireHelper.currentCloudDir metadata. */
    String currentCloudDirectory();
}
