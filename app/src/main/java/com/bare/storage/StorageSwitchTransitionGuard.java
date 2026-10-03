package com.bare.storage;

/**
 * Reference transition guard for changing backup storage.
 *
 * The guard is pure: it does not copy, move or delete files.
 */
public final class StorageSwitchTransitionGuard {
    public enum Result {
        UNABLE_TO_MEASURE,
        INSUFFICIENT_SPACE,
        READY
    }

    public enum Action {
        COPY,
        MOVE,
        DO_NOTHING
    }

    public static final class Decision {
        public final Result result;
        public final boolean destinationHasFiles;
        public final long requiredBytes;
        public final long availableBytes;

        private Decision(Result result, boolean destinationHasFiles,
                long requiredBytes, long availableBytes) {
            this.result = result;
            this.destinationHasFiles = destinationHasFiles;
            this.requiredBytes = requiredBytes;
            this.availableBytes = availableBytes;
        }

        public boolean canOfferFileTransfer() {
            return result == Result.READY;
        }
    }

    private StorageSwitchTransitionGuard() {}

    public static Decision evaluate(
            Long destinationAvailableBytes,
            long currentBackupFootprintBytes,
            boolean destinationHasFiles) {
        if (destinationAvailableBytes == null) {
            return new Decision(Result.UNABLE_TO_MEASURE, destinationHasFiles,
                    currentBackupFootprintBytes, -1L);
        }
        long required = Math.max(currentBackupFootprintBytes, 0L);
        if (destinationAvailableBytes <= required) {
            return new Decision(Result.INSUFFICIENT_SPACE, destinationHasFiles,
                    required, destinationAvailableBytes);
        }
        return new Decision(Result.READY, destinationHasFiles, required, destinationAvailableBytes);
    }
}
