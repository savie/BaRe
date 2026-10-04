package com.bare.home.schedule;

import android.app.IntentService;
import android.content.Intent;
import android.os.BatteryManager;
import android.os.IBinder;

import com.bare.home.repository.LocalScheduleRepository;
import com.bare.home.repository.ScheduleRepository;
import com.bare.schedule.contracts.ReScheduleContracts;
import com.bare.tasks.TaskService;

import java.util.ArrayList;
import java.util.List;

/**
 * Reference schedule execution boundary.
 *
 * This service owns eligibility checks and task handoff. Feature task execution
 * belongs to TaskService and its registered providers.
 */
public final class ScheduleService extends IntentService {
    public static final String EXTRA_FORCED_RUN = "is_forced_run";
    public static final String EXTRA_RUN_MODE = "schedule_run_mode";
    public static final String EXTRA_HANDOFF_STATE = "schedule_handoff_state";

    public ScheduleService() {
        super("ScheduleService");
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        ScheduleRepository.ScheduleState state =
                new LocalScheduleRepository(this).load();
        boolean forced = intent != null && intent.getBooleanExtra(EXTRA_FORCED_RUN, false);
        String runMode = intent == null
                ? "SCHEDULES"
                : intent.getStringExtra(EXTRA_RUN_MODE);
        if (runMode == null || runMode.trim().isEmpty()) runMode = "SCHEDULES";

        if (state == null || (!state.enabled && !forced)) {
            persistOutcome(state, "SKIPPED", "SCHEDULE_DISABLED");
            return;
        }

        ReScheduleContracts.F74Eligibility eligibility =
                evaluateEligibility(state, forced);
        if (eligibility.decision() != ReScheduleContracts.F74Decision.RUN) {
            persistOutcome(state, eligibility.decision().name(), eligibility.handoffState());
            return;
        }

        List<String> ids = state.getNormalizedOrderIds();
        if (ids.isEmpty()) {
            persistOutcome(state, "SKIPPED", "NO_SCHEDULE_ITEMS");
            return;
        }

        Intent task = new Intent(this, TaskService.class)
                .putExtra(TaskService.EXTRA_RUN_MODE, runMode)
                .putExtra(TaskService.EXTRA_FORCED_RUN, forced)
                .putStringArrayListExtra(TaskService.EXTRA_SCHEDULE_ITEM_IDS,
                        new ArrayList<>(ids));
        try {
            startService(task);
            persistOutcome(state, "HANDED_OFF", "TASK_SERVICE");
        } catch (RuntimeException e) {
            persistOutcome(state, "FAILED", message(e));
        }
    }

    private ReScheduleContracts.F74Eligibility evaluateEligibility(
            ScheduleRepository.ScheduleState state, boolean forced) {
        boolean batterySatisfied = true;
        if (!forced) {
            if (state.batteryRequirement == 1) {
                BatteryManager manager = (BatteryManager) getSystemService(BATTERY_SERVICE);
                batterySatisfied = manager == null
                        || manager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
                        >= Math.max(0, Math.min(100, state.batteryPercentRequirement));
            } else if (state.batteryRequirement == 2) {
                Intent battery = registerReceiver(
                        null, new android.content.IntentFilter(Intent.ACTION_BATTERY_CHANGED));
                int plugged = battery == null ? 0
                        : battery.getIntExtra(BatteryManager.EXTRA_PLUGGED, 0);
                batterySatisfied = plugged == BatteryManager.BATTERY_PLUGGED_AC
                        || plugged == BatteryManager.BATTERY_PLUGGED_USB
                        || plugged == BatteryManager.BATTERY_PLUGGED_WIRELESS;
            }
        }

        if (!batterySatisfied) {
            return new ReScheduleContracts.F74Eligibility(
                    state.enabled, true, forced, false, false, true,
                    ReScheduleContracts.F74Decision.BLOCKED, "BATTERY_REQUIREMENT");
        }

        return new ReScheduleContracts.F74Eligibility(
                state.enabled, true, forced, true, true, true,
                ReScheduleContracts.F74Decision.RUN, "READY_FOR_TASK_SERVICE");
    }

    private void persistOutcome(
            ScheduleRepository.ScheduleState state, String outcome, String detail) {
        if (state == null) return;
        state.globalError = "schedule:" + outcome + ":" + detail;
        new LocalScheduleRepository(this).save(state);
    }

    private static String message(Throwable error) {
        String value = error == null ? null : error.getMessage();
        return value == null || value.isEmpty()
                ? error == null ? "unknown" : error.getClass().getSimpleName()
                : value;
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}
