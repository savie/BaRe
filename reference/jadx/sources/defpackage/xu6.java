package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xu6 implements sx2 {
    public static final xu6 a;
    public static final /* synthetic */ xu6[] b;

    static {
        xu6 xu6Var = new xu6("SHA_512", 0);
        a = xu6Var;
        b = new xu6[]{xu6Var};
    }

    public static xu6 valueOf(String str) {
        return (xu6) Enum.valueOf(xu6.class, str);
    }

    public static xu6[] values() {
        return (xu6[]) b.clone();
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return 1L;
    }
}
