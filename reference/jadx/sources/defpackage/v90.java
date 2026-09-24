package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v90 implements fr5 {
    public static final v90 a = new v90();
    public static final h63 b = h63.a("eventTimeMs");
    public static final h63 c = h63.a("eventCode");
    public static final h63 d = h63.a("complianceData");
    public static final h63 e = h63.a("eventUptimeMs");
    public static final h63 f = h63.a("sourceExtension");
    public static final h63 g = h63.a("sourceExtensionJsonProto3");
    public static final h63 h = h63.a("timezoneOffsetSeconds");
    public static final h63 i = h63.a("networkConnectionInfo");
    public static final h63 j = h63.a("experimentIds");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        b15 b15Var = (b15) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.g(b, ((yd0) b15Var).a);
        yd0 yd0Var = (yd0) b15Var;
        gr5Var.a(c, yd0Var.b);
        gr5Var.a(d, yd0Var.c);
        gr5Var.g(e, yd0Var.d);
        gr5Var.a(f, yd0Var.e);
        gr5Var.a(g, yd0Var.f);
        gr5Var.g(h, yd0Var.g);
        gr5Var.a(i, yd0Var.h);
        gr5Var.a(j, yd0Var.i);
    }
}
