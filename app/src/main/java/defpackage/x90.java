package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x90 implements fr5 {
    public static final x90 a = new x90();
    public static final h63 b = h63.a("networkType");
    public static final h63 c = h63.a("mobileSubtype");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        nm5 nm5Var = (nm5) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((be0) nm5Var).a);
        gr5Var.a(c, ((be0) nm5Var).b);
    }
}
