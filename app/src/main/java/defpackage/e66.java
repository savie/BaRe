package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e66 {
    public static final e66 a;
    public static final e66 b;
    public static final e66 c;
    public static final e66 d;
    public static final /* synthetic */ e66[] e;

    static {
        e66 e66Var = new e66("IMMEDIATE", 0);
        a = e66Var;
        e66 e66Var2 = new e66("HIGH", 1);
        b = e66Var2;
        e66 e66Var3 = new e66("NORMAL", 2);
        c = e66Var3;
        e66 e66Var4 = new e66("LOW", 3);
        d = e66Var4;
        e = new e66[]{e66Var, e66Var2, e66Var3, e66Var4};
    }

    public static e66 valueOf(String str) {
        return (e66) Enum.valueOf(e66.class, str);
    }

    public static e66[] values() {
        return (e66[]) e.clone();
    }
}
