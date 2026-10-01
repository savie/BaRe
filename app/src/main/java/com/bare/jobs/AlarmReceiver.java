package com.bare.jobs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/**
 * Reference AlarmReceiver boundary.
 *
 * The Reference schedules the next alarm and hands off to ScheduleService.
 * P4 retains only the evidence-backed intent keys; AlarmManager and
 * foreground-service execution remain downstream.
 */
public class AlarmReceiver extends BroadcastReceiver {
    public static final String EXTRA_FORCED_RUN = "is_forced_run";
    public static final String EXTRA_RUN_MODE = "schedule_run_mode";

    @Override public void onReceive(Context context, Intent intent) {
        // Scheduling/Service handoff is deliberately deferred to the downstream
        // scheduler boundary; no fake execution is introduced in P4.
    }
}
