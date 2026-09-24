package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class n50 extends fu1 implements iv1 {
    public final kp0 c;
    public final Boolean d;

    public n50(n50 n50Var, kp0 kp0Var, Boolean bool) {
        super(0, n50Var.a);
        this.c = kp0Var;
        this.d = bool;
    }

    public em4 a(c87 c87Var, kp0 kp0Var) {
        bk4 bk4VarK;
        if (kp0Var == null || (bk4VarK = tn7.k(c87Var, kp0Var, this.a)) == null) {
            return this;
        }
        Boolean boolA = bk4VarK.a(yj4.a);
        return !Objects.equals(boolA, this.d) ? q(kp0Var, boolA) : this;
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.START_ARRAY));
        fk4Var.g(obj);
        r(obj, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    public final boolean p(c87 c87Var) {
        Boolean bool = this.d;
        if (bool != null) {
            return bool.booleanValue();
        }
        return c87Var.a.l(x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED);
    }

    public abstract em4 q(kp0 kp0Var, Boolean bool);

    public abstract void r(Object obj, fk4 fk4Var, c87 c87Var);

    public n50(Class cls) {
        super(cls);
        this.c = null;
        this.d = null;
    }
}
