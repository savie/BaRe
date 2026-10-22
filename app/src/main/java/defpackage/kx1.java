package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kx1 {
    public static final kx1 a;
    public static final kx1 b;
    public static final /* synthetic */ kx1[] c;

    static {
        kx1 kx1Var = new kx1("BULLET", 0);
        a = kx1Var;
        kx1 kx1Var2 = new kx1("ORDERED", 1);
        b = kx1Var2;
        c = new kx1[]{kx1Var, kx1Var2};
    }

    public static kx1 valueOf(String str) {
        return (kx1) Enum.valueOf(kx1.class, str);
    }

    public static kx1[] values() {
        return (kx1[]) c.clone();
    }
}
