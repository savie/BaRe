package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cs5 {
    public static final cs5 a;
    public static final cs5 b;
    public static final cs5 c;
    public static final /* synthetic */ cs5[] d;

    static {
        cs5 cs5Var = new cs5("NO_OP", 0);
        a = cs5Var;
        cs5 cs5Var2 = new cs5("ADD", 1);
        b = cs5Var2;
        cs5 cs5Var3 = new cs5("REMOVE", 2);
        c = cs5Var3;
        d = new cs5[]{cs5Var, cs5Var2, cs5Var3};
    }

    public static cs5 valueOf(String str) {
        return (cs5) Enum.valueOf(cs5.class, str);
    }

    public static cs5[] values() {
        return (cs5[]) d.clone();
    }
}
