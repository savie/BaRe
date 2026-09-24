package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lg4 {
    public static final lg4 a;
    public static final lg4 b;
    public static final /* synthetic */ lg4[] c;

    static {
        lg4 lg4Var = new lg4("Synchronously", 0);
        a = lg4Var;
        lg4 lg4Var2 = new lg4("Asynchronously", 1);
        b = lg4Var2;
        c = new lg4[]{lg4Var, lg4Var2};
    }

    public static lg4 valueOf(String str) {
        return (lg4) Enum.valueOf(lg4.class, str);
    }

    public static lg4[] values() {
        return (lg4[]) c.clone();
    }
}
