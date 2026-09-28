package com.bare.home.action;

/** Stable action IDs corresponding to the Reference Home quick-action IDs. */
public enum HomeAction {
    APPS(1), MESSAGES(2), CALL_LOGS(3), WALLPAPERS(4), WIFI(5), FOLDERS(6);

    public final int id;
    HomeAction(int id) { this.id = id; }

    public static HomeAction fromId(int id) {
        for (HomeAction value : values()) if (value.id == id) return value;
        return null;
    }
}
