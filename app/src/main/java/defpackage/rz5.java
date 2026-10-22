package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rz5 {
    public static final rz5 a;
    public static final rz5 b;
    public static final rz5 c;
    public static final rz5 d;
    public static final rz5 e;
    public static final /* synthetic */ rz5[] f;

    static {
        rz5 rz5Var = new rz5("Disconnected", 0);
        a = rz5Var;
        rz5 rz5Var2 = new rz5("GettingToken", 1);
        b = rz5Var2;
        rz5 rz5Var3 = new rz5("Connecting", 2);
        c = rz5Var3;
        rz5 rz5Var4 = new rz5("Authenticating", 3);
        d = rz5Var4;
        rz5 rz5Var5 = new rz5("Connected", 4);
        e = rz5Var5;
        f = new rz5[]{rz5Var, rz5Var2, rz5Var3, rz5Var4, rz5Var5};
    }

    public static rz5 valueOf(String str) {
        return (rz5) Enum.valueOf(rz5.class, str);
    }

    public static rz5[] values() {
        return (rz5[]) f.clone();
    }
}
