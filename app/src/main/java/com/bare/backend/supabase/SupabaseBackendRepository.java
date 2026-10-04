package com.bare.backend.supabase;

import androidx.annotation.Nullable;

import com.bare.account.data.UserInfo;
import com.bare.contributor.repository.ContributorRegistrationRepository;
import com.bare.home.repository.BackendIdentity;
import com.bare.backend.BaReBackendRepository;

/**
 * Concrete BaRe backend adapter for the approved Supabase Auth/profile surface.
 *
 * Supabase SDK/Auth types never cross the BaReBackendRepository boundary.
 * cloud_v1 is deliberately not implemented here because P6.2 left its
 * provider-neutral payload model deferred/unknown.
 */
public final class SupabaseBackendRepository implements BaReBackendRepository {
    private final SupabaseSessionSource sessionSource;
    private final SupabaseUserInfoRepository userInfoRepository;
    private final ContributorRegistrationRepository contributorRepository;

    public SupabaseBackendRepository(
            SupabaseSessionSource sessionSource,
            SupabaseUserInfoRepository userInfoRepository,
            ContributorRegistrationRepository contributorRepository) {
        if (sessionSource == null) throw new NullPointerException("sessionSource");
        if (userInfoRepository == null) throw new NullPointerException("userInfoRepository");
        if (contributorRepository == null) throw new NullPointerException("contributorRepository");

        this.sessionSource = sessionSource;
        this.userInfoRepository = userInfoRepository;
        this.contributorRepository = contributorRepository;
    }

    @Nullable
    @Override
    public BackendIdentity currentIdentity() {
        SupabaseSessionSource.Session session = sessionSource.current();
        return session == null ? null : session.identity;
    }

    @Override
    public UserInfo loadUserInfo(String uid) {
        return userInfoRepository.load(uid);
    }

    @Override
    public void saveUserInfo(String uid, UserInfo userInfo) {
        if (userInfo == null || !uid.equals(userInfo.id)) {
            throw new IllegalArgumentException("UserInfo identity mismatch");
        }
        userInfoRepository.save(userInfo);
    }

    @Override
    public boolean isRegisteredContributor(String uid) {
        return contributorRepository.isRegistered(prefix(uid));
    }

    @Override
    public void signOut() {
        try {
            SupabaseRestClient client = null;
            if (sessionSource.current() != null) {
                throw new UnsupportedOperationException(
                        "Use the injected Supabase session owner's signOut implementation");
            }
            sessionSource.signOut();
        } finally {
            // Local/session lifecycle remains owned by the injected session source.
        }
    }

    @Override
    public String currentCloudDirectory() {
        throw new UnsupportedOperationException(
                "cloud_v1 is deferred by the approved P6.2 model");
    }

    private static String prefix(String uid) {
        if (uid == null || uid.trim().isEmpty()) {
            throw new IllegalArgumentException("uid");
        }
        return uid.length() <= 6 ? uid : uid.substring(0, 6);
    }
}
