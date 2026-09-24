package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sl7 {
    public static final sl7 a;
    public static final sl7 b;
    public static final /* synthetic */ sl7[] c;

    /* JADX INFO: Fake field, exist only in values array */
    sl7 EF0;

    static {
        sl7 sl7Var = new sl7("CR", 0);
        sl7 sl7Var2 = new sl7("CRLF", 1);
        a = sl7Var2;
        sl7 sl7Var3 = new sl7("LF", 2);
        b = sl7Var3;
        c = new sl7[]{sl7Var, sl7Var2, sl7Var3};
    }

    public static sl7 valueOf(String str) {
        return (sl7) Enum.valueOf(sl7.class, str);
    }

    public static sl7[] values() {
        return (sl7[]) c.clone();
    }
}
