package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class st4 {
    public static final st4 a;
    public static final st4 b;
    public static final st4 c;
    public static final st4 d;
    public static final st4 e;
    public static final /* synthetic */ st4[] f;

    static {
        st4 st4Var = new st4("DESTROYED", 0);
        a = st4Var;
        st4 st4Var2 = new st4("INITIALIZED", 1);
        b = st4Var2;
        st4 st4Var3 = new st4("CREATED", 2);
        c = st4Var3;
        st4 st4Var4 = new st4("STARTED", 3);
        d = st4Var4;
        st4 st4Var5 = new st4("RESUMED", 4);
        e = st4Var5;
        f = new st4[]{st4Var, st4Var2, st4Var3, st4Var4, st4Var5};
    }

    public static st4 valueOf(String str) {
        return (st4) Enum.valueOf(st4.class, str);
    }

    public static st4[] values() {
        return (st4[]) f.clone();
    }
}
