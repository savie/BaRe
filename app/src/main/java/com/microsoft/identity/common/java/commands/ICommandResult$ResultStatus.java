package com.microsoft.identity.common.java.commands;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ICommandResult$ResultStatus {
    private static final /* synthetic */ ICommandResult$ResultStatus[] $VALUES;
    public static final ICommandResult$ResultStatus CANCEL;
    public static final ICommandResult$ResultStatus COMPLETED;
    public static final ICommandResult$ResultStatus ERROR;
    public static final ICommandResult$ResultStatus VOID;

    static {
        ICommandResult$ResultStatus iCommandResult$ResultStatus = new ICommandResult$ResultStatus("CANCEL", 0);
        CANCEL = iCommandResult$ResultStatus;
        ICommandResult$ResultStatus iCommandResult$ResultStatus2 = new ICommandResult$ResultStatus("COMPLETED", 1);
        COMPLETED = iCommandResult$ResultStatus2;
        ICommandResult$ResultStatus iCommandResult$ResultStatus3 = new ICommandResult$ResultStatus("ERROR", 2);
        ERROR = iCommandResult$ResultStatus3;
        ICommandResult$ResultStatus iCommandResult$ResultStatus4 = new ICommandResult$ResultStatus("VOID", 3);
        VOID = iCommandResult$ResultStatus4;
        $VALUES = new ICommandResult$ResultStatus[]{iCommandResult$ResultStatus, iCommandResult$ResultStatus2, iCommandResult$ResultStatus3, iCommandResult$ResultStatus4};
    }

    public static ICommandResult$ResultStatus valueOf(String str) {
        return (ICommandResult$ResultStatus) Enum.valueOf(ICommandResult$ResultStatus.class, str);
    }

    public static ICommandResult$ResultStatus[] values() {
        return (ICommandResult$ResultStatus[]) $VALUES.clone();
    }
}
