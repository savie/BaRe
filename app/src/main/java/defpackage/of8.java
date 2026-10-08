package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class of8 extends op0 {
    public final fk5 r;

    public of8(op0 op0Var, fk5 fk5Var) {
        super(op0Var, op0.s(op0Var.d, fk5Var), op0.s(op0Var.e, fk5Var));
        this.r = fk5Var;
    }

    @Override // defpackage.op0
    public final op0 A(mp0[] mp0VarArr, mp0[] mp0VarArr2) {
        return new of8(this, mp0VarArr, mp0VarArr2);
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        fk4Var.g(obj);
        if (this.n != null) {
            p(obj, fk4Var, c87Var, false);
        } else if (this.f == null) {
            v(obj, fk4Var, c87Var);
        } else {
            w(obj, fk4Var, c87Var);
            throw null;
        }
    }

    @Override // defpackage.op0, defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        if (c87Var.a.l(x77.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS)) {
            c87Var.A(this.a, "Unwrapped property requires use of type information: cannot serialize without disabling `SerializationFeature.FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS`");
            throw null;
        }
        fk4Var.g(obj);
        if (this.n != null) {
            o(obj, fk4Var, c87Var, rc8Var);
        } else if (this.f == null) {
            v(obj, fk4Var, c87Var);
        } else {
            w(obj, fk4Var, c87Var);
            throw null;
        }
    }

    @Override // defpackage.em4
    public final em4 g(fk5 fk5Var) {
        return new of8(this, fk5Var);
    }

    public final String toString() {
        return "UnwrappingBeanSerializer for ".concat(this.a.getName());
    }

    @Override // defpackage.op0
    public final op0 x(Set set, Set set2) {
        return new of8(this, set, set2);
    }

    @Override // defpackage.op0
    public final op0 y(Object obj) {
        return new of8(this, this.n, obj);
    }

    @Override // defpackage.op0
    public final op0 z(lr5 lr5Var) {
        return new of8(this, lr5Var);
    }

    public of8(of8 of8Var, Set set, Set set2) {
        super(of8Var, set, set2);
        this.r = of8Var.r;
    }

    @Override // defpackage.op0
    public final op0 r() {
        return this;
    }

    public of8(of8 of8Var, mp0[] mp0VarArr, mp0[] mp0VarArr2) {
        super(of8Var, mp0VarArr, mp0VarArr2);
        this.r = of8Var.r;
    }

    public of8(of8 of8Var, lr5 lr5Var) {
        super(of8Var, lr5Var, of8Var.f);
        this.r = of8Var.r;
    }

    public of8(of8 of8Var, lr5 lr5Var, Object obj) {
        super(of8Var, lr5Var, obj);
        this.r = of8Var.r;
    }
}
