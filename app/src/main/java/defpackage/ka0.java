package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ka0 implements fr5 {
    public static final ka0 a = new ka0();
    public static final h63 b = h63.a("baseAddress");
    public static final h63 c = h63.a("size");
    public static final h63 d = h63.a("name");
    public static final h63 e = h63.a("uuid");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        lz1 lz1Var = (lz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.g(b, ((pc0) lz1Var).a);
        pc0 pc0Var = (pc0) lz1Var;
        gr5Var.g(c, pc0Var.b);
        gr5Var.a(d, pc0Var.c);
        String str = pc0Var.d;
        gr5Var.a(e, str != null ? str.getBytes(c02.a) : null);
    }
}
