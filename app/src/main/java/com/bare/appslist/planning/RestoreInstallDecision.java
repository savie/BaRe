package com.bare.appslist.planning;
public final class RestoreInstallDecision {
    public enum Kind { INSTALL, RETRY, DOWNGRADE_REQUIRES_PREPARATION, SECONDARY_USER_REQUIRES_PREPARATION, REJECT }
    private final Kind kind; private final String reason;
    public RestoreInstallDecision(Kind kind,String reason){if(kind==null)throw new IllegalArgumentException("kind");this.kind=kind;this.reason=reason;}
    public Kind getKind(){return kind;} public String getReason(){return reason;}
}