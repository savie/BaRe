package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ja0 implements fr5 {
    public static final ja0 a = new ja0();
    public static final h63 b = h63.a("execution");
    public static final h63 c = h63.a("customAttributes");
    public static final h63 d = h63.a("internalKeys");
    public static final h63 e = h63.a("background");
    public static final h63 f = h63.a("currentProcessDetails");
    public static final h63 g = h63.a("appProcessDetails");
    public static final h63 h = h63.a("uiOrientation");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        sz1 sz1Var = (sz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((nc0) sz1Var).a);
        nc0 nc0Var = (nc0) sz1Var;
        gr5Var.a(c, nc0Var.b);
        gr5Var.a(d, nc0Var.c);
        gr5Var.a(e, nc0Var.d);
        gr5Var.a(f, nc0Var.e);
        gr5Var.a(g, nc0Var.f);
        gr5Var.e(h, nc0Var.g);
    }
}
