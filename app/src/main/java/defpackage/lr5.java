package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lr5 {
    public final gc8 a;
    public final z77 b;
    public final v86 c;
    public final em4 d;
    public final boolean e;

    public lr5(gc8 gc8Var, z77 z77Var, v86 v86Var, em4 em4Var, boolean z) {
        this.a = gc8Var;
        this.b = z77Var;
        this.c = v86Var;
        this.d = em4Var;
        this.e = z;
    }

    public static lr5 a(gc8 gc8Var, z86 z86Var, v86 v86Var, boolean z) {
        String str = z86Var == null ? null : z86Var.a;
        return new lr5(gc8Var, str != null ? new z77(str) : null, v86Var, null, z);
    }
}
