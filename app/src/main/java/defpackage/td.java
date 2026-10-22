package defpackage;

import java.lang.reflect.Member;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class td extends od {
    public final ud O;
    public final gc8 P;
    public final int Q;

    public td(ud udVar, gc8 gc8Var, qc8 qc8Var, s79 s79Var, int i) {
        super(qc8Var, s79Var);
        this.O = udVar;
        this.P = gc8Var;
        this.Q = i;
    }

    @Override // defpackage.jb9
    public final int A() {
        return this.O.A();
    }

    @Override // defpackage.jb9
    public final String B() {
        return "";
    }

    @Override // defpackage.jb9
    public final Class C() {
        return this.P.f;
    }

    @Override // defpackage.jb9
    public final gc8 D() {
        return this.P;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!u81.n(td.class, obj)) {
            return false;
        }
        td tdVar = (td) obj;
        return tdVar.O.equals(this.O) && tdVar.Q == this.Q;
    }

    public final int hashCode() {
        return this.O.hashCode() + this.Q;
    }

    @Override // defpackage.od
    public final Class p0() {
        return this.O.p0();
    }

    @Override // defpackage.od
    public final Member r0() {
        return this.O.r0();
    }

    @Override // defpackage.od
    public final Object s0(Object obj) {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor parameter of ".concat(this.O.p0().getName()));
    }

    public final String toString() {
        return "[parameter #" + this.Q + ", annotations: " + this.N + "]";
    }

    @Override // defpackage.od
    public final jb9 v0(s79 s79Var) {
        if (s79Var == this.N) {
            return this;
        }
        ud udVar = this.O;
        s79[] s79VarArr = udVar.O;
        int i = this.Q;
        s79VarArr[i] = s79Var;
        return udVar.w0(i);
    }
}
