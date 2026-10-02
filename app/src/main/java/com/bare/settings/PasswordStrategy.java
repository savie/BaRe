package com.bare.settings;

/**
 * Reference ux5-equivalent password strategy.
 *
 * Reference persists the ordinal in the secure V.getZ() preference boundary.
 * This enum defines only the supported strategy values; secure persistence
 * remains behind SecureLocalState.
 */
public enum PasswordStrategy {
    STANDARD_PASSWORD,
    USER_PASSWORD;

    public static final String KEY_SAVED_PASSWORD_MODE = "saved_password_mode";
    public static final String KEY_SAVED_USER_PASSWORD = "saved_user_password";
    public static final String KEY_SAVED_OLD_USER_PASSWORDS = "saved_old_user_passwords";

    public static PasswordStrategy fromOrdinal(int ordinal) {
        PasswordStrategy[] values = values();
        return ordinal >= 0 && ordinal < values.length
                ? values[ordinal]
                : STANDARD_PASSWORD;
    }
}
