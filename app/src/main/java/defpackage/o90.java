package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o90 implements fr5 {
    public static final o90 a = new o90();
    public static final h63 b = h63.a("sdkVersion");
    public static final h63 c = h63.a("model");
    public static final h63 d = h63.a("hardware");
    public static final h63 e = h63.a("device");
    public static final h63 f = h63.a("product");
    public static final h63 g = h63.a("osBuild");
    public static final h63 h = h63.a("manufacturer");
    public static final h63 i = h63.a("fingerprint");
    public static final h63 j = h63.a("locale");
    public static final h63 k = h63.a("country");
    public static final h63 l = h63.a("mccMnc");
    public static final h63 m = h63.a("applicationBuild");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        qb qbVar = (qb) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((qb0) qbVar).a);
        qb0 qb0Var = (qb0) qbVar;
        gr5Var.a(c, qb0Var.b);
        gr5Var.a(d, qb0Var.c);
        gr5Var.a(e, qb0Var.d);
        gr5Var.a(f, qb0Var.e);
        gr5Var.a(g, qb0Var.f);
        gr5Var.a(h, qb0Var.g);
        gr5Var.a(i, qb0Var.h);
        gr5Var.a(j, qb0Var.i);
        gr5Var.a(k, qb0Var.j);
        gr5Var.a(l, qb0Var.k);
        gr5Var.a(m, qb0Var.l);
    }
}
