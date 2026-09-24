package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ra3 {
    public static final ra3 a;
    public static final /* synthetic */ ra3[] b;

    static {
        ra3 ra3Var = new ra3("TOP_DOWN", 0);
        a = ra3Var;
        b = new ra3[]{ra3Var, new ra3("BOTTOM_UP", 1)};
    }

    public static ra3 valueOf(String str) {
        return (ra3) Enum.valueOf(ra3.class, str);
    }

    public static ra3[] values() {
        return (ra3[]) b.clone();
    }
}
