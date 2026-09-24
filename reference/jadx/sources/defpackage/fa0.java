package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fa0 implements fr5 {
    public static final fa0 a = new fa0();
    public static final h63 b = h63.a("identifier");
    public static final h63 c = h63.a("version");
    public static final h63 d = h63.a("displayVersion");
    public static final h63 e = h63.a("organization");
    public static final h63 f = h63.a("installationUuid");
    public static final h63 g = h63.a("developmentPlatform");
    public static final h63 h = h63.a("developmentPlatformVersion");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        jz1 jz1Var = (jz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((hc0) jz1Var).a);
        hc0 hc0Var = (hc0) jz1Var;
        gr5Var.a(c, hc0Var.b);
        gr5Var.a(d, hc0Var.c);
        gr5Var.a(e, null);
        gr5Var.a(f, hc0Var.d);
        gr5Var.a(g, hc0Var.e);
        gr5Var.a(h, hc0Var.f);
    }
}
