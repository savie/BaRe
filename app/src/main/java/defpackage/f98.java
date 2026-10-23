package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f98 {
    public static final f98 a;
    public static final f98 b;
    public static final /* synthetic */ f98[] c;

    static {
        f98 f98Var = new f98("DEFERRED", 0);
        a = f98Var;
        f98 f98Var2 = new f98("IMMEDIATE", 1);
        b = f98Var2;
        c = new f98[]{f98Var, f98Var2, new f98("EXCLUSIVE", 2)};
    }

    public static f98 valueOf(String str) {
        return (f98) Enum.valueOf(f98.class, str);
    }

    public static f98[] values() {
        return (f98[]) c.clone();
    }
}
