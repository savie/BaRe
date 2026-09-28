package com.bare.home.repository;

/** Reference d45 sign-out lifecycle policy, provider-neutral. */
public final class AccountLifecyclePolicy {
    private AccountLifecyclePolicy() {}

    public static boolean shouldClearLocalAppData(BackendIdentity identity) {
        return identity != null && !identity.anonymous;
    }

    public static boolean shouldResetFirstStartAfterSignOut() {
        return true;
    }

    public static boolean shouldResetCloudRestoreAfterSignOut() {
        return true;
    }

    public static boolean shouldCancelScheduledAlarmsAfterSignOut() {
        return true;
    }
}
