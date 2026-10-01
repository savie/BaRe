package com.bare.core.model;

/**
 * Reference-equivalent task error summary contract.
 *
 * Reference shape: TaskManager.ErrorSummary(String msg, boolean isOnlySafeErrors).
 */
public final class ErrorSummary {
    private final String msg;
    private final boolean isOnlySafeErrors;

    public ErrorSummary(String msg, boolean isOnlySafeErrors) {
        if (msg == null) {
            throw new NullPointerException("msg");
        }
        this.msg = msg;
        this.isOnlySafeErrors = isOnlySafeErrors;
    }

    public String getMsg() {
        return msg;
    }

    public boolean hasErrors() {
        return msg.length() > 0;
    }

    public boolean isOnlySafeErrors() {
        return isOnlySafeErrors;
    }
}
