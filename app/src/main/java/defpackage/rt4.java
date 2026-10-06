package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rt4 {
    private static final /* synthetic */ jx2 $ENTRIES;
    private static final /* synthetic */ rt4[] $VALUES;
    public static final pt4 Companion;
    public static final rt4 ON_ANY;
    public static final rt4 ON_CREATE;
    public static final rt4 ON_DESTROY;
    public static final rt4 ON_PAUSE;
    public static final rt4 ON_RESUME;
    public static final rt4 ON_START;
    public static final rt4 ON_STOP;

    static {
        rt4 rt4Var = new rt4("ON_CREATE", 0);
        ON_CREATE = rt4Var;
        rt4 rt4Var2 = new rt4("ON_START", 1);
        ON_START = rt4Var2;
        rt4 rt4Var3 = new rt4("ON_RESUME", 2);
        ON_RESUME = rt4Var3;
        rt4 rt4Var4 = new rt4("ON_PAUSE", 3);
        ON_PAUSE = rt4Var4;
        rt4 rt4Var5 = new rt4("ON_STOP", 4);
        ON_STOP = rt4Var5;
        rt4 rt4Var6 = new rt4("ON_DESTROY", 5);
        ON_DESTROY = rt4Var6;
        rt4 rt4Var7 = new rt4("ON_ANY", 6);
        ON_ANY = rt4Var7;
        rt4[] rt4VarArr = {rt4Var, rt4Var2, rt4Var3, rt4Var4, rt4Var5, rt4Var6, rt4Var7};
        $VALUES = rt4VarArr;
        $ENTRIES = new kx2(rt4VarArr);
        Companion = new pt4();
    }

    public static rt4 valueOf(String str) {
        return (rt4) Enum.valueOf(rt4.class, str);
    }

    public static rt4[] values() {
        return (rt4[]) $VALUES.clone();
    }

    public final st4 a() {
        switch (qt4.a[ordinal()]) {
            case 1:
            case 2:
                return st4.c;
            case 3:
            case 4:
                return st4.d;
            case 5:
                return st4.e;
            case 6:
                return st4.a;
            case 7:
                throw new IllegalArgumentException(this + " has no target state");
            default:
                q.j();
                return null;
        }
    }
}
