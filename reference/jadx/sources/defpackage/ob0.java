package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ob0 implements fr5 {
    public static final ob0 a = new ob0();
    public static final h63 b = h63.a("sessionId");
    public static final h63 c = h63.a("firstSessionId");
    public static final h63 d = h63.a("sessionIndex");
    public static final h63 e = h63.a("eventTimestampUs");
    public static final h63 f = h63.a("dataCollectionStatus");
    public static final h63 g = h63.a("firebaseInstallationId");
    public static final h63 h = h63.a("firebaseAuthenticationToken");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        c97 c97Var = (c97) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, c97Var.a);
        gr5Var.a(c, c97Var.b);
        gr5Var.e(d, c97Var.c);
        gr5Var.g(e, c97Var.d);
        gr5Var.a(f, c97Var.e);
        gr5Var.a(g, c97Var.f);
        gr5Var.a(h, c97Var.g);
    }
}
