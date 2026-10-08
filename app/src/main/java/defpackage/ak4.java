package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ak4 {
    public static final ak4 a;
    public static final ak4 b;
    public static final ak4 c;
    public static final ak4 d;
    public static final ak4 e;
    public static final ak4 f;
    public static final ak4 k;
    public static final ak4 n;
    public static final ak4 p;
    public static final ak4 q;
    public static final /* synthetic */ ak4[] r;

    static {
        ak4 ak4Var = new ak4("BINARY", 0);
        a = ak4Var;
        ak4 ak4Var2 = new ak4("BOOLEAN", 1);
        ak4 ak4Var3 = new ak4("NUMBER", 2);
        b = ak4Var3;
        ak4 ak4Var4 = new ak4("NUMBER_FLOAT", 3);
        c = ak4Var4;
        ak4 ak4Var5 = new ak4("NUMBER_INT", 4);
        d = ak4Var5;
        ak4 ak4Var6 = new ak4("STRING", 5);
        e = ak4Var6;
        ak4 ak4Var7 = new ak4("SCALAR", 6);
        f = ak4Var7;
        ak4 ak4Var8 = new ak4("ARRAY", 7);
        k = ak4Var8;
        ak4 ak4Var9 = new ak4("OBJECT", 8);
        n = ak4Var9;
        ak4 ak4Var10 = new ak4("ANY", 9);
        p = ak4Var10;
        ak4 ak4Var11 = new ak4("NATURAL", 10);
        q = ak4Var11;
        r = new ak4[]{ak4Var, ak4Var2, ak4Var3, ak4Var4, ak4Var5, ak4Var6, ak4Var7, ak4Var8, ak4Var9, ak4Var10, ak4Var11, new ak4("POJO", 11)};
    }

    public static ak4 valueOf(String str) {
        return (ak4) Enum.valueOf(ak4.class, str);
    }

    public static ak4[] values() {
        return (ak4[]) r.clone();
    }

    public final boolean a() {
        return this == b || this == d || this == c;
    }
}
