package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pd extends ud {
    public final transient Method P;
    public Class[] Q;

    public pd(qc8 qc8Var, Method method, s79 s79Var, s79[] s79VarArr) {
        super(qc8Var, s79Var, s79VarArr);
        if (method != null) {
            this.P = method;
        } else {
            c6.f("Cannot construct AnnotatedMethod with null Method");
            throw null;
        }
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
        return this.P.getReturnType();
    }

    @Override // defpackage.jb9
    public final gc8 D() {
        return this.M.c(this.P.getGenericReturnType());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (u81.n(pd.class, obj)) {
            return Objects.equals(this.P, ((pd) obj).P);
        }
        return false;
    }

    public final int hashCode() {
        return this.P.hashCode();
    }

    @Override // defpackage.od
    public final Class p0() {
        return this.P.getDeclaringClass();
    }

    @Override // defpackage.od
    public final String q0() {
        String strQ0 = super.q0();
        Method method = this.P;
        int parameterCount = method.getParameterCount();
        if (parameterCount == 0) {
            return strQ0.concat("()");
        }
        if (parameterCount != 1) {
            return String.format("%s(%d params)", super.q0(), Integer.valueOf(method.getParameterCount()));
        }
        StringBuilder sbN = fz5.n(strQ0, "(");
        sbN.append(z0(0).getName());
        sbN.append(")");
        return sbN.toString();
    }

    @Override // defpackage.od
    public final Member r0() {
        return this.P;
    }

    @Override // defpackage.od
    public final Object s0(Object obj) {
        try {
            return this.P.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException e) {
            l0.g("Failed to getValue() with method ", q0(), ": ", u81.g(e), e);
            return null;
        }
    }

    public final String toString() {
        return "[method " + q0() + "]";
    }

    @Override // defpackage.od
    public final jb9 v0(s79 s79Var) {
        return new pd(this.M, this.P, s79Var, this.O);
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
        if (this.Q == null) {
            this.Q = this.P.getParameterTypes();
        }
        Class[] clsArr = this.Q;
        if (i >= clsArr.length) {
            return null;
        }
        return clsArr[i];
    }
}
