package com.bare.home.repository;

/**
 * Resolves the app-local identity used by account/home consumers.
 * Authenticated identity wins; otherwise the stored local anonymous identity is used.
 */
public final class AccountIdentityResolver {
    public interface AuthIdentitySource {
        BackendIdentity currentAuthenticatedIdentity();
    }

    private final AnonymousIdentityStore anonymousStore;
    private final AuthIdentitySource authenticatedSource;

    public AccountIdentityResolver(
            AnonymousIdentityStore anonymousStore,
            AuthIdentitySource authenticatedSource) {
        if (anonymousStore == null || authenticatedSource == null) {
            throw new IllegalArgumentException("Identity sources are required.");
        }
        this.anonymousStore = anonymousStore;
        this.authenticatedSource = authenticatedSource;
    }

    public BackendIdentity currentIdentity() {
        BackendIdentity authenticated = authenticatedSource.currentAuthenticatedIdentity();
        if (authenticated != null && !authenticated.anonymous) return authenticated;

        String anonymousUid = anonymousStore.getStoredUid();
        if (anonymousUid == null) anonymousUid = anonymousStore.getOrCreateUid();

        return new BackendIdentity(
                anonymousUid,
                "anonymous",
                "Anonymous",
                null,
                true);
    }

    public BackendIdentity authenticatedIdentityOrNull() {
        return authenticatedSource.currentAuthenticatedIdentity();
    }

    public AccountLifecyclePolicy.MigrationDecision beginGoogleMigration() {
        BackendIdentity current = currentIdentity();
        AccountLifecyclePolicy.MigrationDecision decision =
                AccountLifecyclePolicy.resolveGoogleMigration(
                        current != null,
                        current != null && current.anonymous,
                        anonymousStore.isMigratingToGoogle());
        if (decision == AccountLifecyclePolicy.MigrationDecision.START_GOOGLE_MIGRATION) {
            anonymousStore.setMigratingToGoogle(true);
        }
        return decision;
    }

    public void finishGoogleMigration() {
        anonymousStore.setMigratingToGoogle(false);
    }
}
