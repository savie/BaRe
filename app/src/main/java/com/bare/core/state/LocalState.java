package com.bare.core.state;

import android.content.Context;
import android.content.SharedPreferences;

/**
 * Reference-equivalent local preference boundary.
 *
 * Swift Backup initializes its local store from <package>_preferences.
 * This class owns only keys established by Reference evidence; P3-only BaRe flags
 * are intentionally not promoted to canonical product state.
 */
public final class LocalState {
    public static final String KEY_FIRST_START = "KEY_FIRST_START";
    public static final String KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED =
            "KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED";

    private final SharedPreferences prefs;

    public LocalState(Context context) {
        prefs = context.getSharedPreferences(
                context.getPackageName() + "_preferences",
                Context.MODE_PRIVATE
        );
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
