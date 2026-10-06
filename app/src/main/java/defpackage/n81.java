package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n81 implements x71, tn4, qn4 {
    public static final Map b;
    public final Class a;

    static {
        List listA0 = fl1.A0(bt3.class, mt3.class, qt3.class, rt3.class, st3.class, tt3.class, ut3.class, vt3.class, wt3.class, xt3.class, ct3.class, dt3.class, et3.class, ft3.class, gt3.class, ht3.class, it3.class, jt3.class, kt3.class, lt3.class, nt3.class, ot3.class, pt3.class);
        ArrayList arrayList = new ArrayList(hl1.G0(listA0, 10));
        int i = 0;
        for (Object obj : listA0) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            arrayList.add(new pw5((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        b = x65.t0(arrayList);
    }

    public n81(Class cls) {
        cls.getClass();
        this.a = cls;
    }

    @Override // defpackage.x71
    public final Class a() {
        return this.a;
    }

    public final String b() {
        String strG;
        Class cls = this.a;
        cls.getClass();
        String strConcat = null;
        if (cls.isAnonymousClass() || cls.isLocalClass()) {
            return null;
        }
        if (!cls.isArray()) {
            String strG2 = yc9.g(cls.getName());
            return strG2 == null ? cls.getCanonicalName() : strG2;
        }
        Class<?> componentType = cls.getComponentType();
        if (componentType.isPrimitive() && (strG = yc9.g(componentType.getName())) != null) {
            strConcat = strG.concat("Array");
        }
        return strConcat == null ? "kotlin.Array" : strConcat;
    }

    public final String c() {
        String strF0;
        Class cls = this.a;
        cls.getClass();
        String strConcat = null;
        if (cls.isAnonymousClass()) {
            return null;
        }
        if (!cls.isLocalClass()) {
            if (!cls.isArray()) {
                String strF1 = yc9.f0(cls.getName());
                return strF1 == null ? cls.getSimpleName() : strF1;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (strF0 = yc9.f0(componentType.getName())) != null) {
                strConcat = strF0.concat("Array");
            }
            return strConcat == null ? "Array" : strConcat;
        }
        String simpleName = cls.getSimpleName();
        Method enclosingMethod = cls.getEnclosingMethod();
        if (enclosingMethod != null) {
            return nq7.z0(simpleName, enclosingMethod.getName() + '$', simpleName);
        }
        Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
        if (enclosingConstructor == null) {
            int iG0 = nq7.g0('$', 0, 6, simpleName);
            return iG0 == -1 ? simpleName : simpleName.substring(iG0 + 1, simpleName.length());
        }
        return nq7.z0(simpleName, enclosingConstructor.getName() + '$', simpleName);
    }

    public final boolean d(Object obj) {
        Class clsQ = this.a;
        clsQ.getClass();
        Map map = b;
        map.getClass();
        Integer num = (Integer) map.get(clsQ);
        if (num != null) {
            return nc8.G(num.intValue(), obj);
        }
        if (clsQ.isPrimitive()) {
            clsQ = k55.q(ph6.a(clsQ));
        }
        return clsQ.isInstance(obj);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof n81) && k55.q(this).equals(k55.q((n81) obj));
    }

    public final int hashCode() {
        return k55.q(this).hashCode();
    }

    public final String toString() {
        return this.a.toString() + " (Kotlin reflection is not available)";
    }
}
