package com.bare.intro;

public final class StorageSetupRecovery {
    public enum Action {
        EXIT,
        RETRY,
        REVIEW_STORAGE_ACCESS,
        USE_INTERNAL_STORAGE
    }

    public final String location;
    public final boolean removable;
    public final boolean internalFallbackAvailable;

    public StorageSetupRecovery(
            String location,
            boolean removable,
            boolean internalFallbackAvailable) {
        this.location = location;
        this.removable = removable;
        this.internalFallbackAvailable = internalFallbackAvailable;
    }

    public boolean supports(Action action) {
        if (action == Action.USE_INTERNAL_STORAGE) {
            return internalFallbackAvailable;
        }
        return true;
    }
}
