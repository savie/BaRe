package com.bare.tasks;

import com.bare.core.model.TaskState;

/**
 * C13 job/task lifecycle boundary.
 *
 * This interface exposes observation and lifecycle intent only. Alarm,
 * foreground-service, WorkManager, and feature-job execution are downstream.
 */
public interface TaskJobLifecycle {
    TaskState getTaskState();
    void requestRun(TaskJobIntent intent);
    void requestCancel();
    void requestForceStop();
}
