package com.microsoft.identity.common.java.providers.oauth2;

import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class OpenIdConnectPromptParameter {
    private static final /* synthetic */ OpenIdConnectPromptParameter[] $VALUES;
    public static final OpenIdConnectPromptParameter CONSENT;
    public static final OpenIdConnectPromptParameter CREATE;
    public static final OpenIdConnectPromptParameter LOGIN;
    public static final OpenIdConnectPromptParameter SELECT_ACCOUNT;
    public static final OpenIdConnectPromptParameter UNSET;

    static {
        OpenIdConnectPromptParameter openIdConnectPromptParameter = new OpenIdConnectPromptParameter("UNSET", 0);
        UNSET = openIdConnectPromptParameter;
        OpenIdConnectPromptParameter openIdConnectPromptParameter2 = new OpenIdConnectPromptParameter("NONE", 1);
        OpenIdConnectPromptParameter openIdConnectPromptParameter3 = new OpenIdConnectPromptParameter("SELECT_ACCOUNT", 2);
        SELECT_ACCOUNT = openIdConnectPromptParameter3;
        OpenIdConnectPromptParameter openIdConnectPromptParameter4 = new OpenIdConnectPromptParameter("LOGIN", 3);
        LOGIN = openIdConnectPromptParameter4;
        OpenIdConnectPromptParameter openIdConnectPromptParameter5 = new OpenIdConnectPromptParameter("CONSENT", 4);
        CONSENT = openIdConnectPromptParameter5;
        OpenIdConnectPromptParameter openIdConnectPromptParameter6 = new OpenIdConnectPromptParameter("CREATE", 5);
        CREATE = openIdConnectPromptParameter6;
        $VALUES = new OpenIdConnectPromptParameter[]{openIdConnectPromptParameter, openIdConnectPromptParameter2, openIdConnectPromptParameter3, openIdConnectPromptParameter4, openIdConnectPromptParameter5, openIdConnectPromptParameter6};
    }

    public static OpenIdConnectPromptParameter valueOf(String str) {
        return (OpenIdConnectPromptParameter) Enum.valueOf(OpenIdConnectPromptParameter.class, str);
    }

    public static OpenIdConnectPromptParameter[] values() {
        return (OpenIdConnectPromptParameter[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this == UNSET ? "" : name().toLowerCase(Locale.ROOT);
    }
}
