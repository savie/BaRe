package com.bare.core.state;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * P4.2 local-state boundary.
 *
 * This class centralizes persisted keys consumed by P3/P4. It deliberately does not
 * claim encrypted/secure storage: that requirement remains a downstream storage adapter.
 */
public final class LocalState {
    public static final String PREFS = "com.bare_preferences";

    public static final String KEY_FIRST_START = "KEY_FIRST_START";
    public static final String KEY_SIGNED_IN = "P3_SIGNED_IN";
    public static final String KEY_STORAGE_READY = "P3_STORAGE_READY";
    public static final String KEY_NOTIFICATIONS_READY = "P3_NOTIFICATIONS_READY";
    public static final String KEY_INSTALLED_APPS_READY = "P3_INSTALLED_APPS_READY";
    public static final String KEY_ROOT_READY = "P3_ROOT_READY";
    public static final String KEY_PASSWORD_MODE_LEGACY = "P3_PASSWORD_MODE";
    public static final String KEY_PASSWORD_MODE = "saved_password_mode";
    public static final String KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED =
            "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED";

    private final SharedPreferences prefs;

    public LocalState(Context context) {
        prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    public boolean getBoolean(String key, boolean defaultValue) {
        return prefs.getBoolean(key, defaultValue);
    }

    public void putBoolean(String key, boolean value) {
        prefs.edit().putBoolean(key, value).apply();
    }

    public int getInt(String key, int defaultValue) {
        return prefs.getInt(key, defaultValue);
    }

    public void putInt(String key, int value) {
        prefs.edit().putInt(key, value).apply();
    }

    public String getString(String key, String defaultValue) {
        return prefs.getString(key, defaultValue);
    }

    public void putString(String key, String value) {
        prefs.edit().putString(key, value).apply();
    }

    public void remove(String key) {
        prefs.edit().remove(key).apply();
    }

    public boolean contains(String key) {
        return prefs.contains(key);
    }
}
