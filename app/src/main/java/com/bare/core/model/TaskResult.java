package com.bare.core.model;

/** Reference jc2 terminal task/job outcomes. Execution remains downstream. */
public enum TaskResult {
    COMPLETED,
    CANCELLED,
    ERROR,
    TIMEOUT,
    START_BLOCKED_QUOTA,
    PROCESS_RESTARTED,
    HANDED_OFF
}
