package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pd2 {
    public static final pd2 a;
    public static final pd2 b;
    public static final pd2 c;
    public static final /* synthetic */ pd2[] d;

    static {
        pd2 pd2Var = new pd2("PREFER_ARGB_8888", 0);
        a = pd2Var;
        pd2 pd2Var2 = new pd2("PREFER_RGB_565", 1);
        b = pd2Var2;
        d = new pd2[]{pd2Var, pd2Var2};
        c = pd2Var;
    }

    public static pd2 valueOf(String str) {
        return (pd2) Enum.valueOf(pd2.class, str);
    }

    public static pd2[] values() {
        return (pd2[]) d.clone();
    }
}
