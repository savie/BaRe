package com.bare.core.state;

/**
 * Explicit boundary for Reference common.V secure/encrypted preference semantics.
 *
 * P4.2 defines the owner and API only. No crypto implementation is implied here.
 */
public interface SecureLocalState {
    boolean contains(String key);
    String getString(String key, String defaultValue);
    void putString(String key, String value);
    void remove(String key);
}
