package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y71 {
    public static final y71 a;
    public static final /* synthetic */ y71[] b;

    /* JADX INFO: Fake field, exist only in values array */
    y71 EF0;

    static {
        y71 y71Var = new y71("NONE", 0);
        y71 y71Var2 = new y71("ALL_JSON_OBJECTS", 1);
        y71 y71Var3 = new y71("POLYMORPHIC", 2);
        a = y71Var3;
        b = new y71[]{y71Var, y71Var2, y71Var3};
    }

    public static y71 valueOf(String str) {
        return (y71) Enum.valueOf(y71.class, str);
    }

    public static y71[] values() {
        return (y71[]) b.clone();
    }
}
