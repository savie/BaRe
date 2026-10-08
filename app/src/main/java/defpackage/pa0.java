package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pa0 implements fr5 {
    public static final pa0 a = new pa0();
    public static final h63 b = h63.a("pc");
    public static final h63 c = h63.a("symbol");
    public static final h63 d = h63.a("file");
    public static final h63 e = h63.a("offset");
    public static final h63 f = h63.a("importance");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        oz1 oz1Var = (oz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.g(b, ((uc0) oz1Var).a);
        uc0 uc0Var = (uc0) oz1Var;
        gr5Var.a(c, uc0Var.b);
        gr5Var.a(d, uc0Var.c);
        gr5Var.g(e, uc0Var.d);
        gr5Var.e(f, uc0Var.e);
    }
}
