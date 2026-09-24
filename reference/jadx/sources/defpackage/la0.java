package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class la0 implements fr5 {
    public static final la0 a = new la0();
    public static final h63 b = h63.a("threads");
    public static final h63 c = h63.a("exception");
    public static final h63 d = h63.a("appExitInfo");
    public static final h63 e = h63.a("signal");
    public static final h63 f = h63.a("binaries");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        qz1 qz1Var = (qz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((oc0) qz1Var).a);
        oc0 oc0Var = (oc0) qz1Var;
        gr5Var.a(c, oc0Var.b);
        gr5Var.a(d, oc0Var.c);
        gr5Var.a(e, oc0Var.d);
        gr5Var.a(f, oc0Var.e);
    }
}
