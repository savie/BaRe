package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hs6 extends tt6 {
    public static final l15 f = o15.b(hs6.class);
    public gd e;

    @Override // defpackage.tt6
    public final void H(st6 st6Var) {
        gd gdVar = this.e;
        dv6 dv6Var = st6Var.a;
        jk6 jk6VarJ = gdVar.j(Long.valueOf(((ut6) dv6Var).f));
        Long lValueOf = Long.valueOf(System.currentTimeMillis() - jk6VarJ.e.getTime());
        l15 l15Var = f;
        l15Var.B(st6Var, lValueOf, "Send/Recv of packet {} took << {} ms >>");
        ut6 ut6Var = (ut6) st6Var.a;
        if (!sz8.H(ut6Var.k, kt6.SMB2_FLAGS_ASYNC_COMMAND) || ut6Var.j != 259) {
            ((ol1) this.b).t(st6Var);
            return;
        }
        ut6 ut6Var2 = (ut6) dv6Var;
        l15Var.m(st6Var, Long.valueOf(ut6Var2.g), "Received ASYNC packet {} with AsyncId << {} >>");
        jk6VarJ.f = ut6Var2.g;
    }
}
