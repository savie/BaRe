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

    /**
     * Reference exposes an explicit decision when files already exist at the
     * destination. The decision is modeled here without performing filesystem
     * copy/move/delete operations.
     */
    public enum ExistingDestinationDecision {
        COPY,
        MOVE,
        DO_NOTHING
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

    /**
     * Resolves the presentation-level choice for an already-populated
     * destination. When no files exist, no copy/move action is required.
     * Actual file operations remain downstream.
     */
    public static ExistingDestinationDecision resolveExistingDestination(
            boolean destinationHasFiles,
            ExistingDestinationDecision requested) {
        if (!destinationHasFiles) {
            return ExistingDestinationDecision.DO_NOTHING;
        }
        if (requested == null) {
            throw new NullPointerException("requested");
        }
        return requested;
    }
}
