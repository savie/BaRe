package com.bare.appslist.planning;
public final class BackupPlanDecision {
    public enum Kind { BACKUP, SKIP_IDENTICAL, SKIP_NO_CHANGE, EXCLUDED }
    private final Kind kind; private final String reason;
    public BackupPlanDecision(Kind kind,String reason){if(kind==null)throw new IllegalArgumentException("kind");this.kind=kind;this.reason=reason;}
    public Kind getKind(){return kind;} public String getReason(){return reason;}
}