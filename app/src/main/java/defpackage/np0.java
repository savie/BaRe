package defpackage;

import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class np0 extends op0 {
    @Override // defpackage.op0
    public final op0 A(mp0[] mp0VarArr, mp0[] mp0VarArr2) {
        return new np0(this, mp0VarArr, mp0VarArr2);
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        if (this.n != null) {
            fk4Var.g(obj);
            p(obj, fk4Var, c87Var, true);
            return;
        }
        fk4Var.Y(obj);
        if (this.f != null) {
            w(obj, fk4Var, c87Var);
            throw null;
        }
        v(obj, fk4Var, c87Var);
        fk4Var.q();
    }

    @Override // defpackage.em4
    public final em4 g(fk5 fk5Var) {
        return new of8(this, fk5Var);
    }

    @Override // defpackage.em4
    public final em4 i(Set set) {
        return new np0(this, set, null);
    }

    @Override // defpackage.op0
    public final op0 r() {
        return (this.n == null && this.f == null) ? new ip0(this) : this;
    }

    public final String toString() {
        return "BeanSerializer for ".concat(this.a.getName());
    }

    @Override // defpackage.op0
    public final op0 x(Set set, Set set2) {
        return new np0(this, set, set2);
    }

    @Override // defpackage.op0
    public final op0 y(Object obj) {
        return new np0(this, this.n, obj);
    }

    @Override // defpackage.op0
    public final op0 z(lr5 lr5Var) {
        return new np0(this, lr5Var, this.f);
    }
}
