package com.bare.cloud;

/** Explicit source-to-destination cloud-account namespace migration boundary. */
public interface CloudAccountMigration {
    MigrationResult migrate(CloudProviderIdentity source, CloudProviderIdentity destination);

    final class MigrationResult {
        public enum Status { SUCCESS, SOURCE_UNAVAILABLE, DESTINATION_UNAVAILABLE, FAILED }
        public final Status status;
        public final String diagnostic;
        public MigrationResult(Status status, String diagnostic) {
            this.status = status == null ? Status.FAILED : status;
            this.diagnostic = diagnostic;
        }
    }
}
