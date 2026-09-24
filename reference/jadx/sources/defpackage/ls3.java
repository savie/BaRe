package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ls3 {
    public static final ls3 a;
    public static final ls3 b;
    public static final ls3 c;
    public static final ls3 d;
    public static final ls3 e;
    public static final /* synthetic */ ls3[] f;

    static {
        ls3 ls3Var = new ls3("ON_CONFIGURE", 0);
        a = ls3Var;
        ls3 ls3Var2 = new ls3("ON_CREATE", 1);
        b = ls3Var2;
        ls3 ls3Var3 = new ls3("ON_UPGRADE", 2);
        c = ls3Var3;
        ls3 ls3Var4 = new ls3("ON_DOWNGRADE", 3);
        d = ls3Var4;
        ls3 ls3Var5 = new ls3("ON_OPEN", 4);
        e = ls3Var5;
        f = new ls3[]{ls3Var, ls3Var2, ls3Var3, ls3Var4, ls3Var5};
    }

    public static ls3 valueOf(String str) {
        return (ls3) Enum.valueOf(ls3.class, str);
    }

    public static ls3[] values() {
        return (ls3[]) f.clone();
    }
}
