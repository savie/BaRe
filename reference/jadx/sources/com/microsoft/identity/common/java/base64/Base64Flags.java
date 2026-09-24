package com.microsoft.identity.common.java.base64;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Base64Flags {
    private static final /* synthetic */ Base64Flags[] $VALUES;
    public static final Base64Flags DEFAULT;
    public static final Base64Flags NO_PADDING;
    public static final Base64Flags NO_WRAP;
    public static final Base64Flags URL_SAFE;

    static {
        Base64Flags base64Flags = new Base64Flags("DEFAULT", 0);
        DEFAULT = base64Flags;
        Base64Flags base64Flags2 = new Base64Flags("NO_PADDING", 1);
        NO_PADDING = base64Flags2;
        Base64Flags base64Flags3 = new Base64Flags("NO_WRAP", 2);
        NO_WRAP = base64Flags3;
        Base64Flags base64Flags4 = new Base64Flags("URL_SAFE", 3);
        URL_SAFE = base64Flags4;
        $VALUES = new Base64Flags[]{base64Flags, base64Flags2, base64Flags3, base64Flags4};
    }

    public static Base64Flags valueOf(String str) {
        return (Base64Flags) Enum.valueOf(Base64Flags.class, str);
    }

    public static Base64Flags[] values() {
        return (Base64Flags[]) $VALUES.clone();
    }
}
