package com.bare.cloud;

/**
 * Device/cloud-provider access boundary corresponding to Reference tb1/qb1.
 * This is separate from the BaRe backend (Supabase) boundary.
 */
public interface CloudProviderRepository {
    CloudAccessResult checkAccess(boolean refresh);
    void beginAuthorizationRecovery(Object recoveryIntent);
    String getMainCloudFolderName();
    String getSelectedCloudType();

    final class CloudAccessResult {
        public enum Kind {
            CONNECTED,
            NOT_CONNECTED,
            NETWORK_ERROR,
            TEMPORARY_ERROR,
            UNKNOWN
        }

        public final Kind kind;
        public final boolean recoverableAuthorization;
        public final Object recoveryIntent;
        public final String diagnostic;

        public CloudAccessResult(Kind kind, boolean recoverableAuthorization,
                                 Object recoveryIntent, String diagnostic) {
            this.kind = kind == null ? Kind.UNKNOWN : kind;
            this.recoverableAuthorization = recoverableAuthorization;
            this.recoveryIntent = recoveryIntent;
            this.diagnostic = diagnostic;
        }
    }
}
