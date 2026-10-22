package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xa0 implements fr5 {
    public static final xa0 a = new xa0();
    public static final h63 b = h63.a("platform");
    public static final h63 c = h63.a("version");
    public static final h63 d = h63.a("buildVersion");
    public static final h63 e = h63.a("jailbroken");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        zz1 zz1Var = (zz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.e(b, ((fd0) zz1Var).a);
        fd0 fd0Var = (fd0) zz1Var;
        gr5Var.a(c, fd0Var.b);
        gr5Var.a(d, fd0Var.c);
        gr5Var.d(e, fd0Var.d);
    }
}
