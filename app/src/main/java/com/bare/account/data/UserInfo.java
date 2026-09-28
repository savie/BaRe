package com.bare.account.data;

/** Reference ah8 userInfo model, provider-neutral. */
public final class UserInfo {
    public final String id;
    public final Boolean anonymous;
    public final String displayName;
    public final String email;
    public final String photoUrl;
    public final int latestAppVersion;
    public final int currentAppVersion;

    public UserInfo(String id, Boolean anonymous, String displayName, String email,
                    String photoUrl, int latestAppVersion, int currentAppVersion) {
        this.id = id;
        this.anonymous = anonymous;
        this.displayName = displayName;
        this.email = email;
        this.photoUrl = photoUrl;
        this.latestAppVersion = latestAppVersion;
        this.currentAppVersion = currentAppVersion;
    }

    public boolean isAnonymous() {
        return Boolean.TRUE.equals(anonymous);
    }
}
