package com.bare.appconfigs.data;

/**
 * F09/F62 boundary marker. This class does not execute or construct backup/restore tasks.
 */
public final class AppConfigTaskMapper {
    private AppConfigTaskMapper() {}

    public static AppConfigTaskInput toTaskInput(AppConfig config) {
        if (config == null) throw new IllegalArgumentException("config");
        return new AppConfigTaskInput(config.id, true);
    }
}