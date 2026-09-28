package com.bare.backend;

import com.bare.home.repository.BackendIdentity;

/** Provider-neutral backend contract; only audited Home/account operations are exposed. */
public interface BaReBackendRepository {
    BackendIdentity currentIdentity();
    UserInfo loadUserInfo(String uid);
    void saveUserInfo(String uid, UserInfo userInfo);
    boolean isRegisteredContributor(String uid);
    void signOut();

    final class UserInfo {
        public final String uid;
        public final boolean anonymous;
        public final String displayName;
        public final String email;
        public final String photoUrl;
        public final int latestAppVersion;
        public final int currentAppVersion;
        public UserInfo(String uid, boolean anonymous, String displayName, String email,
                        String photoUrl, int latestAppVersion, int currentAppVersion) {
            this.uid = uid; this.anonymous = anonymous; this.displayName = displayName;
            this.email = email; this.photoUrl = photoUrl;
            this.latestAppVersion = latestAppVersion; this.currentAppVersion = currentAppVersion;
        }
    }
}
