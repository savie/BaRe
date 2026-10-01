package com.bare.core.state;

/**
 * Reference-equivalent boundary for the secure preference store used by V.getZ().
 *
 * The Reference selects an encrypted/secure SharedPreferences implementation and
 * falls back to a secure store when encrypted-preference initialization fails.
 * The concrete crypto/provider adapter remains outside this contract.
 */
public interface SecureLocalState {
    boolean contains(String key);
    boolean getBoolean(String key, boolean defaultValue);
    void putBoolean(String key, boolean value);
    int getInt(String key, int defaultValue);
    void putInt(String key, int value);
    String getString(String key, String defaultValue);
    void putString(String key, String value);
    void remove(String key);
}
