package com.bare.core.storage;

public final class StorageDiskPreflight {
    public enum Decision {
        PROCEED,
        INSUFFICIENT_SPACE,
        DESTINATION_UNAVAILABLE
    }

    private StorageDiskPreflight() {
    }

    /**
     * Reference disk-space guard: destination must be usable and have more
     * usable bytes than the current storage footprint.
     */
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
