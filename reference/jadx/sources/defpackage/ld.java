package defpackage;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ld extends od {
    public final transient Field O;

    public ld(qc8 qc8Var, Field field, s79 s79Var) {
        super(qc8Var, s79Var);
        Objects.requireNonNull(field);
        this.O = field;
    }

    @Override // defpackage.jb9
    public final int A() {
        return this.O.getModifiers();
    }

    @Override // defpackage.jb9
    public final String B() {
        return this.O.getName();
    }

    @Override // defpackage.jb9
    public final Class C() {
        return this.O.getType();
    }

    @Override // defpackage.jb9
    public final gc8 D() {
        return this.M.c(this.O.getGenericType());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (u81.n(ld.class, obj)) {
            return Objects.equals(this.O, ((ld) obj).O);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.O);
    }

    @Override // defpackage.od
    public final Class p0() {
        return this.O.getDeclaringClass();
    }

    @Override // defpackage.od
    public final Member r0() {
        return this.O;
    }

    @Override // defpackage.od
    public final Object s0(Object obj) {
        try {
            return this.O.get(obj);
        } catch (IllegalAccessException e) {
            l0.g("Failed to getValue() for field ", q0(), ": ", e.getMessage(), e);
            return null;
        }
    }

    public final String toString() {
        return "[field " + q0() + "]";
    }

    @Override // defpackage.od
    public final jb9 v0(s79 s79Var) {
        return new ld(this.M, this.O, s79Var);
    }
}
