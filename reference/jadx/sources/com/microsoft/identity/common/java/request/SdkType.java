package com.microsoft.identity.common.java.request;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SdkType {
    private static final /* synthetic */ SdkType[] $VALUES;
    public static final SdkType ADAL;
    public static final SdkType MSAL;
    public static final SdkType MSAL_CPP;
    public static final SdkType MSAL_XPLAT_LINUX;
    public static final SdkType UNKNOWN;

    static {
        SdkType sdkType = new SdkType("ADAL", 0);
        ADAL = sdkType;
        SdkType sdkType2 = new SdkType("MSAL", 1);
        MSAL = sdkType2;
        SdkType sdkType3 = new SdkType("MSAL_CPP", 2);
        MSAL_CPP = sdkType3;
        SdkType sdkType4 = new SdkType("MSAL_XPLAT_LINUX", 3);
        MSAL_XPLAT_LINUX = sdkType4;
        SdkType sdkType5 = new SdkType("UNKNOWN", 4);
        UNKNOWN = sdkType5;
        $VALUES = new SdkType[]{sdkType, sdkType2, sdkType3, sdkType4, sdkType5};
    }

    public static SdkType valueOf(String str) {
        return (SdkType) Enum.valueOf(SdkType.class, str);
    }

    public static SdkType[] values() {
        return (SdkType[]) $VALUES.clone();
    }

    public final String getProductName() {
        if (ADAL == this || MSAL == this) {
            return "MSAL.Android";
        }
        if (MSAL_CPP == this) {
            return "MSAL.xplat.Android";
        }
        return MSAL_XPLAT_LINUX == this ? "MSAL.xplat.Linux" : "";
    }
}
