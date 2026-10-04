package com.bare.home.schedule;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

import com.bare.home.repository.LocalScheduleRepository;
import com.bare.home.repository.ScheduleRepository;
import com.bare.jobs.AlarmReceiver;
import com.bare.schedule.contracts.ReScheduleContracts;

/**
 * Concrete Android alarm boundary for the Reference schedule lifecycle.
 *
 * It owns only alarm delivery/recovery. Schedule selection and task execution
 * remain owned by ScheduleService/TaskService.
 */
public final class ScheduleAlarmController {
    private static final int REQUEST_CODE = 6205;
    private final Context context;
    private final AlarmManager alarmManager;
    private final ScheduleRepository schedules;

    public ScheduleAlarmController(Context context) {
        this(context, new LocalScheduleRepository(context));
    }

    public ScheduleAlarmController(Context context, ScheduleRepository schedules) {
        if (context == null) throw new NullPointerException("context");
        if (schedules == null) throw new NullPointerException("schedules");
        this.context = context.getApplicationContext();
        this.alarmManager = (AlarmManager) this.context.getSystemService(Context.ALARM_SERVICE);
        this.schedules = schedules;
    }

    public Result scheduleNext() {
        if (alarmManager == null) {
            return Result.failure("ALARM_SERVICE_UNAVAILABLE", null);
        }

        ScheduleRepository.ScheduleState state = schedules.load();
        if (state == null || !state.enabled) {
            cancel();
            return Result.skipped("SCHEDULE_DISABLED");
        }

        if (Build.VERSION.SDK_INT >= 31 && !alarmManager.canScheduleExactAlarms()) {
            return Result.blocked("EXACT_ALARM_UNAVAILABLE");
        }

        long triggerAt = nextTriggerMillis(state.startHour, state.startMinute);
        try {
            PendingIntent pending = pendingIntent();
            if (Build.VERSION.SDK_INT >= 23) {
                alarmManager.setExactAndAllowWhileIdle(
                        AlarmManager.RTC_WAKEUP, triggerAt, pending);
            } else {
                alarmManager.setExact(
                        AlarmManager.RTC_WAKEUP, triggerAt, pending);
            }
            return Result.scheduled(triggerAt);
        } catch (SecurityException e) {
            return Result.blocked(message(e));
        } catch (RuntimeException e) {
            return Result.failure("ALARM_SCHEDULE_FAILED", message(e));
        }
    }

    public void cancel() {
        if (alarmManager != null) alarmManager.cancel(pendingIntent());
    }

    public static long nextTriggerMillis(int hour, int minute) {
        java.util.Calendar now = java.util.Calendar.getInstance();
        java.util.Calendar next = (java.util.Calendar) now.clone();
        next.set(java.util.Calendar.HOUR_OF_DAY, Math.max(0, Math.min(23, hour)));
        next.set(java.util.Calendar.MINUTE, Math.max(0, Math.min(59, minute)));
        next.set(java.util.Calendar.SECOND, 0);
        next.set(java.util.Calendar.MILLISECOND, 0);
        if (!next.after(now)) next.add(java.util.Calendar.DAY_OF_YEAR, 1);
        return next.getTimeInMillis();
    }

    private PendingIntent pendingIntent() {
        Intent intent = new Intent(context, AlarmReceiver.class)
                .setAction(AlarmReceiver.ACTION_FIRE);
        int flags = PendingIntent.FLAG_UPDATE_CURRENT;
        if (Build.VERSION.SDK_INT >= 23) flags |= PendingIntent.FLAG_IMMUTABLE;
        return PendingIntent.getBroadcast(context, REQUEST_CODE, intent, flags);
    }

    private static String message(Throwable error) {
        String value = error == null ? null : error.getMessage();
        return value == null || value.isEmpty()
                ? error == null ? "unknown" : error.getClass().getSimpleName()
                : value;
    }

    public static final class Result {
        public enum State { SCHEDULED, SKIPPED, BLOCKED, FAILED }
        private final State state;
        private final long triggerAtMillis;
        private final String reason;

        private Result(State state, long triggerAtMillis, String reason) {
            this.state = state;
            this.triggerAtMillis = triggerAtMillis;
            this.reason = reason;
        }

        public static Result scheduled(long at) { return new Result(State.SCHEDULED, at, null); }
        public static Result skipped(String reason) { return new Result(State.SKIPPED, 0L, reason); }
        public static Result blocked(String reason) { return new Result(State.BLOCKED, 0L, reason); }
        public static Result failure(String reason, String detail) {
            return new Result(State.FAILED, 0L,
                    detail == null || detail.isEmpty() ? reason : reason + ": " + detail);
        }
        public State getState() { return state; }
        public long getTriggerAtMillis() { return triggerAtMillis; }
        public String getReason() { return reason; }
        public boolean isScheduled() { return state == State.SCHEDULED; }
    }
}
