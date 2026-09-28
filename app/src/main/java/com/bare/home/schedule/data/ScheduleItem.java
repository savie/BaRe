package com.bare.home.schedule.data;

/** Reference ScheduleItem.Type constants from Home schedule domain. */
public final class ScheduleItem {
    private ScheduleItem() { }

    public enum Type {
        APP_CONFIG(101),
        APPS_LABELS(102),
        APPS_QUICK_ACTIONS(103),
        MESSAGES(201),
        CALL_LOGS(301),
        WALLPAPERS(401),
        WIFI(501),
        FOLDERS(601);

        public final int constant;
        Type(int constant) { this.constant = constant; }
    }
}
