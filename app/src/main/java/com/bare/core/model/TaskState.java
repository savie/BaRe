package com.bare.core.model;

/** Reference gz7 task lifecycle state. Execution remains outside this contract. */
public enum TaskState {
    WAITING,
    RUNNING,
    COMPLETE,
    CANCELLED,
    CANCEL_COMPLETE;

    public boolean isWaiting() { return this == WAITING; }
    public boolean isRunning() { return this == RUNNING; }
    public boolean isComplete() { return this == COMPLETE; }
    public boolean isCancelled() { return this == CANCELLED || this == CANCEL_COMPLETE; }
    public boolean isCancelling() { return this == CANCELLED; }
    public boolean isCancelComplete() { return this == CANCEL_COMPLETE; }
}
