package defpackage;

import java.lang.reflect.Member;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hn8 extends od {
    public final Class O;
    public final gc8 P;
    public final String Q;

    public hn8(hd hdVar, Class cls, String str, gc8 gc8Var) {
        super(hdVar, null);
        this.O = cls;
        this.P = gc8Var;
        this.Q = str;
    }

    @Override // defpackage.jb9
    public final int A() {
        return 0;
    }

    @Override // defpackage.jb9
    public final String B() {
        return this.Q;
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
        if (!u81.n(hn8.class, obj)) {
            return false;
        }
        hn8 hn8Var = (hn8) obj;
        return hn8Var.O == this.O && hn8Var.Q.equals(this.Q);
    }

    public final int hashCode() {
        return this.Q.hashCode();
    }

    @Override // defpackage.od
    public final Class p0() {
        return this.O;
    }

    @Override // defpackage.od
    public final Member r0() {
        return null;
    }

    @Override // defpackage.od
    public final Object s0(Object obj) {
        throw new IllegalArgumentException(dj7.n(new StringBuilder("Cannot get virtual property '"), this.Q, "'"));
    }

    public final String toString() {
        return "[virtual " + q0() + "]";
    }

    @Override // defpackage.od
    public final jb9 v0(s79 s79Var) {
        return this;
    }
}
