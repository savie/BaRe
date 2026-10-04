package com.bare.tasks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/** Concrete cancellation handoff for the Reference task notification boundary. */
public final class NotificationTaskCancelReceiver extends BroadcastReceiver {
    public static final String ACTION_CANCEL = "com.bare.bare.ACTION_TASK_CANCEL";
    public static final String ACTION_FORCE_STOP = "com.bare.bare.ACTION_TASK_FORCE_STOP";

    @Override
    public void onReceive(Context context, Intent intent) {
        TaskStateRegistry registry = TaskStateRegistry.getInstance();
        String action = intent == null ? null : intent.getAction();
        if (ACTION_FORCE_STOP.equals(action)) {
            registry.requestForceStop();
        } else if (ACTION_CANCEL.equals(action)) {
            registry.requestCancel();
        }
    }
}
