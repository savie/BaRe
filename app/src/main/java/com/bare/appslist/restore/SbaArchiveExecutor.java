package com.bare.appslist.restore;

import com.bare.apps.contracts.RfArtifactContracts.F158ArchiveParse;

import java.io.File;
import java.io.IOException;

/**
 * SBA restore entry point. It validates the already-recovered archive facts
 * and routes native SBA work through SbaNativeBridge.
 */
public final class SbaArchiveExecutor {
    private final SbaNativeBridge nativeBridge;

    public SbaArchiveExecutor() {
        this(new SbaNativeBridge());
    }

    public SbaArchiveExecutor(SbaNativeBridge nativeBridge) {
        if (nativeBridge == null) throw new IllegalArgumentException("nativeBridge");
        this.nativeBridge = nativeBridge;
    }

    public Result prepare(F158ArchiveParse archive, File destination) throws IOException {
        if (archive == null) throw new IllegalArgumentException("archive");
        if (destination == null) throw new IllegalArgumentException("destination");
        if (!archive.headerValid()
                || !archive.keyCheckValid()
                || archive.duplicateEntryRejected()
                || archive.unsafeEntryRejected()
                || !archive.extractionReady()) {
            return Result.failure("SBA archive validation failed: " + archive.errorState());
        }
        if (!nativeBridge.load()) {
            return Result.failure("SBA native library is unavailable.");
        }
        if (!destination.exists() && !destination.mkdirs()) {
            return Result.failure("Cannot create SBA destination.");
        }
        return Result.ready();
    }

    public static final class Result {
        private final boolean ready;
        private final String message;

        private Result(boolean ready, String message) {
            this.ready = ready;
            this.message = message;
        }

        public static Result ready() { return new Result(true, null); }
        public static Result failure(String message) { return new Result(false, message); }
        public boolean isReady() { return ready; }
        public String getMessage() { return message; }
    }
}
