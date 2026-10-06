package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ua0 implements fr5 {
    public static final ua0 a = new ua0();
    public static final h63 b = h63.a("rolloutVariant");
    public static final h63 c = h63.a("parameterKey");
    public static final h63 d = h63.a("parameterValue");
    public static final h63 e = h63.a("templateVersion");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        wz1 wz1Var = (wz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((bd0) wz1Var).a);
        bd0 bd0Var = (bd0) wz1Var;
        gr5Var.a(c, bd0Var.b);
        gr5Var.a(d, bd0Var.c);
        gr5Var.g(e, bd0Var.d);
    }
}
