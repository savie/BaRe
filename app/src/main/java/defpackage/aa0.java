package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aa0 implements fr5 {
    public static final aa0 a = new aa0();
    public static final h63 b = h63.a("pid");
    public static final h63 c = h63.a("processName");
    public static final h63 d = h63.a("reasonCode");
    public static final h63 e = h63.a("importance");
    public static final h63 f = h63.a("pss");
    public static final h63 g = h63.a("rss");
    public static final h63 h = h63.a("timestamp");
    public static final h63 i = h63.a("traceFile");
    public static final h63 j = h63.a("buildIdMappingForArch");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        ez1 ez1Var = (ez1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.e(b, ((ac0) ez1Var).a);
        ac0 ac0Var = (ac0) ez1Var;
        gr5Var.a(c, ac0Var.b);
        gr5Var.e(d, ac0Var.c);
        gr5Var.e(e, ac0Var.d);
        gr5Var.g(f, ac0Var.e);
        gr5Var.g(g, ac0Var.f);
        gr5Var.g(h, ac0Var.g);
        gr5Var.a(i, ac0Var.h);
        gr5Var.a(j, ac0Var.i);
    }
}
