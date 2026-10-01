package com.bare.intro;

/**
 * C10 first-run cloud-settings restore lifecycle state.
 *
 * The Reference exposes a terminal Boolean result from the restore coroutine,
 * while the P4 contract needs an explicit lifecycle state around that result.
 * This enum does not perform cloud work.
 */
public enum FirstRunCloudRestoreState {
    NOT_STARTED,
    READY_TO_ATTEMPT,
    COMPLETED,
    SKIPPED,
    FAILED
}
