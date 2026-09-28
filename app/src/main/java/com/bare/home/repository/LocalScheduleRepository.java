package com.bare.home.repository;

import android.content.Context;
import android.content.SharedPreferences;

/** Local persistence for schedule configuration; backup execution remains a service boundary. */
public final class LocalScheduleRepository implements ScheduleRepository {
    private static final String PREFS = "bare_schedule";
    private final SharedPreferences prefs;

    public LocalScheduleRepository(Context context) {
        prefs = context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    @Override public ScheduleState load() {
        ScheduleState state = new ScheduleState();
        state.startHour = prefs.getInt("start_hour", 3);
        state.startMinute = prefs.getInt("start_minute", 0);
        state.batteryRequirement = prefs.getInt("battery_requirement", 0);
        state.batteryPercentRequirement = prefs.getInt("battery_percent_requirement", 50);
        state.enabled = prefs.getBoolean("enabled", false);
        state.globalError = prefs.getString("global_error", null);
        return state;
    }

    @Override public void save(ScheduleState state) {
        if (state == null) return;
        prefs.edit()
                .putInt("start_hour", state.startHour)
                .putInt("start_minute", state.startMinute)
                .putInt("battery_requirement", state.batteryRequirement)
                .putInt("battery_percent_requirement", state.batteryPercentRequirement)
                .putBoolean("enabled", state.enabled)
                .putString("global_error", state.globalError)
                .apply();
    }
}
