package com.bare.core.model;

/** Reference TaskManager$ErrorSummary shape. */
public final class TaskErrorSummary {
    private final String msg;
    private final boolean onlySafeErrors;

    public TaskErrorSummary(String msg, boolean onlySafeErrors) {
        if (msg == null) {
            throw new NullPointerException("msg");
        }
        this.msg = msg;
        this.onlySafeErrors = onlySafeErrors;
    }

    public String getMsg() { return msg; }

    public boolean hasErrors() { return !msg.isEmpty(); }

    public boolean isOnlySafeErrors() { return onlySafeErrors; }
}
