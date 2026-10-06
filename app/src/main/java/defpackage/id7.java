package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class id7 {
    public static final id7 a;
    public static final id7 b;
    public static final /* synthetic */ id7[] c;

    static {
        id7 id7Var = new id7("GENERAL", 0);
        a = id7Var;
        id7 id7Var2 = new id7("FALLBACK", 1);
        b = id7Var2;
        c = new id7[]{id7Var, id7Var2};
    }

    public static id7 valueOf(String str) {
        return (id7) Enum.valueOf(id7.class, str);
    }

    public static id7[] values() {
        return (id7[]) c.clone();
    }
}
