package com.bare.home.storageswitch;

import com.bare.core.storage.StorageDiskPreflight;

/**
 * Static transition presentation contract for changing active backup storage.
 *
 * F125 owns the disk-space preflight predicate; filesystem copy/move remains downstream.
 */
public final class StorageSwitchTransition {
    public enum Decision {
        PROCEED,
        INSUFFICIENT_SPACE,
        DESTINATION_UNAVAILABLE
    }

    private StorageSwitchTransition() {
    }

    public static Decision evaluate(
            boolean destinationUsable,
            long destinationUsableBytes,
            long currentStorageFootprintBytes) {
        StorageDiskPreflight.Decision decision = StorageDiskPreflight.evaluate(
                destinationUsable,
                destinationUsableBytes,
                currentStorageFootprintBytes);
        switch (decision) {
            case INSUFFICIENT_SPACE:
                return Decision.INSUFFICIENT_SPACE;
            case DESTINATION_UNAVAILABLE:
                return Decision.DESTINATION_UNAVAILABLE;
            default:
                return Decision.PROCEED;
        }
    }
}
