package com.bare.settings;

import com.bare.core.state.SecureLocalState;

/**
 * Canonical C09 boundary for the Reference saved_password_mode preference.
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
}
