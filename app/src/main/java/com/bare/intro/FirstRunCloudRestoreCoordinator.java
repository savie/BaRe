package com.bare.intro;

import com.bare.core.state.LocalState;

/**
 * Canonical C10 state owner for first-run cloud-settings restore.
 *
 * This class models lifecycle/result semantics only. Actual backend/cloud reads
 * and restoration of labels, configs, schedules, favorites, and blacklist data
 * remain behind a downstream execution boundary.
 */
public final class FirstRunCloudRestoreCoordinator {
    private final LocalState localState;

    public FirstRunCloudRestoreCoordinator(LocalState localState) {
        if (localState == null) {
            throw new NullPointerException("localState");
        }
        this.localState = localState;
    }

    /**
     * Reconstruct the persisted terminal state without inventing a restore result.
     */
    public FirstRunCloudRestoreState readPersistedState() {
        return localState.getBoolean(
                LocalState.KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED,
                false)
                ? FirstRunCloudRestoreState.COMPLETED
                : FirstRunCloudRestoreState.NOT_STARTED;
    }

    /**
     * Resolve whether a first-run restore may be attempted.
     *
     * backendReady is supplied by the downstream provider/session boundary;
     * this class does not determine backend readiness itself.
     */
    public FirstRunCloudRestoreState resolve(
            boolean firstStart,
            boolean backendReady) {
        if (!firstStart) {
            return FirstRunCloudRestoreState.SKIPPED;
        }

        if (readPersistedState() == FirstRunCloudRestoreState.COMPLETED) {
            return FirstRunCloudRestoreState.COMPLETED;
        }

        return backendReady
                ? FirstRunCloudRestoreState.READY_TO_ATTEMPT
                : FirstRunCloudRestoreState.NOT_STARTED;
    }

    /**
     * Record the terminal result from the downstream restore boundary.
     *
     * Only SUCCESS may assert the Reference completion key. SKIPPED and FAILED
     * deliberately leave completion false so a later first-run attempt remains
     * possible.
     */
    public FirstRunCloudRestoreState recordResult(
            FirstRunCloudRestoreResult result) {
        if (result == null) {
            throw new NullPointerException("result");
        }

        switch (result) {
            case SUCCESS:
                localState.putBoolean(
                        LocalState.KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED,
                        true);
                return FirstRunCloudRestoreState.COMPLETED;
            case SKIPPED:
                return FirstRunCloudRestoreState.SKIPPED;
            case FAILED:
                return FirstRunCloudRestoreState.FAILED;
            default:
                throw new IllegalStateException("Unhandled restore result: " + result);
        }
    }

    /**
     * Reset the persisted completion state when the Reference lifecycle resets
     * first-run/account initialization.
     */
    public void reset() {
        localState.remove(LocalState.KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED);
    }
}
