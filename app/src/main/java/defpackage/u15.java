package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u15 implements do4 {
    public static final u15 a = new u15();
    public static final a66 b = new a66("kotlin.Long", w56.g);

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        return Long.valueOf(np7Var.e());
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        op7Var.d(((Number) obj).longValue());
    }

    @Override // defpackage.do4
    public final p77 d() {
        return b;
    }
}
