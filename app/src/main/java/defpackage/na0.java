package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class na0 implements fr5 {
    public static final na0 a = new na0();
    public static final h63 b = h63.a("name");
    public static final h63 c = h63.a("code");
    public static final h63 d = h63.a("address");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        nz1 nz1Var = (nz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((rc0) nz1Var).a);
        rc0 rc0Var = (rc0) nz1Var;
        gr5Var.a(c, rc0Var.b);
        gr5Var.g(d, rc0Var.c);
    }
}
