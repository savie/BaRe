package org.swiftapps.swiftbackup.tasks;

import defpackage.jz2;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class TaskManager$ErrorSummary {
    private final boolean isOnlySafeErrors;
    private final String msg;

    public TaskManager$ErrorSummary(String str, boolean z) {
        str.getClass();
        this.msg = str;
        this.isOnlySafeErrors = z;
    }

    public final String getMsg() {
        return this.msg;
    }

    @jz2
    public final boolean hasErrors() {
        return this.msg.length() > 0;
    }

    public final boolean isOnlySafeErrors() {
        return this.isOnlySafeErrors;
    }
}
