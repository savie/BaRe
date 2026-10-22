package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
public final class b42 {
    public static final b42 a;
    public static final /* synthetic */ b42[] b;

    /* JADX INFO: Fake field, exist only in values array */
    b42 EF0;

    static {
        b42 b42Var = new b42("AGREEMENT", 0);
        b42 b42Var2 = new b42("ENCRYPTION", 1);
        b42 b42Var3 = new b42("DECRYPTION", 2);
        b42 b42Var4 = new b42("KEYGEN", 3);
        b42 b42Var5 = new b42("SIGNING", 4);
        b42 b42Var6 = new b42("VERIFYING", 5);
        b42 b42Var7 = new b42("AUTHENTICATION", 6);
        b42 b42Var8 = new b42("VERIFICATION", 7);
        b42 b42Var9 = new b42("PRF", 8);
        b42 b42Var10 = new b42("ANY", 9);
        a = b42Var10;
        b = new b42[]{b42Var, b42Var2, b42Var3, b42Var4, b42Var5, b42Var6, b42Var7, b42Var8, b42Var9, b42Var10};
    }

    public static b42 valueOf(String str) {
        return (b42) Enum.valueOf(b42.class, str);
    }

    public static b42[] values() {
        return (b42[]) b.clone();
    }
}
