package com.bare.home.storageswitch;

/**
 * Static decision contract for changing the active backup storage.
 *
 * Filesystem copy/move execution remains downstream; this class only evaluates
 * the Reference-shaped transition guard.
 */
public final class StorageSwitchTransition {
    public enum Decision {
        PROCEED,
        INSUFFICIENT_SPACE,
        DESTINATION_UNAVAILABLE
    }

    private StorageSwitchTransition() {}

    public static Decision evaluate(
            boolean destinationUsable,
            long destinationUsableBytes,
            long currentStorageFootprintBytes) {
        if (!destinationUsable || destinationUsableBytes <= 0L) {
            return Decision.DESTINATION_UNAVAILABLE;
        }
        if (destinationUsableBytes <= currentStorageFootprintBytes) {
            return Decision.INSUFFICIENT_SPACE;
        }
        return Decision.PROCEED;
    }
}
