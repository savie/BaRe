package com.microsoft.identity.common.java.providers.oauth2;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AuthorizationStatus {
    private static final /* synthetic */ AuthorizationStatus[] $VALUES;
    public static final AuthorizationStatus FAIL;
    public static final AuthorizationStatus SDK_CANCEL;
    public static final AuthorizationStatus SUCCESS;
    public static final AuthorizationStatus TIMED_OUT;
    public static final AuthorizationStatus USER_CANCEL;

    static {
        AuthorizationStatus authorizationStatus = new AuthorizationStatus("SUCCESS", 0);
        SUCCESS = authorizationStatus;
        AuthorizationStatus authorizationStatus2 = new AuthorizationStatus("USER_CANCEL", 1);
        USER_CANCEL = authorizationStatus2;
        AuthorizationStatus authorizationStatus3 = new AuthorizationStatus("SDK_CANCEL", 2);
        SDK_CANCEL = authorizationStatus3;
        AuthorizationStatus authorizationStatus4 = new AuthorizationStatus("FAIL", 3);
        FAIL = authorizationStatus4;
        AuthorizationStatus authorizationStatus5 = new AuthorizationStatus("INVALID_REQUEST", 4);
        AuthorizationStatus authorizationStatus6 = new AuthorizationStatus("TIMED_OUT", 5);
        TIMED_OUT = authorizationStatus6;
        $VALUES = new AuthorizationStatus[]{authorizationStatus, authorizationStatus2, authorizationStatus3, authorizationStatus4, authorizationStatus5, authorizationStatus6};
    }

    public static AuthorizationStatus valueOf(String str) {
        return (AuthorizationStatus) Enum.valueOf(AuthorizationStatus.class, str);
    }

    public static AuthorizationStatus[] values() {
        return (AuthorizationStatus[]) $VALUES.clone();
    }
}
