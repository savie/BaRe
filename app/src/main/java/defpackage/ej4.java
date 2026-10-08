package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ej4 {
    public static final ej4 a;
    public static final ej4 b;
    public static final /* synthetic */ ej4[] c;

    static {
        ej4 ej4Var = new ej4("DEFAULT", 0);
        a = ej4Var;
        ej4 ej4Var2 = new ej4("DELEGATING", 1);
        ej4 ej4Var3 = new ej4("PROPERTIES", 2);
        ej4 ej4Var4 = new ej4("DISABLED", 3);
        b = ej4Var4;
        c = new ej4[]{ej4Var, ej4Var2, ej4Var3, ej4Var4};
    }

    public static ej4 valueOf(String str) {
        return (ej4) Enum.valueOf(ej4.class, str);
    }

    public static ej4[] values() {
        return (ej4[]) c.clone();
    }
}
