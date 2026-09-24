package com.microsoft.identity.client;

import defpackage.c6;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Prompt {
    private static final /* synthetic */ Prompt[] $VALUES = {new Prompt("SELECT_ACCOUNT", 0), new Prompt("LOGIN", 1), new Prompt("CONSENT", 2), new Prompt("CREATE", 3), new Prompt("WHEN_REQUIRED", 4)};

    /* JADX INFO: Fake field, exist only in values array */
    Prompt EF5;

    public static Prompt valueOf(String str) {
        return (Prompt) Enum.valueOf(Prompt.class, str);
    }

    public static Prompt[] values() {
        return (Prompt[]) $VALUES.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        int iOrdinal = ordinal();
        if (iOrdinal == 0) {
            return "SELECT_ACCOUNT".toLowerCase(Locale.ROOT);
        }
        if (iOrdinal == 1) {
            return "LOGIN".toLowerCase(Locale.ROOT);
        }
        if (iOrdinal == 2) {
            return "CONSENT".toLowerCase(Locale.ROOT);
        }
        if (iOrdinal == 3) {
            return "CREATE".toLowerCase(Locale.ROOT);
        }
        if (iOrdinal == 4) {
            return "WHEN_REQUIRED".toLowerCase(Locale.ROOT);
        }
        c6.b();
        return null;
    }
}
