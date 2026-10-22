package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ml4 {
    public static final ml4 a;
    public static final ml4 b;
    public static final ml4 c;
    public static final /* synthetic */ ml4[] d;

    static {
        ml4 ml4Var = new ml4("AUTO", 0);
        a = ml4Var;
        ml4 ml4Var2 = new ml4("READ_ONLY", 1);
        b = ml4Var2;
        ml4 ml4Var3 = new ml4("WRITE_ONLY", 2);
        c = ml4Var3;
        d = new ml4[]{ml4Var, ml4Var2, ml4Var3, new ml4("READ_WRITE", 3)};
    }

    public static ml4 valueOf(String str) {
        return (ml4) Enum.valueOf(ml4.class, str);
    }

    public static ml4[] values() {
        return (ml4[]) d.clone();
    }
}
