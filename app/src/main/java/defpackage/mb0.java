package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mb0 implements fr5 {
    public static final mb0 a = new mb0();
    public static final h63 b = h63.a("processName");
    public static final h63 c = h63.a("pid");
    public static final h63 d = h63.a("importance");
    public static final h63 e = h63.a("defaultProcess");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        k76 k76Var = (k76) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, k76Var.a);
        gr5Var.e(c, k76Var.b);
        gr5Var.e(d, k76Var.c);
        gr5Var.d(e, k76Var.d);
    }
}
