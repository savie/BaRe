package com.bare.jobs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.bare.tasks.TaskJobIntent;
import com.bare.tasks.TaskJobRunMode;

/**
 * Reference AlarmReceiver boundary.
 *
 * The Reference schedules the next alarm and hands off to ScheduleService.
 * P4 retains only the intent shape; AlarmManager/foreground/service execution
 * remains downstream.
 */
public class AlarmReceiver extends BroadcastReceiver {
    public static final String EXTRA_FORCED_RUN = "is_forced_run";
    public static final String EXTRA_RUN_MODE = "schedule_run_mode";

    public static TaskJobIntent readIntent(Intent intent) {
        if (intent == null) {
            return new TaskJobIntent(TaskJobRunMode.SCHEDULES, java.util.Collections.emptyList(), false);
        }
        return new TaskJobIntent(
                TaskJobRunMode.SCHEDULES,
                java.util.Collections.emptyList(),
                intent.getBooleanExtra(EXTRA_FORCED_RUN, true));
    }

    @Override public void onReceive(Context context, Intent intent) {
        // Scheduling/Service handoff is deliberately deferred to the downstream
        // scheduler boundary; no fake execution is introduced in P4.
    }
}
