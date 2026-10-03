package com.bare.home.storageswitch;

/**
 * Downstream executor for an already validated F24 storage migration plan.
 *
 * P5 constructs and routes the plan; concrete filesystem copy/move execution
 * is injected here and is not executed by static verification.
 */
public interface StorageMigrationExecutor {
    boolean execute(StorageMigrationPlan plan);
}
