package com.bare.jobs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.bare.home.schedule.ScheduleAlarmController;
import com.bare.home.schedule.ScheduleService;

/**
 * Reference AlarmReceiver boundary.
 *
 * Owns alarm recovery/delivery only. ScheduleService owns schedule eligibility
 * and hands runnable work to TaskService.
 */
public final class AlarmReceiver extends BroadcastReceiver {
    public static final String ACTION_FIRE = "com.bare.bare.ACTION_SCHEDULE_ALARM";
    public static final String EXTRA_FORCED_RUN = "is_forced_run";
    public static final String EXTRA_RUN_MODE = "schedule_run_mode";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (context == null) return;

        ScheduleAlarmController.Result next =
                new ScheduleAlarmController(context).scheduleNext();

        if (next.getState() == ScheduleAlarmController.Result.State.FAILED) return;

        Intent service = new Intent(context, ScheduleService.class)
                .putExtra(EXTRA_FORCED_RUN, false)
                .putExtra(EXTRA_RUN_MODE, "SCHEDULES");
        try {
            context.startService(service);
        } catch (RuntimeException ignored) {
            // Android service-start restrictions are runtime evidence; no task
            // success is fabricated when handoff cannot be accepted.
        }
    }
}
