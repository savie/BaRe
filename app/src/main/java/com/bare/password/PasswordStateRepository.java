package com.bare.password;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/** Reference-shaped password security state owner. */
public final class PasswordStateRepository {
    public static final String KEY_PASSWORD_MODE = "saved_password_mode";
    public static final String KEY_USER_PASSWORD = "saved_user_password";
    public static final String KEY_OLD_PASSWORDS = "saved_old_user_passwords";
    public static final String KEY_OLD_PASSWORDS_SET = "saved_old_user_passwords_set";
    public static final int STANDARD_PASSWORD = 0;
    public static final int USER_PASSWORD = 1;

    private final SharedPreferences prefs;

    public PasswordStateRepository(Context context) {
        prefs = context.getSharedPreferences(
                context.getPackageName() + "_preferences", Context.MODE_PRIVATE);
    }

    public int getMode() {
        int mode = prefs.getInt(KEY_PASSWORD_MODE, STANDARD_PASSWORD);
        return mode == USER_PASSWORD ? USER_PASSWORD : STANDARD_PASSWORD;
    }

    public boolean hasActiveUserPassword() {
        String value = prefs.getString(KEY_USER_PASSWORD, null);
        return value != null && !value.trim().isEmpty();
    }

    public int getOldPasswordCount() {
        return getOldPasswords().size();
    }

    public List<String> getOldPasswords() {
        LinkedHashSet<String> merged = new LinkedHashSet<>();
        addCsvValues(merged, prefs.getString(KEY_OLD_PASSWORDS, null));
        Set<String> encoded = prefs.getStringSet(KEY_OLD_PASSWORDS_SET, null);
        if (encoded != null) {
            for (String value : encoded) {
                if (value != null && !value.trim().isEmpty()) merged.add(value);
            }
        }
        return new ArrayList<>(merged);
    }

    public void selectStandardPassword() {
        prefs.edit()
                .putInt(KEY_PASSWORD_MODE, STANDARD_PASSWORD)
                .remove(KEY_USER_PASSWORD)
                .apply();
    }

    public void selectUserPassword(String password) {
        String normalized = normalize(password);
        if (normalized == null) throw new IllegalArgumentException("password");
        prefs.edit()
                .putInt(KEY_PASSWORD_MODE, USER_PASSWORD)
                .putString(KEY_USER_PASSWORD, normalized)
                .apply();
    }

    public void addOldPassword(String password) {
        String normalized = normalize(password);
        if (normalized == null) return;
        LinkedHashSet<String> values = new LinkedHashSet<>(getOldPasswords());
        values.add(normalized);
        prefs.edit().putStringSet(KEY_OLD_PASSWORDS_SET, values).apply();
    }

    public void clearActiveUserPassword() {
        selectStandardPassword();
    }

    public void clearOldPasswords() {
        prefs.edit().remove(KEY_OLD_PASSWORDS).remove(KEY_OLD_PASSWORDS_SET).apply();
    }

    private static String normalize(String value) {
        if (value == null) return null;
        String normalized = value.trim();
        return normalized.isEmpty() ? null : normalized;
    }

    private static void addCsvValues(Set<String> target, String value) {
        if (value == null || value.trim().isEmpty()) return;
        for (String item : value.split(",")) {
            String normalized = item.trim();
            if (!normalized.isEmpty()) target.add(normalized);
        }
    }
}
