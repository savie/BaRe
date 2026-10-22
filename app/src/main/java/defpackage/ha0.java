package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ha0 implements fr5 {
    public static final ha0 a = new ha0();
    public static final h63 b = h63.a("arch");
    public static final h63 c = h63.a("model");
    public static final h63 d = h63.a("cores");
    public static final h63 e = h63.a("ram");
    public static final h63 f = h63.a("diskSpace");
    public static final h63 g = h63.a("simulator");
    public static final h63 h = h63.a("state");
    public static final h63 i = h63.a("manufacturer");
    public static final h63 j = h63.a("modelClass");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        kz1 kz1Var = (kz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.e(b, ((kc0) kz1Var).a);
        kc0 kc0Var = (kc0) kz1Var;
        gr5Var.a(c, kc0Var.b);
        gr5Var.e(d, kc0Var.c);
        gr5Var.g(e, kc0Var.d);
        gr5Var.g(f, kc0Var.e);
        gr5Var.d(g, kc0Var.f);
        gr5Var.e(h, kc0Var.g);
        gr5Var.a(i, kc0Var.h);
        gr5Var.a(j, kc0Var.i);
    }
}
