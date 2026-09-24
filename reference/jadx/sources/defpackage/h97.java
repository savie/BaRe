package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h97 {
    public static final h97 a;
    public static final h97 b;
    public static final /* synthetic */ h97[] c;

    static {
        h97 h97Var = new h97("CRASHLYTICS", 0);
        a = h97Var;
        h97 h97Var2 = new h97("PERFORMANCE", 1);
        b = h97Var2;
        c = new h97[]{h97Var, h97Var2, new h97("MATT_SAYS_HI", 2)};
    }

    public static h97 valueOf(String str) {
        return (h97) Enum.valueOf(h97.class, str);
    }

    public static h97[] values() {
        return (h97[]) c.clone();
    }
}
