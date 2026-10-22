package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class tn7 extends em4 implements Serializable {
    public static final Object b = new Object();
    public final Class a;

    public tn7(tn7 tn7Var) {
        this.a = tn7Var.a;
    }

    public static em4 j(c87 c87Var, kp0 kp0Var, em4 em4Var) {
        od odVarA;
        Object objF;
        Object obj = b;
        Map identityHashMap = (Map) c87Var.r(obj);
        if (identityHashMap == null) {
            identityHashMap = new IdentityHashMap();
            bv1 bv1Var = (bv1) c87Var.d;
            bv1 bv1Var2 = bv1.n;
            bv1Var.getClass();
            Map map = Collections.EMPTY_MAP;
            HashMap map2 = bv1Var.k;
            if (map2 == null) {
                HashMap map3 = new HashMap();
                map3.put(obj, identityHashMap);
                bv1 bv1Var3 = new bv1();
                bv1Var3.k = map3;
                bv1Var = bv1Var3;
            } else {
                map2.put(obj, identityHashMap);
            }
            c87Var.d = bv1Var;
        } else if (identityHashMap.get(kp0Var) != null) {
            return em4Var;
        }
        identityHashMap.put(kp0Var, Boolean.TRUE);
        try {
            as5 as5VarD = c87Var.a.d();
            if ((kp0Var != null) && (odVarA = kp0Var.a()) != null && (objF = as5VarD.F(odVarA)) != null) {
                kp0Var.a();
                c87Var.f(objF);
                c87Var.s();
                throw null;
            }
            if (em4Var == null) {
                identityHashMap.remove(kp0Var);
                return em4Var;
            }
            em4 em4VarW = c87Var.w(em4Var, kp0Var);
            identityHashMap.remove(kp0Var);
            return em4VarW;
        } catch (Throwable th) {
            identityHashMap.remove(kp0Var);
            throw th;
        }
    }

    public static bk4 k(c87 c87Var, kp0 kp0Var, Class cls) {
        return kp0Var != null ? kp0Var.b(c87Var.a, cls) : c87Var.a.f(cls);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0024  */
    public static void m(c87 c87Var, Exception exc, Object obj, int i) throws IOException {
        boolean z;
        Throwable cause = exc;
        while ((cause instanceof InvocationTargetException) && cause.getCause() != null) {
            cause = cause.getCause();
        }
        Annotation[] annotationArr = u81.a;
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        if (c87Var != null) {
            if (c87Var.a.l(x77.WRAP_EXCEPTIONS)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (cause instanceof IOException) {
            if (!z || !(cause instanceof ll4)) {
                throw ((IOException) cause);
            }
        } else if (!z) {
            u81.v(cause);
        }
        xk4 xk4Var = new xk4();
        xk4Var.a = obj;
        xk4Var.c = i;
        throw yk4.d(cause, xk4Var);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0024  */
    public static void n(c87 c87Var, Exception exc, Object obj, String str) throws IOException {
        boolean z;
        Throwable cause = exc;
        while ((cause instanceof InvocationTargetException) && cause.getCause() != null) {
            cause = cause.getCause();
        }
        Annotation[] annotationArr = u81.a;
        if (cause instanceof Error) {
            throw ((Error) cause);
        }
        if (c87Var != null) {
            if (c87Var.a.l(x77.WRAP_EXCEPTIONS)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        if (cause instanceof IOException) {
            if (!z || !(cause instanceof ll4)) {
                throw ((IOException) cause);
            }
        } else if (!z) {
            u81.v(cause);
        }
        throw yk4.d(cause, new xk4(obj, str));
    }

    @Override // defpackage.em4
    public final Class b() {
        return this.a;
    }

    public final void l(c87 c87Var, Object obj) throws ag4 {
        c87Var.a.getClass();
        c87Var.A(this.a, "Cannot resolve PropertyFilter with id '" + obj + "'; no FilterProvider configured");
        throw null;
    }

    public tn7(int i, Class cls) {
        this.a = cls;
    }

    public tn7(gc8 gc8Var) {
        this.a = gc8Var.f;
    }

    public tn7(Class cls) {
        this.a = cls;
    }
}
