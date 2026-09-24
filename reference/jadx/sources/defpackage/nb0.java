package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nb0 implements fr5 {
    public static final nb0 a = new nb0();
    public static final h63 b = h63.a("eventType");
    public static final h63 c = h63.a("sessionData");
    public static final h63 d = h63.a("applicationInfo");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        w87 w87Var = (w87) obj;
        gr5 gr5Var = (gr5) obj2;
        w87Var.getClass();
        gr5Var.a(b, hz2.SESSION_START);
        gr5Var.a(c, w87Var.a);
        gr5Var.a(d, w87Var.b);
    }
}
