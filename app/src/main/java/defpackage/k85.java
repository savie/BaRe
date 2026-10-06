package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class k85 {
    public static final k85 a;
    public static final k85 b;
    public static final k85 c;
    public static final k85 d;
    public static final /* synthetic */ k85[] e;

    static {
        k85 k85Var = new k85("NONE", 0);
        a = k85Var;
        k85 k85Var2 = new k85("START", 1);
        b = k85Var2;
        k85 k85Var3 = new k85("END", 2);
        c = k85Var3;
        k85 k85Var4 = new k85("BOTH", 3);
        d = k85Var4;
        e = new k85[]{k85Var, k85Var2, k85Var3, k85Var4};
    }

    public static k85 valueOf(String str) {
        return (k85) Enum.valueOf(k85.class, str);
    }

    public static k85[] values() {
        return (k85[]) e.clone();
    }
}
