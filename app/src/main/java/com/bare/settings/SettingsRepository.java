package com.bare.settings;

import com.bare.core.state.LocalState;
import com.bare.settings.model.AppSettings;

/**
 * Canonical local settings boundary for frozen P3 settings consumers.
 *
 * Cloud settings sync/restore remains a downstream backend concern.
 */
public final class SettingsRepository {
    private final LocalState localState;

    public SettingsRepository(LocalState localState) {
        if (localState == null) {
            throw new NullPointerException("localState");
        }
        this.localState = localState;
    }

    public AppSettings read() {
        return new AppSettings(
                localState.getBoolean(
                        LocalState.KEY_PLAY_NOTIFICATION_SOUNDS,
                        true));
    }

    public void setPlayNotificationSounds(boolean enabled) {
        localState.putBoolean(LocalState.KEY_PLAY_NOTIFICATION_SOUNDS, enabled);
    }
}
