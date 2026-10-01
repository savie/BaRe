package com.bare.account.repository;

/**
 * Provider-neutral state boundary for the Reference
 * `is_migrating_to_google_sign_in` preference.
 *
 * The decompile exposes this boolean guard and reset path; it does not expose
 * a typed migration-result enum. Provider/cloud mutation therefore remains
 * outside this contract until separately evidenced.
 */
public interface AccountMigrationRepository {
    boolean isMigratingToGoogleSignIn();
    void setMigratingToGoogleSignIn(boolean migrating);
}
