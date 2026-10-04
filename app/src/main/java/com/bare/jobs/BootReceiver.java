package com.bare.jobs;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.bare.home.repository.LocalScheduleRepository;
import com.bare.home.schedule.ScheduleAlarmController;

/**
 * Reference boot-recovery boundary.
 *
 * Re-registers the persisted schedule alarm after BOOT_COMPLETED only when
 * scheduling is enabled and the platform permits exact alarms.
 */
public final class BootReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if (context == null) return;
        if (intent == null
                || !Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
            return;
        }

        LocalScheduleRepository repository = new LocalScheduleRepository(context);
        if (!repository.load().enabled) return;
        new ScheduleAlarmController(context, repository).scheduleNext();
    }
}
