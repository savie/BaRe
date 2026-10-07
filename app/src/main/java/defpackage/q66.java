package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class q66 {
    private final String name;
    private final int ordinal;
    public static final n66 a;
    public static final o66 b;
    public static final p66 c;
    public static final /* synthetic */ q66[] d;

    protected q66(String name, int ordinal) {
        this.name = name;
        this.ordinal = ordinal;
    }
    public final String name() { return this.name; }
    public final int ordinal() { return this.ordinal; }

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
        for (q66 value : d) if (value.name.equals(str)) return value;
        throw new IllegalArgumentException("No enum constant q66." + str);
    }

    public static q66[] values() {
        return d.clone();
    }

    public abstract boolean a(boolean z);
}
