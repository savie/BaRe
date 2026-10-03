package com.bare.appslist.restore;

/** Per-part restore outcome defined by the recovered Reference lifecycle contract. */
public final class RestorePartOutcome {
    public enum Status {
        SKIPPED,
        RESTORED,
        FAILED,
        NO_BACKUP,
        TARGET_UNAVAILABLE
    }

    private final String partId;
    private final Status status;
    private final String reason;

    public RestorePartOutcome(String partId, Status status, String reason) {
        if (partId == null || partId.isEmpty()) throw new IllegalArgumentException("partId");
        if (status == null) throw new IllegalArgumentException("status");
        this.partId = partId;
        this.status = status;
        this.reason = reason;
    }

    public String getPartId() { return partId; }
    public Status getStatus() { return status; }
    public String getReason() { return reason; }
}
