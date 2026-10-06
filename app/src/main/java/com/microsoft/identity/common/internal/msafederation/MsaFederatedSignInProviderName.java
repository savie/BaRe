package com.microsoft.identity.common.internal.msafederation;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MsaFederatedSignInProviderName {
    private static final /* synthetic */ MsaFederatedSignInProviderName[] $VALUES = {new MsaFederatedSignInProviderName("GOOGLE", 0), new MsaFederatedSignInProviderName("APPLE", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    MsaFederatedSignInProviderName EF5;

    public static MsaFederatedSignInProviderName valueOf(String str) {
        return (MsaFederatedSignInProviderName) Enum.valueOf(MsaFederatedSignInProviderName.class, str);
    }

    public static MsaFederatedSignInProviderName[] values() {
        return (MsaFederatedSignInProviderName[]) $VALUES.clone();
    }
}
