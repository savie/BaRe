package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zl4 {
    public static final zl4 a;
    public static final /* synthetic */ zl4[] b;

    /* JADX INFO: Fake field, exist only in values array */
    zl4 EF0;

    static {
        zl4 zl4Var = new zl4("ALWAYS", 0);
        zl4 zl4Var2 = new zl4("NON_NULL", 1);
        zl4 zl4Var3 = new zl4("NON_DEFAULT", 2);
        zl4 zl4Var4 = new zl4("NON_EMPTY", 3);
        zl4 zl4Var5 = new zl4("DEFAULT_INCLUSION", 4);
        a = zl4Var5;
        b = new zl4[]{zl4Var, zl4Var2, zl4Var3, zl4Var4, zl4Var5};
    }

    public static zl4 valueOf(String str) {
        return (zl4) Enum.valueOf(zl4.class, str);
    }

    public static zl4[] values() {
        return (zl4[]) b.clone();
    }
}
