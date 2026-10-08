package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ra0 implements fr5 {
    public static final ra0 a = new ra0();
    public static final h63 b = h63.a("batteryLevel");
    public static final h63 c = h63.a("batteryVelocity");
    public static final h63 d = h63.a("proximityOn");
    public static final h63 e = h63.a("orientation");
    public static final h63 f = h63.a("ramUsed");
    public static final h63 g = h63.a("diskUsed");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        tz1 tz1Var = (tz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((yc0) tz1Var).a);
        yc0 yc0Var = (yc0) tz1Var;
        gr5Var.e(c, yc0Var.b);
        gr5Var.d(d, yc0Var.c);
        gr5Var.e(e, yc0Var.d);
        gr5Var.g(f, yc0Var.e);
        gr5Var.g(g, yc0Var.f);
    }
}
