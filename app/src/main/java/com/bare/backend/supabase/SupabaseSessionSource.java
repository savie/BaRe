package com.bare.backend.supabase;

import androidx.annotation.Nullable;

import com.bare.home.repository.BackendIdentity;

/**
 * Provider-neutral session boundary for the Supabase adapter.
 *
 * The adapter receives an already established access token and BackendIdentity;
 * authentication UI/provider SDKs remain outside this boundary.
 */
public interface SupabaseSessionSource {
    @Nullable
    Session current();

    void signOut();

    final class Session {
        public final String accessToken;
        public final BackendIdentity identity;

        public Session(String accessToken, BackendIdentity identity) {
            if (accessToken == null || accessToken.trim().isEmpty()) {
                throw new IllegalArgumentException("accessToken");
            }
            if (identity == null || identity.id == null || identity.id.trim().isEmpty()) {
                throw new IllegalArgumentException("identity");
            }
            this.accessToken = accessToken;
            this.identity = identity;
        }
    }
}
