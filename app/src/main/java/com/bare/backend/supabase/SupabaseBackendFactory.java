package com.bare.backend.supabase;

import com.bare.backend.BaReBackendRepository;
import com.bare.contributor.repository.ContributorRegistrationRepository;

/**
 * Explicit composition boundary for the concrete Supabase adapter.
 *
 * Configuration and an authenticated session source must be supplied by the
 * application owner. This factory never invents keys, sessions, or provider
 * state.
 */
public final class SupabaseBackendFactory {
    private SupabaseBackendFactory() {}

    public static Components create(
            String projectUrl,
            String publishableKey,
            SupabaseSessionSource sessionSource,
            int currentAppVersion) {
        SupabaseRestClient client = new SupabaseRestClient(
                projectUrl, publishableKey, sessionSource);
        SupabaseUserInfoRepository userInfoRepository =
                new SupabaseUserInfoRepository(client, currentAppVersion);
        ContributorRegistrationRepository contributorRepository =
                new SupabaseContributorRegistrationRepository(client, sessionSource);
        BaReBackendRepository backendRepository =
                new SupabaseBackendRepository(
                        sessionSource, userInfoRepository, contributorRepository);
        return new Components(
                client,
                userInfoRepository,
                contributorRepository,
                backendRepository);
    }

    public static final class Components {
        public final SupabaseRestClient client;
        public final SupabaseUserInfoRepository userInfoRepository;
        public final ContributorRegistrationRepository contributorRepository;
        public final BaReBackendRepository backendRepository;

        private Components(
                SupabaseRestClient client,
                SupabaseUserInfoRepository userInfoRepository,
                ContributorRegistrationRepository contributorRepository,
                BaReBackendRepository backendRepository) {
            this.client = client;
            this.userInfoRepository = userInfoRepository;
            this.contributorRepository = contributorRepository;
            this.backendRepository = backendRepository;
        }
    }
}
