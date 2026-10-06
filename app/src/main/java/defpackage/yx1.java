package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yx1 {
    public static final yx1 a;
    public static final /* synthetic */ yx1[] b;

    static {
        yx1 yx1Var = new yx1("COROUTINE_SUSPENDED", 0);
        a = yx1Var;
        b = new yx1[]{yx1Var, new yx1("UNDECIDED", 1), new yx1("RESUMED", 2)};
    }

    public static yx1 valueOf(String str) {
        return (yx1) Enum.valueOf(yx1.class, str);
    }

    public static yx1[] values() {
        return (yx1[]) b.clone();
    }
}
