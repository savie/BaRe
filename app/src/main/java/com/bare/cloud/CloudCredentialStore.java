package com.bare.cloud;

/**
 * Local boundary for external cloud-provider credentials.
 *
 * Implementations own secure storage and provider-specific credential details.
 * Credentials must not cross into BaRe backend repositories or metadata models.
 */
public interface CloudCredentialStore {
    Object load();
    void save(Object credentials);
    void clear();
}
