package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class co6 {
    public static final co6 a;
    public static final co6 b;
    public static final co6 c;
    public static final /* synthetic */ co6[] d;

    static {
        co6 co6Var = new co6("AUTOMATIC", 0);
        a = co6Var;
        co6 co6Var2 = new co6("TRUNCATE", 1);
        b = co6Var2;
        co6 co6Var3 = new co6("WRITE_AHEAD_LOGGING", 2);
        c = co6Var3;
        d = new co6[]{co6Var, co6Var2, co6Var3};
    }

    public static co6 valueOf(String str) {
        return (co6) Enum.valueOf(co6.class, str);
    }

    public static co6[] values() {
        return (co6[]) d.clone();
    }
}
