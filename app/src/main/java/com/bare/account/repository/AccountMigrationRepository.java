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
     * Reference migration outcomes observed in fu3.
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
