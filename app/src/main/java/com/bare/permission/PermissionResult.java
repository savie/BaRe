package com.bare.permission;

/** Last request/action outcome; not persisted as product readiness. */
public enum PermissionResult {
    NOT_REQUESTED,
    GRANTED,
    DENIED,
    FAILED
}
