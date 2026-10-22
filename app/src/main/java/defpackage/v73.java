package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v73 implements s73, r73 {
    @Override // defpackage.s73
    public final int a() {
        return 16;
    }

    @Override // defpackage.s73
    public final void b(m93 m93Var, zu6 zu6Var) {
        zu6Var.l(((long) ((x83) m93Var).a) & 4294967295L);
    }

    @Override // defpackage.r73
    public final t73 c(ow0 ow0Var) {
        int iE = (int) ow0Var.b.e(ow0Var);
        x83 x83Var = new x83();
        x83Var.a = iE;
        return x83Var;
    }
}
