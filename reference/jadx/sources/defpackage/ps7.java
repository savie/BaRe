package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ps7 {
    public static final ps7 a;
    public static final ps7 b;
    public static final ps7 c;
    public static final ps7 d;
    public static final ps7 e;
    public static final /* synthetic */ ps7[] f;

    static {
        ps7 ps7Var = new ps7("END", 0);
        a = ps7Var;
        ps7 ps7Var2 = new ps7("ROLLBACK", 1);
        b = ps7Var2;
        ps7 ps7Var3 = new ps7("BEGIN_EXCLUSIVE", 2);
        c = ps7Var3;
        ps7 ps7Var4 = new ps7("BEGIN_IMMEDIATE", 3);
        d = ps7Var4;
        ps7 ps7Var5 = new ps7("BEGIN_DEFERRED", 4);
        e = ps7Var5;
        f = new ps7[]{ps7Var, ps7Var2, ps7Var3, ps7Var4, ps7Var5};
    }

    public static ps7 valueOf(String str) {
        return (ps7) Enum.valueOf(ps7.class, str);
    }

    public static ps7[] values() {
        return (ps7[]) f.clone();
    }
}
