package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d66 {
    public static final d66 a;
    public static final d66 b;
    public static final d66 c;
    public static final /* synthetic */ d66[] d;

    static {
        d66 d66Var = new d66("DEFAULT", 0);
        a = d66Var;
        d66 d66Var2 = new d66("VERY_LOW", 1);
        b = d66Var2;
        d66 d66Var3 = new d66("HIGHEST", 2);
        c = d66Var3;
        d = new d66[]{d66Var, d66Var2, d66Var3};
    }

    public static d66 valueOf(String str) {
        return (d66) Enum.valueOf(d66.class, str);
    }

    public static d66[] values() {
        return (d66[]) d.clone();
    }
}
