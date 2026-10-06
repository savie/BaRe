package defpackage;

import java.lang.reflect.Modifier;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class y50 extends fu1 implements iv1 {
    public final gc8 c;
    public final kp0 d;
    public final boolean e;
    public final Boolean f;
    public final rc8 k;
    public final em4 n;
    public od2 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y50(Class cls, gc8 gc8Var, boolean z, rc8 rc8Var, em4 em4Var) {
        super(0, cls);
        boolean z2 = false;
        this.c = gc8Var;
        if (z || (gc8Var != null && Modifier.isFinal(gc8Var.f.getModifiers()))) {
            z2 = true;
        }
        this.e = z2;
        this.k = rc8Var;
        this.d = null;
        this.n = em4Var;
        this.p = f96.i;
        this.f = null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarE;
        gc8 gc8Var;
        Object objC;
        rc8 rc8Var = this.k;
        rc8 rc8VarA = rc8Var != null ? rc8Var.a(kp0Var) : rc8Var;
        if (kp0Var != null) {
            as5 as5VarD = c87Var.a.d();
            od odVarA = kp0Var.a();
            if (odVarA == null || (objC = as5VarD.c(odVarA)) == null) {
                em4VarE = null;
            } else {
                em4VarE = c87Var.E(odVarA, objC);
            }
        } else {
            em4VarE = null;
        }
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, this.a);
        Boolean boolA = bk4VarK != null ? bk4VarK.a(yj4.a) : null;
        em4 em4Var = this.n;
        if (em4VarE == null) {
            em4VarE = em4Var;
        }
        em4 em4VarJ = tn7.j(c87Var, kp0Var, em4VarE);
        if (em4VarJ == null && (gc8Var = this.c) != null && this.e && !gc8Var.z0()) {
            em4VarJ = c87Var.i(gc8Var, kp0Var);
        }
        return (em4VarJ == em4Var && kp0Var == this.d && rc8Var == rc8VarA && Objects.equals(this.f, boolA)) ? this : r(kp0Var, rc8VarA, em4VarJ, boolA);
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) {
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.START_ARRAY));
        fk4Var.g(obj);
        q(obj, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    public final em4 p(od2 od2Var, gc8 gc8Var, c87 c87Var) {
        ib ibVarG = od2Var.g(gc8Var, c87Var, this.d);
        od2 od2Var2 = (od2) ibVarG.c;
        if (od2Var != od2Var2) {
            this.p = od2Var2;
        }
        return (em4) ibVarG.b;
    }

    public abstract void q(Object obj, fk4 fk4Var, c87 c87Var);

    public abstract y50 r(kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool);

    public y50(y50 y50Var, kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        super(0, y50Var.a);
        this.c = y50Var.c;
        this.e = y50Var.e;
        this.k = rc8Var;
        this.d = kp0Var;
        this.n = em4Var;
        this.p = f96.i;
        this.f = bool;
    }
}
