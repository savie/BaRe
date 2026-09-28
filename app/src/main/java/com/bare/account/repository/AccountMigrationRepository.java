package com.bare.account.repository;

/** Provider-neutral boundary for Reference anonymous → Google migration state. */
public interface AccountMigrationRepository {
    boolean isMigratingToGoogleSignIn();
    void setMigratingToGoogleSignIn(boolean migrating);
    /**
     * Reference fu3 semantics: create destination only when absent; delete source
     * only when its value still equals the copied value; on source-change failure,
     * remove destination only if it still equals that copied value, then retry once.
     */
    MigrationResult migrateCloudDirectory(String oldCloudDirectory, String newCloudDirectory);

    /**
     * Reference migration outcomes observed in fu3:
     * - MIGRATED: destination metadata write succeeded and source cleanup succeeded.
     * - NOT_NEEDED: source/destination already equivalent or no migration required.
     * - NOT_FOUND: source metadata was absent.
     * - SOURCE_CHANGED: source changed while migration/cleanup was in progress.
     * - DESTINATION_CHANGED: rollback was not performed because destination changed.
     * - ROLLED_BACK: destination write was rolled back after source-change detection.
     * - FAILED: provider operation failed.
     * - UNKNOWN: provider returned an unclassified state.
     */
    enum MigrationResult {
        MIGRATED,
        NOT_NEEDED,
        NOT_FOUND,
        SOURCE_CHANGED,
        DESTINATION_CHANGED,
        ROLLED_BACK,
        FAILED,
        UNKNOWN
    }
}
