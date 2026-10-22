package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class am4 {
    public static final am4 a;
    public static final am4 b;
    public static final am4 c;
    public static final /* synthetic */ am4[] d;

    static {
        am4 am4Var = new am4("DYNAMIC", 0);
        a = am4Var;
        am4 am4Var2 = new am4("STATIC", 1);
        b = am4Var2;
        am4 am4Var3 = new am4("DEFAULT_TYPING", 2);
        c = am4Var3;
        d = new am4[]{am4Var, am4Var2, am4Var3};
    }

    public static am4 valueOf(String str) {
        return (am4) Enum.valueOf(am4.class, str);
    }

    public static am4[] values() {
        return (am4[]) d.clone();
    }
}
