package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eg2 {
    public static final eg2 a;
    public static final eg2 b;
    public static final /* synthetic */ eg2[] c;

    static {
        eg2 eg2Var = new eg2("FIELD", 0);
        a = eg2Var;
        eg2 eg2Var2 = new eg2("PROPERTY", 1);
        b = eg2Var2;
        c = new eg2[]{eg2Var, eg2Var2};
    }

    public static eg2 valueOf(String str) {
        return (eg2) Enum.valueOf(eg2.class, str);
    }

    public static eg2[] values() {
        return (eg2[]) c.clone();
    }
}
