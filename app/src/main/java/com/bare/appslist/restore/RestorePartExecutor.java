package com.bare.appslist.restore;

import java.io.File;

/**
 * Provider/platform-neutral execution boundary for one selected restore part.
 *
 * Concrete APP/DATA/EXTDATA/EXPANSION/MEDIA and platform-specific privileged
 * implementations plug in here. The interface deliberately does not expose
 * Supabase or provider SDK types.
 */
public interface RestorePartExecutor {
    Result execute(Request request) throws Exception;

    final class Request {
        private final String packageName;
        private final String partId;
        private final File stagedArtifact;
        private final long installedUid;

        public Request(String packageName, String partId, File stagedArtifact, long installedUid) {
            if (packageName == null || packageName.isEmpty()) throw new IllegalArgumentException("packageName");
            if (partId == null || partId.isEmpty()) throw new IllegalArgumentException("partId");
            if (stagedArtifact == null) throw new IllegalArgumentException("stagedArtifact");
            if (installedUid < 0) throw new IllegalArgumentException("installedUid");
            this.packageName = packageName;
            this.partId = partId;
            this.stagedArtifact = stagedArtifact;
            this.installedUid = installedUid;
        }

        public String getPackageName() { return packageName; }
        public String getPartId() { return partId; }
        public File getStagedArtifact() { return stagedArtifact; }
        public long getInstalledUid() { return installedUid; }
    }

    final class Result {
        private final RestorePartOutcome.Status status;
        private final String reason;

        private Result(RestorePartOutcome.Status status, String reason) {
            if (status == null) throw new IllegalArgumentException("status");
            this.status = status;
            this.reason = reason;
        }

        public static Result restored(String reason) {
            return new Result(RestorePartOutcome.Status.RESTORED, reason);
        }

        public static Result failed(String reason) {
            return new Result(RestorePartOutcome.Status.FAILED, reason);
        }

        public static Result skipped(String reason) {
            return new Result(RestorePartOutcome.Status.SKIPPED, reason);
        }

        public static Result noBackup(String reason) {
            return new Result(RestorePartOutcome.Status.NO_BACKUP, reason);
        }

        public static Result targetUnavailable(String reason) {
            return new Result(RestorePartOutcome.Status.TARGET_UNAVAILABLE, reason);
        }

        public RestorePartOutcome toOutcome(String partId) {
            return new RestorePartOutcome(partId, status, reason);
        }

        public RestorePartOutcome.Status getStatus() { return status; }
        public String getReason() { return reason; }
    }
}
