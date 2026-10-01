package com.bare.permission;

/**
 * Provider-neutral permission/access state consumed by Intro UI.
 *
 * Capability identity, current state, request outcome and retry policy are kept
 * together without turning readiness into a persisted boolean.
 */
public final class PermissionState {
    public final PermissionCapability capability;
    public final PermissionCurrentState currentState;
    public final PermissionResult lastResult;
    public final boolean canRetry;

    public PermissionState(
            PermissionCapability capability,
            PermissionCurrentState currentState,
            PermissionResult lastResult,
            boolean canRetry) {
        if (capability == null) throw new NullPointerException("capability");
        if (currentState == null) throw new NullPointerException("currentState");
        if (lastResult == null) throw new NullPointerException("lastResult");
        this.capability = capability;
        this.currentState = currentState;
        this.lastResult = lastResult;
        this.canRetry = canRetry;
    }

    public boolean isReady() {
        return currentState == PermissionCurrentState.GRANTED
                || currentState == PermissionCurrentState.UNAVAILABLE;
    }
}
