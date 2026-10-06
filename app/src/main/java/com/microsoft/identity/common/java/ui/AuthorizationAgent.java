package com.microsoft.identity.common.java.ui;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class AuthorizationAgent {
    private static final /* synthetic */ AuthorizationAgent[] $VALUES;
    public static final AuthorizationAgent BROWSER;
    public static final AuthorizationAgent DEFAULT;
    public static final AuthorizationAgent WEBVIEW;

    static {
        AuthorizationAgent authorizationAgent = new AuthorizationAgent("DEFAULT", 0);
        DEFAULT = authorizationAgent;
        AuthorizationAgent authorizationAgent2 = new AuthorizationAgent("WEBVIEW", 1);
        WEBVIEW = authorizationAgent2;
        AuthorizationAgent authorizationAgent3 = new AuthorizationAgent("BROWSER", 2);
        BROWSER = authorizationAgent3;
        $VALUES = new AuthorizationAgent[]{authorizationAgent, authorizationAgent2, authorizationAgent3};
    }

    public static AuthorizationAgent valueOf(String str) {
        return (AuthorizationAgent) Enum.valueOf(AuthorizationAgent.class, str);
    }

    public static AuthorizationAgent[] values() {
        return (AuthorizationAgent[]) $VALUES.clone();
    }
}
