package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ma0 implements fr5 {
    public static final ma0 a = new ma0();
    public static final h63 b = h63.a("type");
    public static final h63 c = h63.a("reason");
    public static final h63 d = h63.a("frames");
    public static final h63 e = h63.a("causedBy");
    public static final h63 f = h63.a("overflowCount");

    @Override // defpackage.yv2
    public final void a(Object obj, Object obj2) {
        mz1 mz1Var = (mz1) obj;
        gr5 gr5Var = (gr5) obj2;
        gr5Var.a(b, ((qc0) mz1Var).a);
        qc0 qc0Var = (qc0) mz1Var;
        gr5Var.a(c, qc0Var.b);
        gr5Var.a(d, qc0Var.c);
        gr5Var.a(e, qc0Var.d);
        gr5Var.e(f, qc0Var.e);
    }
}
