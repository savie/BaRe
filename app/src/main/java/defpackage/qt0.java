package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qt0 extends h58 implements iv1 {
    public final boolean d;

    public qt0(boolean z) {
        super(z ? Boolean.TYPE : Boolean.class);
        this.d = z;
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        Class cls = this.a;
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, cls);
        if (bk4VarK == null) {
            return this;
        }
        ak4 ak4Var = bk4VarK.b;
        if (ak4Var.a()) {
            return new ot0(this.d);
        }
        return ak4Var == ak4.e ? new vp5(0, cls) : this;
    }

    @Override // defpackage.h58, defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.m(Boolean.TRUE.equals(obj));
    }

    @Override // defpackage.h58, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        fk4Var.m(Boolean.TRUE.equals(obj));
    }
}
