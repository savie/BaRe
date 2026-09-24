package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j83 implements s73, r73 {
    @Override // defpackage.s73
    public final int a() {
        return 4;
    }

    @Override // defpackage.s73
    public final void b(m93 m93Var, zu6 zu6Var) {
        a73 a73Var = (a73) m93Var;
        ms8.E(a73Var.a, zu6Var);
        ms8.E(a73Var.b, zu6Var);
        ms8.E(a73Var.c, zu6Var);
        ms8.E(a73Var.d, zu6Var);
        zu6Var.l(a73Var.e);
        zu6Var.l(0L);
    }

    @Override // defpackage.r73
    public final t73 c(ow0 ow0Var) throws iw0 {
        ga3 ga3VarH = ms8.H(ow0Var);
        ga3 ga3VarH2 = ms8.H(ow0Var);
        ga3 ga3VarH3 = ms8.H(ow0Var);
        ga3 ga3VarH4 = ms8.H(ow0Var);
        long jE = ow0Var.b.e(ow0Var);
        ow0Var.t(4);
        return new a73(ga3VarH, ga3VarH2, ga3VarH3, ga3VarH4, jE);
    }
}
