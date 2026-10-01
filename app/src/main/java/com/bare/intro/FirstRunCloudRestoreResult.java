package com.bare.intro;

/**
 * C10 terminal outcome of the first-run cloud-settings restore boundary.
 *
 * SUCCESS is the only outcome allowed to persist
 * KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED=true.
 */
public enum FirstRunCloudRestoreResult {
    SUCCESS,
    SKIPPED,
    FAILED
}
