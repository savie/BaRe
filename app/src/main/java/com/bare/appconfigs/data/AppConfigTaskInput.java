package com.bare.appconfigs.data;

/**
 * Contract-only projection for the downstream F62 configuration-to-task boundary.
 * Execution/mapping remains downstream.
 */
public final class AppConfigTaskInput {
    public final String configId;
    public final boolean requested;

    public AppConfigTaskInput(String configId, boolean requested) {
        if (configId == null || configId.isEmpty()) throw new IllegalArgumentException("configId");
        this.configId = configId;
        this.requested = requested;
    }
}