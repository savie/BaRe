package com.bare.core.model;

/**
 * Canonical C12 task observation contract.
 *
 * The fields mirror the Reference task surfaces: stable task identity/type,
 * lifecycle state, item progress, progress message, terminal outcome,
 * error/notice summary, cancellation intent, force-stop intent, and SLog
 * visibility. Population/execution remains downstream.
 */
public final class TaskSnapshot {
    private final String taskId;
    private final String taskType;
    private final TaskState state;
    private final int progress;
    private final int total;
    private final String progressMessage;
    private final TaskResult result;
    private final TaskErrorSummary errorSummary;
    private final boolean cancellationRequested;
    private final boolean forceStopRequested;
    private final boolean slogVisible;

    public TaskSnapshot(
            String taskId,
            String taskType,
            TaskState state,
            int progress,
            int total,
            String progressMessage,
            TaskResult result,
            TaskErrorSummary errorSummary,
            boolean cancellationRequested,
            boolean forceStopRequested,
            boolean slogVisible) {
        if (taskId == null) throw new NullPointerException("taskId");
        if (taskType == null) throw new NullPointerException("taskType");
        if (state == null) throw new NullPointerException("state");
        if (progressMessage == null) throw new NullPointerException("progressMessage");
        this.taskId = taskId;
        this.taskType = taskType;
        this.state = state;
        this.progress = progress;
        this.total = total;
        this.progressMessage = progressMessage;
        this.result = result;
        this.errorSummary = errorSummary == null
                ? new TaskErrorSummary("", false)
                : errorSummary;
        this.cancellationRequested = cancellationRequested;
        this.forceStopRequested = forceStopRequested;
        this.slogVisible = slogVisible;
    }

    public String getTaskId() { return taskId; }
    public String getTaskType() { return taskType; }
    public TaskState getState() { return state; }
    public int getProgress() { return progress; }
    public int getTotal() { return total; }
    public String getProgressMessage() { return progressMessage; }
    public TaskResult getResult() { return result; }
    public TaskErrorSummary getErrorSummary() { return errorSummary; }
    public boolean isCancellationRequested() { return cancellationRequested; }
    public boolean isForceStopRequested() { return forceStopRequested; }
    public boolean isSlogVisible() { return slogVisible; }
}
