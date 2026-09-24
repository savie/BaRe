package com.microsoft.identity.common.java.controllers;

import com.microsoft.identity.common.java.commands.ICommandResult$ResultStatus;
import defpackage.f6;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CommandResult<T> {
    private final String mCorrelationId;
    private final T mResult;
    private final ICommandResult$ResultStatus mStatus;
    private List<Map<String, String>> mTelemetryMap;

    public CommandResult(ICommandResult$ResultStatus iCommandResult$ResultStatus, T t, String str) {
        new ArrayList();
        if (t == null) {
            f6.n("result is marked non-null but is null");
            throw null;
        }
        this.mStatus = iCommandResult$ResultStatus;
        this.mResult = t;
        this.mCorrelationId = str == null ? "UNSET" : str;
    }

    public static CommandResult<Void> ofNull(ICommandResult$ResultStatus iCommandResult$ResultStatus, String str) {
        return new CommandResult<>(iCommandResult$ResultStatus, str);
    }

    public final String getCorrelationId() {
        return this.mCorrelationId;
    }

    public final T getResult() {
        return this.mResult;
    }

    public final ICommandResult$ResultStatus getStatus() {
        return this.mStatus;
    }

    public final void setTelemetryMap(List<Map<String, String>> list) {
        this.mTelemetryMap = list;
    }

    private CommandResult(ICommandResult$ResultStatus iCommandResult$ResultStatus, String str) {
        new ArrayList();
        this.mStatus = iCommandResult$ResultStatus;
        this.mResult = null;
        this.mCorrelationId = str == null ? "UNSET" : str;
    }
}
