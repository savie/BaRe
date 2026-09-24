package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nh6 {
    public static final nh6 a;
    public static final nh6 b;
    public static final /* synthetic */ nh6[] c;

    static {
        nh6 nh6Var = new nh6("Strong", 0);
        a = nh6Var;
        nh6 nh6Var2 = new nh6("Weak", 1);
        b = nh6Var2;
        c = new nh6[]{nh6Var, nh6Var2};
    }

    public static nh6 valueOf(String str) {
        return (nh6) Enum.valueOf(nh6.class, str);
    }

    public static nh6[] values() {
        return (nh6[]) c.clone();
    }
}
