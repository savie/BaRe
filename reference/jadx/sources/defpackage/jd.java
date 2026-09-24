package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jd extends ud {
    public final Constructor P;

    public jd(qc8 qc8Var, Constructor constructor, s79 s79Var, s79[] s79VarArr) {
        super(qc8Var, s79Var, s79VarArr);
        Objects.requireNonNull(constructor);
        this.P = constructor;
    }

    @Override // defpackage.jb9
    public final int A() {
        return this.P.getModifiers();
    }

    @Override // defpackage.jb9
    public final String B() {
        return this.P.getName();
    }

    @Override // defpackage.jb9
    public final Class C() {
        return this.P.getDeclaringClass();
    }

    @Override // defpackage.jb9
    public final gc8 D() {
        return this.M.c(this.P.getDeclaringClass());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (u81.n(jd.class, obj)) {
            return Objects.equals(this.P, ((jd) obj).P);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.P);
    }

    @Override // defpackage.od
    public final Class p0() {
        return this.P.getDeclaringClass();
    }

    @Override // defpackage.od
    public final Member r0() {
        return this.P;
    }

    @Override // defpackage.od
    public final Object s0(Object obj) {
        throw new UnsupportedOperationException("Cannot call getValue() on constructor of ".concat(this.P.getDeclaringClass().getName()));
    }

    public final String toString() {
        Constructor constructor = this.P;
        int parameterCount = constructor.getParameterCount();
        return String.format("[constructor for %s (%d arg%s), annotations: %s", u81.t(constructor.getDeclaringClass()), Integer.valueOf(parameterCount), parameterCount == 1 ? "" : "s", this.N);
    }

    @Override // defpackage.od
    public final jb9 v0(s79 s79Var) {
        return new jd(this.M, this.P, s79Var, this.O);
    }

    @Override // defpackage.ud
    public final int x0() {
        return this.P.getParameterCount();
    }

    @Override // defpackage.ud
    public final gc8 y0(int i) {
        Type[] genericParameterTypes = this.P.getGenericParameterTypes();
        if (i >= genericParameterTypes.length) {
            return null;
        }
        return this.M.c(genericParameterTypes[i]);
    }

    @Override // defpackage.ud
    public final Class z0(int i) {
        Class<?>[] parameterTypes = this.P.getParameterTypes();
        if (i >= parameterTypes.length) {
            return null;
        }
        return parameterTypes[i];
    }
}
