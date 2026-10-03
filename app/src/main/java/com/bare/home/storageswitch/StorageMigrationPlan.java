package com.bare.home.storageswitch;

import java.io.File;

/** F24 presentation-to-execution handoff for an already validated storage switch. */
public final class StorageMigrationPlan {
    public final File sourceRoot;
    public final File destinationRoot;
    public final StorageSwitchTransition.ExistingDestinationDecision action;

    public StorageMigrationPlan(
            File sourceRoot,
            File destinationRoot,
            StorageSwitchTransition.ExistingDestinationDecision action) {
        if (sourceRoot == null) throw new NullPointerException("sourceRoot");
        if (destinationRoot == null) throw new NullPointerException("destinationRoot");
        if (action == null) throw new NullPointerException("action");
        this.sourceRoot = sourceRoot;
        this.destinationRoot = destinationRoot;
        this.action = action;
    }
}
