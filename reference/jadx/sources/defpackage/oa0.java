package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oa0 implements fr5 {
    public static final oa0 a = new oa0();
    public static final h63 b = h63.a("name");
    public static final h63 c = h63.a("importance");
    public static final h63 d = h63.a("frames");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        pz1 pz1Var = (pz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((sc0) pz1Var).a);
        sc0 sc0Var = (sc0) pz1Var;
        gr5Var.e(c, sc0Var.b);
        gr5Var.a(d, sc0Var.c);
    }
}
