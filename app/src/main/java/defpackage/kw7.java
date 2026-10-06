package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kw7 {
    public static final kw7 a;
    public static final kw7 b;
    public static final kw7 c;
    public static final /* synthetic */ kw7[] d;

    static {
        kw7 kw7Var = new kw7("LEFT", 0);
        a = kw7Var;
        kw7 kw7Var2 = new kw7("CENTER", 1);
        b = kw7Var2;
        kw7 kw7Var3 = new kw7("RIGHT", 2);
        c = kw7Var3;
        d = new kw7[]{kw7Var, kw7Var2, kw7Var3};
    }

    public static kw7 valueOf(String str) {
        return (kw7) Enum.valueOf(kw7.class, str);
    }

    public static kw7[] values() {
        return (kw7[]) d.clone();
    }
}
