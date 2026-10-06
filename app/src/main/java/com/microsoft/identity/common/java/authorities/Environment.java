package com.microsoft.identity.common.java.authorities;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Environment {
    private static final /* synthetic */ Environment[] $VALUES;
    public static final Environment OneBox;
    public static final Environment PreProduction;
    public static final Environment Production;

    static {
        Environment environment = new Environment("PreProduction", 0);
        PreProduction = environment;
        Environment environment2 = new Environment("Production", 1);
        Production = environment2;
        Environment environment3 = new Environment("OneBox", 2);
        OneBox = environment3;
        $VALUES = new Environment[]{environment, environment2, environment3};
    }

    public static Environment valueOf(String str) {
        return (Environment) Enum.valueOf(Environment.class, str);
    }

    public static Environment[] values() {
        return (Environment[]) $VALUES.clone();
    }
}
