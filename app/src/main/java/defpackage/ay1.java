package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ay1 {
    public static final ay1 a;
    public static final ay1 b;
    public static final ay1 c;
    public static final /* synthetic */ ay1[] d;

    static {
        ay1 ay1Var = new ay1("DEFAULT", 0);
        a = ay1Var;
        ay1 ay1Var2 = new ay1("LAZY", 1);
        ay1 ay1Var3 = new ay1("ATOMIC", 2);
        b = ay1Var3;
        ay1 ay1Var4 = new ay1("UNDISPATCHED", 3);
        c = ay1Var4;
        d = new ay1[]{ay1Var, ay1Var2, ay1Var3, ay1Var4};
    }

    public static ay1 valueOf(String str) {
        return (ay1) Enum.valueOf(ay1.class, str);
    }

    public static ay1[] values() {
        return (ay1[]) d.clone();
    }
}
