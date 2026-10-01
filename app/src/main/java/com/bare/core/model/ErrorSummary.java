package com.bare.core.model;

/** Reference TaskManager.ErrorSummary contract used by task UI. */
public final class ErrorSummary {
    public final boolean onlySafeErrors;
    public final String message;

    public ErrorSummary(boolean onlySafeErrors, String message) {
        this.onlySafeErrors = onlySafeErrors;
        this.message = message;
    }

    public boolean hasErrors() {
        return message != null && !message.isEmpty();
    }
}
