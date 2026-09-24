package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gb0 implements fr5 {
    public static final gb0 a = new gb0();
    public static final h63 b = h63.a("rolloutId");
    public static final h63 c = h63.a("parameterKey");
    public static final h63 d = h63.a("parameterValue");
    public static final h63 e = h63.a("variantId");
    public static final h63 f = h63.a("templateVersion");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        yn6 yn6Var = (yn6) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((fe0) yn6Var).b);
        fe0 fe0Var = (fe0) yn6Var;
        gr5Var.a(c, fe0Var.c);
        gr5Var.a(d, fe0Var.d);
        gr5Var.a(e, fe0Var.e);
        gr5Var.g(f, fe0Var.f);
    }
}
