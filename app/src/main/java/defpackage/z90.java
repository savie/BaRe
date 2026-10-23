package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z90 implements fr5 {
    public static final z90 a = new z90();
    public static final h63 b = h63.a("arch");
    public static final h63 c = h63.a("libraryName");
    public static final h63 d = h63.a("buildId");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        dz1 dz1Var = (dz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((bc0) dz1Var).a);
        bc0 bc0Var = (bc0) dz1Var;
        gr5Var.a(c, bc0Var.b);
        gr5Var.a(d, bc0Var.c);
    }
}
