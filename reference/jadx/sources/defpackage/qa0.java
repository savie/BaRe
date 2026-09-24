package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qa0 implements fr5 {
    public static final qa0 a = new qa0();
    public static final h63 b = h63.a("processName");
    public static final h63 c = h63.a("pid");
    public static final h63 d = h63.a("importance");
    public static final h63 e = h63.a("defaultProcess");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        rz1 rz1Var = (rz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((wc0) rz1Var).a);
        wc0 wc0Var = (wc0) rz1Var;
        gr5Var.e(c, wc0Var.b);
        gr5Var.e(d, wc0Var.c);
        gr5Var.d(e, wc0Var.d);
    }
}
