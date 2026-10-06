package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ia0 implements fr5 {
    public static final ia0 a = new ia0();
    public static final h63 b = h63.a("generator");
    public static final h63 c = h63.a("identifier");
    public static final h63 d = h63.a("appQualitySessionId");
    public static final h63 e = h63.a("startedAt");
    public static final h63 f = h63.a("endedAt");
    public static final h63 g = h63.a("crashed");
    public static final h63 h = h63.a("app");
    public static final h63 i = h63.a("user");
    public static final h63 j = h63.a("os");
    public static final h63 k = h63.a("device");
    public static final h63 l = h63.a("events");
    public static final h63 m = h63.a("generatorType");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        b02 b02Var = (b02) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((gc0) b02Var).a);
        gc0 gc0Var = (gc0) b02Var;
        gr5Var.a(c, gc0Var.b.getBytes(c02.a));
        gr5Var.a(d, gc0Var.c);
        gr5Var.g(e, gc0Var.d);
        gr5Var.a(f, gc0Var.e);
        gr5Var.d(g, gc0Var.f);
        gr5Var.a(h, gc0Var.g);
        gr5Var.a(i, gc0Var.h);
        gr5Var.a(j, gc0Var.i);
        gr5Var.a(k, gc0Var.j);
        gr5Var.a(l, gc0Var.k);
        gr5Var.e(m, gc0Var.l);
    }
}
