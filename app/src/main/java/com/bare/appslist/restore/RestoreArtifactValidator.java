package com.bare.appslist.restore;

import com.bare.apps.contracts.RfArtifactContracts.F158ArchiveParse;

/**
 * Pre-mutation artifact/package validation boundary for app restore.
 *
 * This contract consumes already-parsed artifact facts. It does not open
 * archives, derive keys, extract files, install packages, or mutate device data.
 */
public final class RestoreArtifactValidator {
    public enum Decision {
        READY,
        METADATA_INVALID,
        ARCHIVE_INVALID,
        KEY_CHECK_FAILED,
        PACKAGE_MISMATCH,
        VERSION_UNAVAILABLE
    }

    public static final class Request {
        private final String expectedPackageName;
        private final String artifactPackageName;
        private final Long artifactVersionCode;
        private final F158ArchiveParse archive;

        public Request(
                String expectedPackageName,
                String artifactPackageName,
                Long artifactVersionCode,
                F158ArchiveParse archive) {
            if (expectedPackageName == null || expectedPackageName.isEmpty()) {
                throw new IllegalArgumentException("expectedPackageName");
            }
            this.expectedPackageName = expectedPackageName;
            this.artifactPackageName = artifactPackageName;
            this.artifactVersionCode = artifactVersionCode;
            this.archive = archive;
        }

        public String getExpectedPackageName() { return expectedPackageName; }
        public String getArtifactPackageName() { return artifactPackageName; }
        public Long getArtifactVersionCode() { return artifactVersionCode; }
        public F158ArchiveParse getArchive() { return archive; }
    }

    public Decision validate(Request request) {
        if (request == null) throw new IllegalArgumentException("request");
        F158ArchiveParse archive = request.getArchive();

        if (archive == null || !archive.headerValid()
                || !archive.extractionReady()
                || archive.duplicateEntryRejected()
                || archive.unsafeEntryRejected()) {
            return Decision.ARCHIVE_INVALID;
        }

        if (!archive.keyCheckValid()) {
            return Decision.KEY_CHECK_FAILED;
        }

        if (request.getArtifactPackageName() == null
                || request.getArtifactPackageName().isEmpty()) {
            return Decision.METADATA_INVALID;
        }

        if (!request.getExpectedPackageName().equals(request.getArtifactPackageName())) {
            return Decision.PACKAGE_MISMATCH;
        }

        if (request.getArtifactVersionCode() == null
                || request.getArtifactVersionCode() < 0) {
            return Decision.VERSION_UNAVAILABLE;
        }

        return Decision.READY;
    }
}
