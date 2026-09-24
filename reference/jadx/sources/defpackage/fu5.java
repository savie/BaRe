package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fu5 {
    public static final fu5 a;
    public static final fu5 b;
    public static final /* synthetic */ fu5[] c;

    static {
        fu5 fu5Var = new fu5("TRUE", 0);
        a = fu5Var;
        fu5 fu5Var2 = new fu5("FALSE", 1);
        fu5 fu5Var3 = new fu5("DEFAULT", 2);
        b = fu5Var3;
        c = new fu5[]{fu5Var, fu5Var2, fu5Var3};
    }

    public static fu5 valueOf(String str) {
        return (fu5) Enum.valueOf(fu5.class, str);
    }

    public static fu5[] values() {
        return (fu5[]) c.clone();
    }

    public final Boolean a() {
        if (this == b) {
            return null;
        }
        return this == a ? Boolean.TRUE : Boolean.FALSE;
    }
}
