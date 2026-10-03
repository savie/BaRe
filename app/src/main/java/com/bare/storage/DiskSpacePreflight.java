package com.bare.storage;

import com.bare.schedule.contracts.ReScheduleContracts;

/**
 * P5.5 F161 execution-time disk-space decision boundary.
 * No filesystem access or mutation is performed here.
 */
public final class DiskSpacePreflight {
    private DiskSpacePreflight() {}

    public static ReScheduleContracts.F161DiskPreflight evaluate(
            long artifactBytes, long freeBytes, boolean skipChecks) {
        return ReScheduleContracts.F161DiskPreflight.evaluate(
                Math.max(0L, artifactBytes), Math.max(0L, freeBytes), skipChecks);
    }
}
