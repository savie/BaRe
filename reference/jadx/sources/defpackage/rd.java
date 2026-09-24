package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rd extends ol1 {
    public final h81 e;
    public final boolean f;

    public rd(as5 as5Var, h81 h81Var, boolean z) {
        super(as5Var, 0);
        this.e = as5Var == null ? null : h81Var;
        this.f = z;
    }

    public static boolean J(Method method) {
        return (Modifier.isStatic(method.getModifiers()) || method.isSynthetic() || method.isBridge() || method.getParameterCount() > 2) ? false : true;
    }

    public final void H(qc8 qc8Var, Class cls, LinkedHashMap linkedHashMap, Class cls2) {
        if (cls2 != null) {
            I(qc8Var, cls, linkedHashMap, cls2);
        }
        if (cls == null) {
            return;
        }
        for (Method method : u81.j(cls)) {
            if (J(method)) {
                wb5 wb5Var = new wb5(method);
                qd qdVar = (qd) linkedHashMap.get(wb5Var);
                if (qdVar == null) {
                    linkedHashMap.put(wb5Var, new qd(qc8Var, method, ((as5) this.b) == null ? vd.j : f(method.getDeclaredAnnotations())));
                } else {
                    if (this.f) {
                        qdVar.c = g(qdVar.c, method.getDeclaredAnnotations());
                    }
                    Method method2 = qdVar.b;
                    if (method2 == null) {
                        qdVar.b = method;
                    } else if (Modifier.isAbstract(method2.getModifiers()) && !Modifier.isAbstract(method.getModifiers())) {
                        qdVar.b = method;
                        qdVar.a = qc8Var;
                    }
                }
            }
        }
    }

    public final void I(qc8 qc8Var, Class cls, LinkedHashMap linkedHashMap, Class cls2) {
        List list;
        if (((as5) this.b) == null) {
            return;
        }
        Annotation[] annotationArr = u81.a;
        if (cls2 == null || cls2 == cls || cls2 == Object.class) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList = new ArrayList(8);
            u81.a(cls2, cls, arrayList);
            list = arrayList;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                if (J(method)) {
                    wb5 wb5Var = new wb5(method);
                    qd qdVar = (qd) linkedHashMap.get(wb5Var);
                    Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                    if (qdVar == null) {
                        linkedHashMap.put(wb5Var, new qd(qc8Var, null, f(declaredAnnotations)));
                    } else {
                        qdVar.c = g(qdVar.c, declaredAnnotations);
                    }
                }
            }
        }
    }
}
