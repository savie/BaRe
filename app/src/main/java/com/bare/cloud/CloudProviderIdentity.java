package com.bare.cloud;

/**
 * External cloud-provider account identity.
 *
 * This is deliberately separate from BaRe backend identity. The values are
 * provider-owned identifiers and must not be used as BaRe user IDs.
 */
public final class CloudProviderIdentity {
    public final String accountId;
    public final String email;

    public CloudProviderIdentity(String accountId, String email) {
        this.accountId = accountId;
        this.email = email;
    }
}
