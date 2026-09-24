package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h90 {
    public static final h90 a;
    public static final h90 b;
    public static final h90 c;
    public static final h90 d;
    public static final /* synthetic */ h90[] e;

    static {
        h90 h90Var = new h90("ACCESS_GRANTED", 0);
        a = h90Var;
        h90 h90Var2 = new h90("CANCELLED", 1);
        b = h90Var2;
        h90 h90Var3 = new h90("ACCESS_DENIED", 2);
        c = h90Var3;
        h90 h90Var4 = new h90("AUTH_ERROR", 3);
        d = h90Var4;
        e = new h90[]{h90Var, h90Var2, h90Var3, h90Var4};
    }

    public static h90 valueOf(String str) {
        return (h90) Enum.valueOf(h90.class, str);
    }

    public static h90[] values() {
        return (h90[]) e.clone();
    }
}
