package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sa0 implements fr5 {
    public static final sa0 a = new sa0();
    public static final h63 b = h63.a("timestamp");
    public static final h63 c = h63.a("type");
    public static final h63 d = h63.a("app");
    public static final h63 e = h63.a("device");
    public static final h63 f = h63.a("log");
    public static final h63 g = h63.a("rollouts");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        yz1 yz1Var = (yz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.g(b, ((mc0) yz1Var).a);
        mc0 mc0Var = (mc0) yz1Var;
        gr5Var.a(c, mc0Var.b);
        gr5Var.a(d, mc0Var.c);
        gr5Var.a(e, mc0Var.d);
        gr5Var.a(f, mc0Var.e);
        gr5Var.a(g, mc0Var.f);
    }
}
