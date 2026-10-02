package com.bare.settings;

import com.bare.core.state.SecureLocalState;

import org.json.JSONArray;

import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Canonical C09/F73 boundary for password strategy and persisted user-password state.
 *
 * The concrete secure preference implementation is intentionally downstream.
 */
public final class PasswordStrategyRepository {
    private final SecureLocalState secureState;

    public PasswordStrategyRepository(SecureLocalState secureState) {
        if (secureState == null) {
            throw new NullPointerException("secureState");
        }
        this.secureState = secureState;
    }

    public PasswordStrategy read() {
        return PasswordStrategy.fromOrdinal(
                secureState.getInt(
                        PasswordStrategy.KEY_SAVED_PASSWORD_MODE,
                        PasswordStrategy.STANDARD_PASSWORD.ordinal()));
    }

    public void write(PasswordStrategy strategy) {
        if (strategy == null) {
            throw new NullPointerException("strategy");
        }
        secureState.putInt(
                PasswordStrategy.KEY_SAVED_PASSWORD_MODE,
                strategy.ordinal());
    }

    public String readUserPassword() {
        return secureState.getString(
                PasswordStrategy.KEY_SAVED_USER_PASSWORD,
                null);
    }

    public void writeUserPassword(String password) {
        if (password == null) {
            secureState.remove(PasswordStrategy.KEY_SAVED_USER_PASSWORD);
        } else {
            secureState.putString(PasswordStrategy.KEY_SAVED_USER_PASSWORD, password);
        }
    }

    public Set<String> readOldUserPasswords() {
        String serialized = secureState.getString(
                PasswordStrategy.KEY_SAVED_OLD_USER_PASSWORDS,
                null);
        LinkedHashSet<String> result = new LinkedHashSet<>();
        if (serialized == null || serialized.isEmpty()) {
            return result;
        }

        try {
            JSONArray array = new JSONArray(serialized);
            for (int i = 0; i < array.length(); i++) {
                String value = array.optString(i, null);
                if (value != null && !value.isEmpty()) {
                    result.add(value);
                }
            }
        } catch (Exception ignored) {
            // Invalid secure-state payload is treated as an empty history.
        }
        return result;
    }

    public void writeOldUserPasswords(Set<String> passwords) {
        if (passwords == null || passwords.isEmpty()) {
            secureState.remove(PasswordStrategy.KEY_SAVED_OLD_USER_PASSWORDS);
            return;
        }

        JSONArray array = new JSONArray();
        for (String password : passwords) {
            if (password != null && !password.isEmpty()) {
                array.put(password);
            }
        }
        secureState.putString(
                PasswordStrategy.KEY_SAVED_OLD_USER_PASSWORDS,
                array.toString());
    }
}
