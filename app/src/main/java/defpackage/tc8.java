package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tc8 extends em4 implements iv1 {
    public final rc8 a;
    public final em4 b;

    public tc8(rc8 rc8Var, em4 em4Var) {
        this.a = rc8Var;
        this.b = em4Var;
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4Var = this.b;
        em4 em4VarW = em4Var instanceof iv1 ? c87Var.w(em4Var, kp0Var) : em4Var;
        return em4VarW == em4Var ? this : new tc8(this.a, em4VarW);
    }

    @Override // defpackage.em4
    public final Class b() {
        return Object.class;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        this.b.f(obj, fk4Var, c87Var, this.a);
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        this.b.f(obj, fk4Var, c87Var, rc8Var);
    }
}
