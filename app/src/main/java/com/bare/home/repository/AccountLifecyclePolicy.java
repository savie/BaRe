package com.bare.home.repository;

/**
 * Reference d45 lifecycle policy, expressed without provider SDK types.
 *
 * This class owns decisions only. Provider authentication, backend mutation,
 * scheduled-job execution, and cloud restore execution remain downstream.
 */
public final class AccountLifecyclePolicy {
    public enum StartupDecision {
        INITIALIZE_FIRST_START,
        WAIT_FOR_FIRST_RUN_CLOUD_RESTORE,
        READY_FOR_HOME,
        REINITIALIZE_AFTER_SIGN_OUT
    }

    public enum MigrationDecision {
        START_GOOGLE_MIGRATION,
        ALREADY_MIGRATING,
        NOT_ANONYMOUS,
        NO_IDENTITY
    }

    private AccountLifecyclePolicy() {}

    /**
     * Mirrors Reference d45.b(): when there is no identity, a first-start flow
     * remains blocked until first-run cloud restore has reached its terminal
     * completion state; otherwise the lifecycle is reset for re-initialization.
     */
    public static StartupDecision resolveStartup(
            boolean hasIdentity,
            boolean firstStart,
            boolean firstRunCloudRestoreCompleted) {
        if (hasIdentity) return StartupDecision.READY_FOR_HOME;
        if (!firstStart) return StartupDecision.REINITIALIZE_AFTER_SIGN_OUT;
        if (!firstRunCloudRestoreCompleted) return StartupDecision.WAIT_FOR_FIRST_RUN_CLOUD_RESTORE;
        return StartupDecision.REINITIALIZE_AFTER_SIGN_OUT;
    }

    public static boolean shouldClearLocalAppData(BackendIdentity identity) {
        return identity != null && !identity.anonymous;
    }

    public static boolean shouldResetFirstStartAfterSignOut() { return true; }
    public static boolean shouldResetCloudRestoreAfterSignOut() { return true; }
    public static boolean shouldCancelScheduledAlarmsAfterSignOut() { return true; }
    public static boolean shouldClearAnonymousIdentity() { return true; }
    public static boolean shouldResetAnonymousStateStore() { return true; }
    public static boolean shouldReinitializeAccountAfterSignOut() { return true; }

    /**
     * Reference rc1: Google migration may begin only for an existing anonymous
     * identity and is guarded by is_migrating_to_google_sign_in.
     */
    public static MigrationDecision resolveGoogleMigration(
            boolean hasIdentity,
            boolean anonymous,
            boolean migrating) {
        if (!hasIdentity) return MigrationDecision.NO_IDENTITY;
        if (!anonymous) return MigrationDecision.NOT_ANONYMOUS;
        if (migrating) return MigrationDecision.ALREADY_MIGRATING;
        return MigrationDecision.START_GOOGLE_MIGRATION;
    }

    public static boolean wasGoogleMigrationInProgress(boolean storedFlag) {
        return storedFlag;
    }
}
