package defpackage;

import java.io.Serializable;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xo0 extends jb9 implements Serializable {
    public static final wo0 M = wo0.d(null, yg7.J0(String.class), new hd(String.class));
    public static final wo0 N;
    public static final wo0 O;
    public static final wo0 P;
    public static final wo0 Q;

    static {
        Class cls = Boolean.TYPE;
        N = wo0.d(null, yg7.J0(cls), new hd(cls));
        Class cls2 = Integer.TYPE;
        O = wo0.d(null, yg7.J0(cls2), new hd(cls2));
        Class cls3 = Long.TYPE;
        P = wo0.d(null, yg7.J0(cls3), new hd(cls3));
        Q = wo0.d(null, yg7.J0(Object.class), new hd(Object.class));
    }

    public static wo0 p0(s65 s65Var, gc8 gc8Var) {
        Class cls = gc8Var.f;
        if (cls.isPrimitive()) {
            if (cls != Integer.TYPE) {
                if (cls != Long.TYPE) {
                    if (cls != Boolean.TYPE) {
                        return null;
                    }
                    return N;
                }
                return P;
            }
            return O;
        }
        if (!u81.p(cls)) {
            if (cl4.class.isAssignableFrom(cls)) {
                return wo0.d(s65Var, gc8Var, new hd(cls));
            }
            return null;
        }
        if (cls == Object.class) {
            return Q;
        }
        if (cls == String.class) {
            return M;
        }
        if (cls != Integer.class) {
            if (cls != Long.class) {
                if (cls != Boolean.class) {
                    return null;
                }
                return N;
            }
            return P;
        }
        return O;
    }

    public static hd q0(s65 s65Var, gc8 gc8Var, s65 s65Var2) {
        gc8Var.getClass();
        Class cls = gc8Var.f;
        if (gc8Var instanceof t50) {
            ((t65) s65Var).c.getClass();
            return new hd(cls);
        }
        id idVar = new id(s65Var, gc8Var, s65Var2);
        ArrayList arrayList = new ArrayList(8);
        if (!gc8Var.w0(Object.class)) {
            if (cls.isInterface()) {
                id.d(gc8Var, arrayList, false);
            } else {
                id.e(gc8Var, arrayList, false);
            }
        }
        return new hd(gc8Var, idVar.d, arrayList, null, idVar.f(arrayList), idVar.c, idVar.a, s65Var2, s65Var.b.a, idVar.f);
    }
}
