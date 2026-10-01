package com.bare.permission;

/** Current capability state; UNKNOWN means the privileged/OEM engine is not resolved here. */
public enum PermissionCurrentState {
    GRANTED,
    DENIED,
    UNAVAILABLE,
    UNKNOWN
}
