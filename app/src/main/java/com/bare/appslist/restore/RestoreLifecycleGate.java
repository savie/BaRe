package com.bare.appslist.restore;

/**
 * App-owned gate for the restore lifecycle before extraction/data mutation.
 * It mirrors the recovered Reference ordering without implementing platform
 * installation, extraction, or provider I/O.
 */
public final class RestoreLifecycleGate {
    public enum Decision {
        READY,
        METADATA_INVALID,
        NO_RESTORABLE_PARTS,
        TARGET_UNAVAILABLE
    }

    public Decision evaluate(RestorePreflight.Result preflight) {
        if (preflight == null) throw new IllegalArgumentException("preflight");
        if (!preflight.isMetadataValid()) return Decision.METADATA_INVALID;
        if (preflight.getValidParts().isEmpty()) return Decision.NO_RESTORABLE_PARTS;
        if (preflight.getInstalledUid() == null || !preflight.getInstalledUid().isAvailable()) {
            return Decision.TARGET_UNAVAILABLE;
        }
        return Decision.READY;
    }
}
