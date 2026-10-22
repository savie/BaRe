package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q66 {
    public static final n66 a;
    public static final o66 b;
    public static final p66 c;
    public static final /* synthetic */ q66[] d;

    static {
        n66 n66Var = new n66();
        a = n66Var;
        o66 o66Var = new o66();
        b = o66Var;
        p66 p66Var = new p66();
        c = p66Var;
        d = new q66[]{n66Var, o66Var, p66Var};
    }

    public static q66 valueOf(String str) {
        return (q66) Enum.valueOf(q66.class, str);
    }

    public static q66[] values() {
        return (q66[]) d.clone();
    }

    public abstract boolean a(boolean z);
}
