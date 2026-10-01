package com.bare.backend;

import com.bare.account.data.UserInfo;
import com.bare.home.repository.BackendIdentity;

/**
 * Provider-neutral backend boundary for account/session metadata.
 *
 * Implementations may bind this interface to a provider later; no provider SDK
 * type or execution guarantee crosses this boundary.
 */
public interface BaReBackendRepository {
    BackendIdentity currentIdentity();
    UserInfo loadUserInfo(String uid);
    void saveUserInfo(String uid, UserInfo userInfo);
    boolean isRegisteredContributor(String uid);
    void signOut();

    /**
     * Reference re3/FireHelper current cloud-directory metadata.
     * The value is metadata only at this boundary; provider transfer/execution
     * remains downstream.
     */
    String currentCloudDirectory();

    /**
     * Whether the backend/session boundary has completed its initialization.
     * This is state observation, not proof of provider connectivity.
     */
    boolean isInitialized();
}
