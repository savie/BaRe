package com.bare.settings.model;

/**
 * Minimal Reference-shaped settings model required by frozen P3 consumers.
 *
 * Reference AppSettings contains many persisted fields, but P4 only promotes
 * fields with an established frozen-P3 consumer. Cloud serialization/sync is
 * intentionally outside this local contract.
 */
public final class AppSettings {
    private final Boolean isPlayNotificationSounds;

    public AppSettings(Boolean isPlayNotificationSounds) {
        this.isPlayNotificationSounds = isPlayNotificationSounds;
    }

    public Boolean isPlayNotificationSounds() {
        return isPlayNotificationSounds;
    }
}
