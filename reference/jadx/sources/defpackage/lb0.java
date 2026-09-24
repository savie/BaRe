package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lb0 implements fr5 {
    public static final lb0 a = new lb0();
    public static final h63 b = h63.a("performance");
    public static final h63 c = h63.a("crashlytics");
    public static final h63 d = h63.a("sessionSamplingRate");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        oa2 oa2Var = (oa2) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, oa2Var.a);
        gr5Var.a(c, oa2Var.b);
        gr5Var.f(d, oa2Var.c);
    }
}
