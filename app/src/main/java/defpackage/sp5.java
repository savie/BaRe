package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sp5 {
    public static final sp5 a;
    public static final /* synthetic */ sp5[] b;

    /* JADX INFO: Fake field, exist only in values array */
    sp5 EF0;

    static {
        sp5 sp5Var = new sp5("SET", 0);
        sp5 sp5Var2 = new sp5("SKIP", 1);
        sp5 sp5Var3 = new sp5("FAIL", 2);
        sp5 sp5Var4 = new sp5("AS_EMPTY", 3);
        sp5 sp5Var5 = new sp5("DEFAULT", 4);
        a = sp5Var5;
        b = new sp5[]{sp5Var, sp5Var2, sp5Var3, sp5Var4, sp5Var5};
    }

    public static sp5 valueOf(String str) {
        return (sp5) Enum.valueOf(sp5.class, str);
    }

    public static sp5[] values() {
        return (sp5[]) b.clone();
    }
}
