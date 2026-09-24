package com.microsoft.identity.client.configuration;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AccountMode {
    private static final /* synthetic */ AccountMode[] $VALUES;
    public static final AccountMode MULTIPLE;
    public static final AccountMode SINGLE;

    static {
        AccountMode accountMode = new AccountMode("SINGLE", 0);
        SINGLE = accountMode;
        AccountMode accountMode2 = new AccountMode("MULTIPLE", 1);
        MULTIPLE = accountMode2;
        $VALUES = new AccountMode[]{accountMode, accountMode2};
    }

    public static AccountMode valueOf(String str) {
        return (AccountMode) Enum.valueOf(AccountMode.class, str);
    }

    public static AccountMode[] values() {
        return (AccountMode[]) $VALUES.clone();
    }
}
