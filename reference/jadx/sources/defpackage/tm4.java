package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tm4 {
    public static final tm4 a;
    public static final tm4 b;
    public static final tm4 c;
    public static final tm4 d;
    public static final tm4 e;
    public static final /* synthetic */ tm4[] f;

    static {
        tm4 tm4Var = new tm4("PROPERTY", 0);
        a = tm4Var;
        tm4 tm4Var2 = new tm4("WRAPPER_OBJECT", 1);
        b = tm4Var2;
        tm4 tm4Var3 = new tm4("WRAPPER_ARRAY", 2);
        c = tm4Var3;
        tm4 tm4Var4 = new tm4("EXTERNAL_PROPERTY", 3);
        d = tm4Var4;
        tm4 tm4Var5 = new tm4("EXISTING_PROPERTY", 4);
        e = tm4Var5;
        f = new tm4[]{tm4Var, tm4Var2, tm4Var3, tm4Var4, tm4Var5};
    }

    public static tm4 valueOf(String str) {
        return (tm4) Enum.valueOf(tm4.class, str);
    }

    public static tm4[] values() {
        return (tm4[]) f.clone();
    }
}
