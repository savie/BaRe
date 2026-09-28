package com.bare.account.repository;

/** Provider-neutral boundary for Reference anonymous → Google migration state. */
public interface AccountMigrationRepository {
    boolean isMigratingToGoogleSignIn();
    void setMigratingToGoogleSignIn(boolean migrating);
    MigrationResult migrateCloudDirectory(String oldCloudDirectory, String newCloudDirectory);

    enum MigrationResult { MIGRATED, NOT_NEEDED, NOT_FOUND, FAILED, UNKNOWN }
}
