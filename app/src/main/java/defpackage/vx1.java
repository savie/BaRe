package defpackage;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vx1 {
    public static final vx1 a;
    public static final vx1 b;
    public static final vx1 c;
    public static final vx1 d;
    public static final vx1 e;
    public static final /* synthetic */ vx1[] f;

    static {
        vx1 vx1Var = new vx1("CPU_ACQUIRED", 0);
        a = vx1Var;
        vx1 vx1Var2 = new vx1("BLOCKING", 1);
        b = vx1Var2;
        vx1 vx1Var3 = new vx1("PARKING", 2);
        c = vx1Var3;
        vx1 vx1Var4 = new vx1("DORMANT", 3);
        d = vx1Var4;
        vx1 vx1Var5 = new vx1("TERMINATED", 4);
        e = vx1Var5;
        f = new vx1[]{vx1Var, vx1Var2, vx1Var3, vx1Var4, vx1Var5};
    }

    public static vx1 valueOf(String str) {
        return (vx1) Enum.valueOf(vx1.class, str);
    }

    public static vx1[] values() {
        return (vx1[]) f.clone();
    }
}
