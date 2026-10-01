package com.bare.settings;

/**
 * Reference ux5-equivalent password strategy.
 *
 * The persisted representation is the enum ordinal under saved_password_mode.
 * Password generation, encryption and restore are downstream execution concerns.
 */
public enum PasswordStrategy {
    STANDARD_PASSWORD,
    USER_PASSWORD
}
