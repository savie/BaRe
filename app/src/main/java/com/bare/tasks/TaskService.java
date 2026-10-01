package com.bare.tasks;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

import com.bare.core.model.TaskState;

/**
 * Reference TaskService boundary.
 *
 * Execution, foreground-service handling, cancellation completion and feature
 * task dispatch remain downstream; state is exposed through TaskStateRegistry.
 */
public class TaskService extends Service {
    private final TaskStateRegistry stateRegistry = TaskStateRegistry.getInstance();

    public TaskStateRegistry getStateRegistry() {
        return stateRegistry;
    }

    public void publishState(TaskState state) {
        stateRegistry.publishServiceState(state);
    }

    @Override public IBinder onBind(Intent intent) { return null; }
}
