package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q96 {
    public static final q96 a;
    public static final /* synthetic */ q96[] b;

    static {
        q96 q96Var = new q96("DEFAULT", 0);
        a = q96Var;
        b = new q96[]{q96Var, new q96("SIGNED", 1), new q96("FIXED", 2)};
    }

    public static q96 valueOf(String str) {
        return (q96) Enum.valueOf(q96.class, str);
    }

    public static q96[] values() {
        return (q96[]) b.clone();
    }
}
