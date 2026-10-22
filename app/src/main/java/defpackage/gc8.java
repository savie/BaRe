package defpackage;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class gc8 extends ho6 implements yl4, Serializable, Type {
    public static final jc8 y = jc8.k;
    public final Class f;
    public final int k;
    public final Object n;
    public final Object p;
    public final boolean q;
    public final gc8 r;
    public final gc8[] t;
    public final jc8 x;

    public gc8(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr, int i, Object obj, Object obj2, boolean z) {
        this.f = cls;
        this.k = cls.hashCode() + (i * 31);
        this.n = obj;
        this.p = obj2;
        this.q = z;
        this.x = jc8Var == null ? y : jc8Var;
        this.r = gc8Var;
        this.t = gc8VarArr;
    }

    public static void j0(Class cls, StringBuilder sb, boolean z) {
        if (!cls.isPrimitive()) {
            sb.append('L');
            String name = cls.getName();
            int length = name.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = name.charAt(i);
                if (cCharAt == '.') {
                    cCharAt = '/';
                }
                sb.append(cCharAt);
            }
            if (z) {
                sb.append(';');
                return;
            }
            return;
        }
        if (cls == Boolean.TYPE) {
            sb.append('Z');
            return;
        }
        if (cls == Byte.TYPE) {
            sb.append('B');
            return;
        }
        if (cls == Short.TYPE) {
            sb.append('S');
            return;
        }
        if (cls == Character.TYPE) {
            sb.append('C');
            return;
        }
        if (cls == Integer.TYPE) {
            sb.append('I');
            return;
        }
        if (cls == Long.TYPE) {
            sb.append('J');
            return;
        }
        if (cls == Float.TYPE) {
            sb.append('F');
            return;
        }
        if (cls == Double.TYPE) {
            sb.append('D');
        } else if (cls == Void.TYPE) {
            sb.append('V');
        } else {
            l0.e("Unrecognized primitive type: ".concat(cls.getName()));
        }
    }

    public final boolean A0(Class cls) {
        Class cls2 = this.f;
        return cls2 == cls || cls.isAssignableFrom(cls2);
    }

    public abstract gc8 B0(Class cls, jc8 jc8Var, gc8 gc8Var, gc8[] gc8VarArr);

    public final String C0() {
        return l0();
    }

    public abstract gc8 D0(gc8 gc8Var);

    public abstract gc8 E0(sc8 sc8Var);

    public gc8 F0(gc8 gc8Var) {
        Object obj = gc8Var.p;
        gc8 gc8VarH0 = obj != this.p ? H0(obj) : this;
        Object obj2 = gc8Var.n;
        return obj2 != this.n ? gc8VarH0.I0(obj2) : gc8VarH0;
    }

    public abstract gc8 G0();

    public abstract gc8 H0(Object obj);

    public abstract gc8 I0(Object obj);

    public abstract boolean equals(Object obj);

    public int hashCode() {
        return this.k;
    }

    public final boolean k0(int i) {
        return this.f.getTypeParameters().length == i;
    }

    public String l0() {
        return this.f.getName();
    }

    public final gc8 m0(Class cls) {
        gc8 gc8VarM0;
        gc8[] gc8VarArr;
        if (cls == this.f) {
            return this;
        }
        if (cls.isInterface() && (gc8VarArr = this.t) != null) {
            for (gc8 gc8Var : gc8VarArr) {
                gc8 gc8VarM1 = gc8Var.m0(cls);
                if (gc8VarM1 != null) {
                    return gc8VarM1;
                }
            }
        }
        gc8 gc8Var2 = this.r;
        if (gc8Var2 == null || (gc8VarM0 = gc8Var2.m0(cls)) == null) {
            return null;
        }
        return gc8VarM0;
    }

    public jc8 n0() {
        return this.x;
    }

    public gc8 o0() {
        return null;
    }

    public abstract StringBuilder p0(StringBuilder sb);

    public abstract StringBuilder q0(StringBuilder sb);

    public gc8 r0() {
        return null;
    }

    @Override // defpackage.ho6
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public gc8 x() {
        return null;
    }

    public gc8 t0() {
        return this.r;
    }

    public boolean u0() {
        return this.x.b.length > 0;
    }

    public boolean v0() {
        return (this.p == null && this.n == null) ? false : true;
    }

    public final boolean w0(Class cls) {
        return this.f == cls;
    }

    public abstract boolean x0();

    public final boolean y0() {
        Annotation[] annotationArr = u81.a;
        return Enum.class.isAssignableFrom(this.f);
    }

    public final boolean z0() {
        return this.f == Object.class;
    }
}
