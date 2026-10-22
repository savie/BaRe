package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ot0 extends h58 implements iv1 {
    public final boolean d;

    public ot0(boolean z) {
        super(z ? Boolean.TYPE : Boolean.class);
        this.d = z;
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, Boolean.class);
        return (bk4VarK == null || bk4VarK.b.a()) ? this : new qt0(this.d);
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.D(!Boolean.FALSE.equals(obj) ? 1 : 0);
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        fk4Var.m(Boolean.TRUE.equals(obj));
    }
}
