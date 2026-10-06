package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w90 implements fr5 {
    public static final w90 a = new w90();
    public static final h63 b = h63.a("requestTimeMs");
    public static final h63 c = h63.a("requestUptimeMs");
    public static final h63 d = h63.a("clientInfo");
    public static final h63 e = h63.a("logSource");
    public static final h63 f = h63.a("logSourceName");
    public static final h63 g = h63.a("logEvent");
    public static final h63 h = h63.a("qosTier");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        e15 e15Var = (e15) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.g(b, ((zd0) e15Var).a);
        zd0 zd0Var = (zd0) e15Var;
        gr5Var.g(c, zd0Var.b);
        gr5Var.a(d, zd0Var.c);
        gr5Var.a(e, zd0Var.d);
        gr5Var.a(f, zd0Var.e);
        gr5Var.a(g, zd0Var.f);
        gr5Var.a(h, lc6.a);
    }
}
