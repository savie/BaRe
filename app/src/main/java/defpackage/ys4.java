package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ys4 {
    public static final ys4 a;
    public static final ys4 b;
    public static final ys4 c;
    public static final /* synthetic */ ys4[] d;

    static {
        ys4 ys4Var = new ys4("SYNCHRONIZED", 0);
        a = ys4Var;
        ys4 ys4Var2 = new ys4("PUBLICATION", 1);
        b = ys4Var2;
        ys4 ys4Var3 = new ys4("NONE", 2);
        c = ys4Var3;
        d = new ys4[]{ys4Var, ys4Var2, ys4Var3};
    }

    public static ys4 valueOf(String str) {
        return (ys4) Enum.valueOf(ys4.class, str);
    }

    public static ys4[] values() {
        return (ys4[]) d.clone();
    }
}
