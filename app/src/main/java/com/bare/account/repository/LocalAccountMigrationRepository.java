package com.bare.account.repository;

import com.bare.core.state.LocalState;

/** Local implementation of the Reference migration-guard boundary. */
public final class LocalAccountMigrationRepository implements AccountMigrationRepository {
    private final LocalState localState;

    public LocalAccountMigrationRepository(LocalState localState) {
        this.localState = localState;
    }

    @Override
    public boolean isMigratingToGoogleSignIn() {
        return localState.getBoolean(LocalState.KEY_IS_MIGRATING_TO_GOOGLE_SIGN_IN, false);
    }

    @Override
    public void setMigratingToGoogleSignIn(boolean migrating) {
        localState.putBoolean(LocalState.KEY_IS_MIGRATING_TO_GOOGLE_SIGN_IN, migrating);
    }
}
