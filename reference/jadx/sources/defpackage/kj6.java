package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kj6 {
    public static final kj6 a;
    public static final kj6 b;
    public static final /* synthetic */ kj6[] c;

    static {
        kj6 kj6Var = new kj6("AUTOMATIC", 0);
        a = kj6Var;
        kj6 kj6Var2 = new kj6("HARDWARE", 1);
        b = kj6Var2;
        c = new kj6[]{kj6Var, kj6Var2, new kj6("SOFTWARE", 2)};
    }

    public static kj6 valueOf(String str) {
        return (kj6) Enum.valueOf(kj6.class, str);
    }

    public static kj6[] values() {
        return (kj6[]) c.clone();
    }
}
