package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pk4 {
    public static final pk4 a;
    public static final pk4 b;
    public static final pk4 c;
    public static final pk4 d;
    public static final pk4 e;
    public static final /* synthetic */ pk4[] f;

    static {
        pk4 pk4Var = new pk4("ALWAYS", 0);
        a = pk4Var;
        pk4 pk4Var2 = new pk4("NON_NULL", 1);
        b = pk4Var2;
        pk4 pk4Var3 = new pk4("NON_ABSENT", 2);
        pk4 pk4Var4 = new pk4("NON_EMPTY", 3);
        c = pk4Var4;
        pk4 pk4Var5 = new pk4("NON_DEFAULT", 4);
        d = pk4Var5;
        pk4 pk4Var6 = new pk4("CUSTOM", 5);
        pk4 pk4Var7 = new pk4("USE_DEFAULTS", 6);
        e = pk4Var7;
        f = new pk4[]{pk4Var, pk4Var2, pk4Var3, pk4Var4, pk4Var5, pk4Var6, pk4Var7};
    }

    public static pk4 valueOf(String str) {
        return (pk4) Enum.valueOf(pk4.class, str);
    }

    public static pk4[] values() {
        return (pk4[]) f.clone();
    }
}
