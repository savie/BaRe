package com.bare.home.repository;

/** Backend-neutral identity model. Firebase-specific types must not cross this boundary. */
public final class BackendIdentity {
    public final String id;
    public final String email;
    public final String displayName;
    public final String photoUrl;
    public final boolean anonymous;

    public BackendIdentity(String id, String email, String displayName, String photoUrl, boolean anonymous) {
        this.id = id;
        this.email = email;
        this.displayName = displayName;
        this.photoUrl = photoUrl;
        this.anonymous = anonymous;
    }
}
