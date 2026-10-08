package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v46 {
    public static final v46 a;
    public static final /* synthetic */ v46[] b;

    /* JADX INFO: Fake field, exist only in values array */
    v46 EF0;

    static {
        v46 v46Var = new v46("SRGB", 0);
        v46 v46Var2 = new v46("DISPLAY_P3", 1);
        a = v46Var2;
        b = new v46[]{v46Var, v46Var2};
    }

    public static v46 valueOf(String str) {
        return (v46) Enum.valueOf(v46.class, str);
    }

    public static v46[] values() {
        return (v46[]) b.clone();
    }
}
